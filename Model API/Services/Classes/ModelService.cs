using ModelAPI.Services.Interfaces;
using Python.Runtime;
using System.Reflection;
using static System.Net.Mime.MediaTypeNames;

namespace ModelAPI.Services.Classes
{
    public class ModelService : IModelService
    {
        public dynamic _model { get; set; }

        public ModelService() {
            Initialize();
            ModelLoding();
        }
        ~ ModelService()
        {
            Shutdown();
        }
        public void Initialize()
        {
            if (!PythonEngine.IsInitialized)
            {
                Runtime.PythonDLL = "wwwroot\\model\\python311";
                PythonEngine.Initialize();
                PythonEngine.BeginAllowThreads();
            }
        }

        public void ModelLoding()
        {
            using (Py.GIL())
            {
                dynamic sys = Py.Import("sys");
                sys.path.append("wwwroot\\model");
                dynamic model = Py.Import("hi");
                _model = model;
            }
        }

        public async Task<string> PredictAsync(IFormFile image)
        {
            string result = "none";
            if (image != null)
            {
                var tempFilePath = Path.GetTempFileName();
                using (var stream = new FileStream(tempFilePath, FileMode.Create))
                {
                    await image.CopyToAsync(stream);
                }
                result = RunScriptAsync(tempFilePath);
            }
            return result;
        }

        private string RunScriptAsync(string tempFilePath)
        {
            dynamic? result = null;
            using (Py.GIL())
            {
                var imagePath = new PyString(tempFilePath);
                result = _model.InvokeMethod("predict", new PyObject[] { imagePath });
            }
            return result.ToString();
        }

        public void Shutdown()
        {
            typeof(Runtime)
                .GetField("ProcessIsTerminating", BindingFlags.Static | BindingFlags.NonPublic)!
                .SetValue(null, true);
            PythonEngine.Shutdown();
        }
    }
}

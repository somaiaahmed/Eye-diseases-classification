namespace ModelAPI.Services.Interfaces
{
    public interface IModelService
    {
        dynamic _model { get; set; }
        public void Initialize();
        public void Shutdown();
        public void ModelLoding();
        public Task<string> PredictAsync(IFormFile image);

    }
}

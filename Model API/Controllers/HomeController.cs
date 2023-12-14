using Microsoft.AspNetCore.Mvc;
using ModelAPI.Models;
using Python.Runtime;
using System.Diagnostics;
using System.Reflection;
using ModelAPI.Services.Classes;
using ModelAPI.Services.Interfaces;
namespace Eye_diseases_detiction.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IModelService _modelService;

        public HomeController(ILogger<HomeController> logger,IModelService modelService)
        {
            _logger = logger;
            _modelService = modelService;
        }
        public IActionResult Index(string res = "none")
        {
            ViewBag.Result = res;
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        [HttpPost]
        public async Task<IActionResult> Scan(IFormFile image)
        {
            string result = await _modelService.PredictAsync(image);
            return RedirectToAction("Index",new {res = result});
        }
    }
}
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ModelAPI.Services.Interfaces;
using Python.Runtime;
using System.Reflection;

namespace ModelAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ModelController : ControllerBase
    {
        private readonly IModelService _modelService;
        public ModelController(IModelService modelService)
        {
            _modelService = modelService;
        }
        [HttpPost]
        public async Task<IActionResult> Scan(IFormFile image)
        {
            string result = await _modelService.PredictAsync(image);
            return Ok(result);
        }
    }
}

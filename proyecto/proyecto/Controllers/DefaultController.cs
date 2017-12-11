 
using System.Web.Mvc;
 
using proyecto.Areas.Admin.Filters;

namespace proyecto.Controllers
{
    public class DefaultController : Controller
    {
        
        public ActionResult Index()
        {
          
            return View();
        }
    }
}
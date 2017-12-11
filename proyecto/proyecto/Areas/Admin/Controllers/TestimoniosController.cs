using Helper;
using Model;
using proyecto.Areas.Admin.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace proyecto.Areas.Admin.Controllers
{
    [Autenticado]
    public class TestimoniosController : Controller
    {
        private Testimonio testimonio = new Testimonio();

        public ActionResult Index()
        {
            return View();
        }

        public JsonResult Listar(AnexGRID grid)
        {
            return Json(testimonio.Listar(grid, SessionHelper.GetUser()));
        }

        public ActionResult Crud(int id = 0)
        {
            Testimonio testmonio = new Testimonio();
            testimonio.Usuario_id = 3;
            if (id != 0 )
            {
                testimonio = testimonio.Obtener(id);
            }
            return View(testimonio);
        }

        public JsonResult Guardar(Testimonio model)
        {
            var rm = new ResponseModel();

            if (ModelState.IsValid)
            {
                rm = model.Guardar();

                if (rm.response)
                {
                    rm.href = Url.Content("~/admin/testimonios/");
                }
            }

            return Json(rm);
        }

        public JsonResult Eliminar(int id)
        {
            return Json(testimonio.Eliminar(id));
        }
    }
}
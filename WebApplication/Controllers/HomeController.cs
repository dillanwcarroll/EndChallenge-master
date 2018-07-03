using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NLog;

namespace WebApplication.Controllers
{
    public class HomeController : Controller
    {
        private static NLog.Logger nlogger = NLog.LogManager.GetCurrentClassLogger();

        public ActionResult Index()
        {
            nlogger.Trace("Index Used");
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
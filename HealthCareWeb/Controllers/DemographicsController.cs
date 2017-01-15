using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HealthCareWeb.Controllers
{
    public class DemographicsController : Controller
    {
        //
        // GET: /Demographics/

        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Demographics/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Demographics/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Demographics/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Demographics/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Demographics/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Demographics/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Demographics/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}

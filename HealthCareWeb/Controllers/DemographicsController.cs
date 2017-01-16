using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HealthCareWeb.Models;

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
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Demographics/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection, Demographics demo)
        {
            try
            {
                int i;
                // TODO: Add insert logic here
                //Demographics demo = new Demographics();
                i=demo.save(demo);
                if(i>0)
                {
                    TempData["AlertMessage"] = "Records Saved";
                    return RedirectToAction("Index");
                }
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

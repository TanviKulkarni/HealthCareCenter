using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.Mvc;
using System.Data;
using HealthCareWeb.Models;

namespace HealthCareWeb.Controllers
{
    public class RegistrationController : Controller
    {
        public static string a = "";
        //
        // GET: /Registration/
        [HttpGet ]
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost ]
        public ActionResult Index(Login l)
        {
            int i = 0;
            a = l.EmailId;
            //string s="";
            i = l.Check(l);
            if(i==1)
            {
                //s=l.getID(l);
               
                Session["EmailId"] = l.EmailId;
                return RedirectToAction("LogedIn");
            }
            return View();
        }
        public PartialViewResult ReInfo(Login l)
        {
            Registration re = new Registration();
            l.EmailId = a;
            //l.Name = l.getID(l.EmailId);

            re.Name = l.getID(l);

            if (Session["EmailId"] != null)
            {

                return PartialView(re);
            }

            return PartialView(re);
            
        }
        public ActionResult LogedIn(Login l)
        {
            Registration re = new Registration();
            l.EmailId = a;
            //l.Name = l.getID(l.EmailId);

           // re.Name = l.getID(l);
           
            if(Session["EmailId"]!=null)
            {
               
                return View(re);
            }

            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult Save()
        {
            return View();

        }
        [HttpPost ]
        public ActionResult Save(Registration re)
        {
            int a = 0;
            a = re.save(re);
            if(a==1)
            {
                return RedirectToAction("Index");
            }

            return RedirectToAction("Save");
        }
        //
        // GET: /Registration/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Registration/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Registration/Create

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
        // GET: /Registration/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Registration/Edit/5

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
        // GET: /Registration/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Registration/Delete/5

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

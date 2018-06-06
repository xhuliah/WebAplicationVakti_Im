using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplicationVakti_Im.Models;

namespace WebApplicationVakti_Im.Controllers
{
    //[Authorize(Roles = "admin")]

    public class PERDORUEsController : Controller
    {
        private Vakti_ImEntities db = new Vakti_ImEntities();
       
        // GET: PERDORUEs
        public ActionResult Index()
        {
            var pERDORUES = db.PERDORUES.Include(p => p.ROLI);
            return View(pERDORUES.ToList());
        }
        
        // GET: PERDORUEs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PERDORUE pERDORUE = db.PERDORUES.Find(id);
            if (pERDORUE == null)
            {
                return HttpNotFound();
            }
            return View(pERDORUE);
        }
       
        // GET: PERDORUEs/Create
        public ActionResult Create()
        {
            ViewBag.rol_id = new SelectList(db.ROLIs, "rol_id", "emri");
            return View();
        }

        // POST: PERDORUEs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "perdorues_id,emri,mbiemri,telefon,aktiv,username,krijimPerdorues,modifikimPerdoruesi,rol_id,passwordi")] PERDORUE pERDORUE)
        {
            if (ModelState.IsValid)
            {
                db.PERDORUES.Add(pERDORUE);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.rol_id = new SelectList(db.ROLIs, "rol_id", "emri", pERDORUE.rol_id);
            return View(pERDORUE);
        }

        // GET: PERDORUEs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PERDORUE pERDORUE = db.PERDORUES.Find(id);
            if (pERDORUE == null)
            {
                return HttpNotFound();
            }
            ViewBag.rol_id = new SelectList(db.ROLIs, "rol_id", "emri", pERDORUE.rol_id);
            return View(pERDORUE);
        }

        // POST: PERDORUEs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [AllowAnonymous]
        public ActionResult Edit([Bind(Include = "aktiv,modifikimPerdoruesi,rol_id")] PERDORUE pERDORUE)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.Entry(pERDORUE).State = EntityState.Modified;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                ViewBag.rol_id = new SelectList(db.ROLIs, "rol_id", "emri", pERDORUE.rol_id);
            }
            catch(DataException) { ModelState.AddModelError(" " ," Ka ndodhur nje problem gjate modifikimit"); }
            return View(pERDORUE);
        }

        // GET: PERDORUEs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PERDORUE pERDORUE = db.PERDORUES.Find(id);
            if (pERDORUE == null)
            {
                return HttpNotFound();
            }
            return View(pERDORUE);
        }

        // POST: PERDORUEs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PERDORUE pERDORUE = db.PERDORUES.Find(id);
            db.PERDORUES.Remove(pERDORUE);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}

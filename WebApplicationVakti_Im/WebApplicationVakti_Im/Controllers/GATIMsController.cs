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
    public class GATIMsController : Controller
    {
        private Vakti_ImEntities db = new Vakti_ImEntities();

        // GET: GATIMs
        public ActionResult Index()
        {
            var gATIMs = db.GATIMs.Include(g => g.PERDORUE).Include(g => g.PERDORUE1).Include(g => g.KATEGORI);
            return View(gATIMs.ToList());
        }

        //[Authorize(Roles = "admin")]
        public ActionResult GatimetAktive(GatimeAktive_Result gatime)
        {
            var gATIMs = db.ShfaqGatimet().ToList();
            return View(gATIMs);
        }
        // GET: GATIMs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GATIM gATIM = db.GATIMs.Find(id);
            if (gATIM == null)
            {
                return HttpNotFound();
            }
            return View(gATIM);
        }

        // GET: GATIMs/Create
        public ActionResult Create()
        {
            ViewBag.createdBy = new SelectList(db.PERDORUES, "perdorues_id", "emri");
            ViewBag.modifiedBy = new SelectList(db.PERDORUES, "perdorues_id", "emri");
            ViewBag.kategori_id = new SelectList(db.KATEGORIs, "kategori_id", "emri");
            return View();
        }

        // POST: GATIMs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "gatim_id,emri,pershkrimi,cmimi,disponueshmeria,foto,datakrijimit,datamodifikimit,createdBy,modifiedBy,kategori_id")] GATIM gATIM)
        {
            if (ModelState.IsValid)
            {
                db.GATIMs.Add(gATIM);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.createdBy = new SelectList(db.PERDORUES, "perdorues_id", "emri", gATIM.createdBy);
            ViewBag.modifiedBy = new SelectList(db.PERDORUES, "perdorues_id", "emri", gATIM.modifiedBy);
            ViewBag.kategori_id = new SelectList(db.KATEGORIs, "kategori_id", "emri", gATIM.kategori_id);
            return View(gATIM);
        }

        // GET: GATIMs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GATIM gATIM = db.GATIMs.Find(id);
            if (gATIM == null)
            {
                return HttpNotFound();
            }
            ViewBag.createdBy = new SelectList(db.PERDORUES, "perdorues_id", "emri", gATIM.createdBy);
            ViewBag.modifiedBy = new SelectList(db.PERDORUES, "perdorues_id", "emri", gATIM.modifiedBy);
            ViewBag.kategori_id = new SelectList(db.KATEGORIs, "kategori_id", "emri", gATIM.kategori_id);
            return View(gATIM);
        }

        // POST: GATIMs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "gatim_id,emri,pershkrimi,cmimi,disponueshmeria,foto,datakrijimit,datamodifikimit,createdBy,modifiedBy,kategori_id")] GATIM gATIM)
        {
            if (ModelState.IsValid)
            {
                db.Entry(gATIM).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.createdBy = new SelectList(db.PERDORUES, "perdorues_id", "emri", gATIM.createdBy);
            ViewBag.modifiedBy = new SelectList(db.PERDORUES, "perdorues_id", "emri", gATIM.modifiedBy);
            ViewBag.kategori_id = new SelectList(db.KATEGORIs, "kategori_id", "emri", gATIM.kategori_id);
            return View(gATIM);
        }

        // GET: GATIMs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GATIM gATIM = db.GATIMs.Find(id);
            if (gATIM == null)
            {
                return HttpNotFound();
            }
            return View(gATIM);
        }

        // POST: GATIMs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            GATIM gATIM = db.GATIMs.Find(id);
            db.GATIMs.Remove(gATIM);
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

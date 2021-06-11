using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using APIS_IS.Models;

namespace APIS_IS.Controllers
{
    public class servicioController : Controller
    {
        private pruebaEntities1 db = new pruebaEntities1();

        // GET: servicio
        public ActionResult Index()
        {
            return View(db.pago_servicio.ToList());
        }

        // GET: servicio/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            pago_servicio pago_servicio = db.pago_servicio.Find(id);
            if (pago_servicio == null)
            {
                return HttpNotFound();
            }
            return View(pago_servicio);
        }

        // GET: servicio/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: servicio/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "pk_id_pago_servicio,fk_id_tipo_servicio,fk_id_cuenta_bancaria,cantidad,no_documento,no_autorizacion,fecha_realizo,cuenta_debitada,total_pagar")] pago_servicio pago_servicio)
        {
            if (ModelState.IsValid)
            {
                db.pago_servicio.Add(pago_servicio);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(pago_servicio);
        }

        // GET: servicio/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            pago_servicio pago_servicio = db.pago_servicio.Find(id);
            if (pago_servicio == null)
            {
                return HttpNotFound();
            }
            return View(pago_servicio);
        }

        // POST: servicio/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "pk_id_pago_servicio,fk_id_tipo_servicio,fk_id_cuenta_bancaria,cantidad,no_documento,no_autorizacion,fecha_realizo,cuenta_debitada,total_pagar")] pago_servicio pago_servicio)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pago_servicio).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(pago_servicio);
        }

        // GET: servicio/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            pago_servicio pago_servicio = db.pago_servicio.Find(id);
            if (pago_servicio == null)
            {
                return HttpNotFound();
            }
            return View(pago_servicio);
        }

        // POST: servicio/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            pago_servicio pago_servicio = db.pago_servicio.Find(id);
            db.pago_servicio.Remove(pago_servicio);
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

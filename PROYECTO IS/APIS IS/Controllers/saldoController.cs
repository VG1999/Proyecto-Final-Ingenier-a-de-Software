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
    public class saldoController : Controller
    {
        private pruebaEntities1 db = new pruebaEntities1();

        // GET: saldo
        public ActionResult Index()
        {
            return View(db.saldos.ToList());
        }

        // GET: saldo/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            saldos saldos = db.saldos.Find(id);
            if (saldos == null)
            {
                return HttpNotFound();
            }
            return View(saldos);
        }

        // GET: saldo/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: saldo/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "pk_id_saldo,fk_id_cuenta_bancaria,saldo_disponible,saldo_flotante,salto_total,fecha")] saldos saldos)
        {
            if (ModelState.IsValid)
            {
                db.saldos.Add(saldos);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(saldos);
        }

        // GET: saldo/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            saldos saldos = db.saldos.Find(id);
            if (saldos == null)
            {
                return HttpNotFound();
            }
            return View(saldos);
        }

        // POST: saldo/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "pk_id_saldo,fk_id_cuenta_bancaria,saldo_disponible,saldo_flotante,salto_total,fecha")] saldos saldos)
        {
            if (ModelState.IsValid)
            {
                db.Entry(saldos).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(saldos);
        }

        // GET: saldo/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            saldos saldos = db.saldos.Find(id);
            if (saldos == null)
            {
                return HttpNotFound();
            }
            return View(saldos);
        }

        // POST: saldo/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            saldos saldos = db.saldos.Find(id);
            db.saldos.Remove(saldos);
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

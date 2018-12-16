using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AIMDB.Models;

namespace AIMDB.Controllers
{
    public class UserController : Controller
    {
        [HttpGet]
        public ActionResult Signup(int id = 0)
        {
            User userModel = new User();
            return View(userModel);
        }

        [HttpPost]
        public ActionResult Signup(User userModel)
        {
            using (DbModels dbModel = new DbModels())
            {
                if (dbModel.Users.Any(x => x.Email == userModel.Email))
                {
                    ViewBag.DuplicateMessage = "User already exists";
                    return View("Signup", userModel);
                }
                dbModel.Users.Add(userModel);
                dbModel.SaveChanges();
            }
            ModelState.Clear();
            ViewBag.SuccessMessage = "SIGNUP Successful";
            return View("Signup", new User());
        }
    }
}
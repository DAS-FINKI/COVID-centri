using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace App_Navigacija_MVC2.ViewModels
{
    public class LoginVM
    {
        [Required(ErrorMessage = "The Email field is required./Задолжително е корисничко име.")]
        [Display(Name = "Email")]
        public string Email { get; set; }
        [Required(ErrorMessage = "The password field is required./Лозинката е задолжителна")]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        [Display(Name = "Remember me?")]
        public bool RememberMe { get; set; }
    }
}
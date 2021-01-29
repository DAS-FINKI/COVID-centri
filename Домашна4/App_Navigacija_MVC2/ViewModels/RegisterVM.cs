using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace App_Navigacija_MVC2.ViewModels
{
    public class RegisterVM
    {
        [Required(ErrorMessage = "The email field is required./Адресата е задолжителна.")]
        [Display(Name = "Email")]        
        public string Email { get; set; }
        [Required(ErrorMessage = "The password field is required./Лозинката е задолжителна")]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        public string Password { get; set; }
        [DataType(DataType.Password)]
        [Display(Name = "Confirm password")]
        [Required(ErrorMessage = "The confirm password field is required./Полето е задолжително")]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match./Лозинките не се совпаѓаат")]
        public string ConfirmPassword { get; set; }
    }
}
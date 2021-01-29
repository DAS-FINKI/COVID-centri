using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace App_Navigacija_MVC2.Models
{
    public class App_App_NavigacijaContext:DbContext
    {
        public DbSet<User> Users { get; set; }
    }
}
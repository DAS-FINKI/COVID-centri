using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(App_Navigacija.Startup))]
namespace App_Navigacija
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

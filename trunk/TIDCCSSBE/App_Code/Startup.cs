using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TIDCCSS.Startup))]
namespace TIDCCSS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

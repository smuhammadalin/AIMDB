using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AIMDB.Startup))]
namespace AIMDB
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

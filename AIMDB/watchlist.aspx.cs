using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using fetching.DAL;

namespace AIMDB
{
    public partial class watchlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void getwatchlist()
        {
            myDAL objmyDAL = new myDAL();
            DataTable DT = new DataTable();
            String Email = Session["userid"].ToString();
            // String Email = "alizehasim97@gmail.com";
            objmyDAL.getwatchlist(Email,ref DT);
            ResultGrid.DataSource = DT;
            ResultGrid.DataBind();
        }
    }
}
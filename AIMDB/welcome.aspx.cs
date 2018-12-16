using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using searchmovie.DAL;

namespace AIMDB
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void searchmovieclick(object sender, EventArgs e)
        {
            Response.BufferOutput = true;
            myDAL objmyDAl = new myDAL();
            String InputName = Search.Text;
            DataTable DT = new DataTable();
            int found;
            String name = null;
            found = objmyDAl.SearchMovieByName_DAL(InputName, ref DT,ref name);

            if (found == 0)
            {
                Message.Text = "No Search Result found!";
                SearchResultGrid.DataSource = null;
                SearchResultGrid.DataBind();
            }
            else if (found == -1)
            {
                Message.Text = "There was some error!";
            }
            else
            {
                Message.Text = "";
                Session["searchtitle"] = name;
                SearchResultGrid.DataSource = DT;
                SearchResultGrid.DataBind();
            }
        }

        public int get()
        {
            int id = 0;
            String title = Session["searchtitle"].ToString();
            myDAL objmyDAl = new myDAL();
            objmyDAl.getid(ref id,title);
            return id;
        }

        public string name()
        {
            string name = Session["searchtitle"].ToString();
            return name;
        }

        protected void getfavmovie()
        {
            int flag;
            myDAL objmyDAl = new myDAL();
            String Movie = null;
            flag=objmyDAl.getfavmovie(ref Movie);
            if (flag == 0)
            {
                
            }
            else
            {
                movie.Text = Movie;
            }
        }
        protected void getfavactor()
        {
            int flag;
            myDAL objmyDAl = new myDAL();
            String Actor = null;
            flag=objmyDAl.getfavactor(ref Actor);
            if (flag == 0)
            {

            }
            else
            {
                actor.Text = Actor;
            }
        }
        protected void signout()
        {
            Session["userid"] = null;
        }
    }
}
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
    public partial class Movie3 : System.Web.UI.Page
    {

        public void movieinfo(String name)
        {
            int flag;
            myDAL objmyDAl = new myDAL();
            String InputName = name;
            Session["movietitle"] = name;
            String Genre = null;
            String Actor = null;
            String Actor2 = null;
            String Director = null;
            int Year = 0;
            int Fav = 0;
            int Rate = 0;
            flag = objmyDAl.fetch_DAL(InputName, ref Genre, ref Year, ref Actor, ref Fav, ref Rate, ref Actor2, ref Director);
            if (flag == -1)
            {

            }
            else
            {
                actor.Text = Actor;
                actor2.Text = Actor2;
                director.Text = Director;
                genre.Text = Genre;
                year.Text = Year.ToString();
                fav.Text = Fav.ToString();
                rate.Text = Rate.ToString();
            }
        }
        public void moviereview(String name)
        {
            myDAL objmyDAl = new myDAL();
            DataTable DT = new DataTable();
            int found;
            String InputName = Session["movietitle"].ToString();
            found = objmyDAl.getreview(InputName, ref DT);
            if (found == -1)
            {
                Message.Text = "There was some error!";
            }
            else if (found == 0)
            {
                Message.Text = "No reviews available!";
            }
            else
            {
                SearchResultGrid.DataSource = DT;
                SearchResultGrid.DataBind();
            }
        }
        public void writereviewclick(object sender, EventArgs e)
        {
            int flag;
            Response.BufferOutput = true;
            myDAL objmyDAL = new myDAL();
            String ReviewText = Review.Text;
            String Email = Session["userid"].ToString();
            //String Email = "alizehasim97@gmail.com";
            String Movie = Session["movietitle"].ToString();
            flag = objmyDAL.writereview(ReviewText, Email, Movie);
            if (flag == -1)
            {
                Message1.Text = "There was some error!";
            }
            else
            {
                Message1.Text = "Review added Successfully";
            }

        }
        public void addfavclick(object sender, EventArgs e)
        {
            int flag;
            Response.BufferOutput = true;
            myDAL objmyDAL = new myDAL();
            String Movie = Session["movietitle"].ToString();
            flag = objmyDAL.addfav(Movie);
            if (flag == -1)
            {
                Message1.Text = "There was some error!";
            }
            else
            {
                Message1.Text = "Succesfully added to favorite";
            }
        }
        public void addtowatchlist(object sender, EventArgs e)
        {
            int flag;
            myDAL objmyDAL = new myDAL();
            String Movie = Session["movietitle"].ToString();
            String Email = Session["userid"].ToString();
            // String Email = "alizehasim97@gmail.com";
            flag = objmyDAL.addtowatchlist(Movie, Email);
            if (flag == -1)
            {
                Message1.Text = "There was some error!";
            }
            else
            {
                Message1.Text = "Succesfully added to Watchlist";
            }
        }

        string temp = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Rating1.CssClass = "Empty";
                Rating2.CssClass = "Empty";
                Rating3.CssClass = "Empty";
                Rating4.CssClass = "Empty";
                Rating5.CssClass = "Empty";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            Label2.Text = Label1.Text;
        }

        protected void Rating1_Click(object sender, EventArgs e)
        {

            Rating1.CssClass = "Filled";
            Rating2.CssClass = "Empty";
            Rating3.CssClass = "Empty";
            Rating4.CssClass = "Empty";
            Rating5.CssClass = "Empty";
            temp = "1-Poor";
            Response.BufferOutput = true;
            int flag;
            myDAL objmyDAL = new myDAL();
            String Email = Session["userid"].ToString();
            String Movie = Session["movietitle"].ToString();
            //String Email = "alizehasim97@gmail.com";
            flag = objmyDAL.setrate(1, Movie, Email);
            if (flag == -1)
            {
                Message1.Text = "There was some error!";
            }
            else
            {
                Label1.Text = temp;
            }
        }

        protected void Rating2_Click(object sender, EventArgs e)
        {
            Rating1.CssClass = "Filled";
            Rating2.CssClass = "Filled";
            Rating3.CssClass = "Empty";
            Rating4.CssClass = "Empty";
            Rating5.CssClass = "Empty";
            temp = "2-Bad";
            int flag;
            myDAL objmyDAL = new myDAL();
            String Email = Session["userid"].ToString();
            String Movie = Session["movietitle"].ToString();
            //String Email = "alizehasim97@gmail.com";
            flag = objmyDAL.setrate(2, Movie, Email);
            if (flag == -1)
            {
                Message1.Text = "There was some error!";
            }
            else
            {
                Label1.Text = temp;
            }
        }
        protected void Rating3_Click(object sender, EventArgs e)
        {
            Rating1.CssClass = "Filled";
            Rating2.CssClass = "Filled";
            Rating3.CssClass = "Filled";
            Rating4.CssClass = "Empty";
            Rating5.CssClass = "Empty";
            temp = "3-Fair";
            int flag;
            myDAL objmyDAL = new myDAL();
            String Email = Session["userid"].ToString();
            String Movie = Session["movietitle"].ToString();
            //String Email = "alizehasim97@gmail.com";
            flag = objmyDAL.setrate(3, Movie, Email);
            if (flag == -1)
            {
                Message1.Text = "There was some error!";
            }
            else
            {
                Label1.Text = temp;
            }
        }
        protected void Rating4_Click(object sender, EventArgs e)
        {
            Rating1.CssClass = "Filled";
            Rating2.CssClass = "Filled";
            Rating3.CssClass = "Filled";
            Rating4.CssClass = "Filled";
            Rating5.CssClass = "Empty";
            temp = "4-Good";
            int flag;
            myDAL objmyDAL = new myDAL();
            String Email = Session["userid"].ToString();
            String Movie = Session["movietitle"].ToString();
            //String Email = "alizehasim97@gmail.com";
            flag = objmyDAL.setrate(4, Movie, Email);
            if (flag == -1)
            {
                Message1.Text = "There was some error!";
            }
            else
            {
                Label1.Text = temp;
            }
        }
        protected void Rating5_Click(object sender, EventArgs e)
        {
            Rating1.CssClass = "Filled";
            Rating2.CssClass = "Filled";
            Rating3.CssClass = "Filled";
            Rating4.CssClass = "Filled";
            Rating5.CssClass = "Filled";
            temp = "5-Excellent";
            int flag;
            myDAL objmyDAL = new myDAL();
            String Email = Session["userid"].ToString();
            String Movie = Session["movietitle"].ToString();
            //String Email = "alizehasim97@gmail.com";
            flag = objmyDAL.setrate(5, Movie, Email);
            if (flag == -1)
            {
                Message1.Text = "There was some error!";
            }
            else
            {
                Label1.Text = temp;
            }
        }
    }


}
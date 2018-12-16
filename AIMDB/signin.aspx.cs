using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using signin.DAL;

namespace AIMDB
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void signinclick(object sender, EventArgs e)
        {
            Response.BufferOutput = true;
            myDAL objmyDAL = new myDAL();
            String InputEmail = Email.Text;
            String InputPassword = Password1.Text;
            DataTable DT = new DataTable();
            int flag;
            flag = objmyDAL.signin_dal(InputEmail, InputPassword);
            Session["userid"] = null;
            if (flag == -1)
            {
                Message.Text = "There was some error!";
            }
            else if (flag == 2)
            {
                Message.Text = "Incorrect Email/Password!";
            }
            else if (flag == 1)
            {
                Session["userid"] = InputEmail;
                Message.Text = "SignIn Successful!";
                Response.Redirect("welcome.aspx");
            }
        }
    }
}
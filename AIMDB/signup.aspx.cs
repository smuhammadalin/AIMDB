using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using signup.DAL;
using System.Data;

namespace AIMDB
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void signupclick(object sender, EventArgs e)
        {
            Response.BufferOutput = true;
            myDAL objmyDAL = new myDAL();
            String InputName = Name.Text;
            String InputEmail = Email.Text;
            String InputBdate = Bdate.Text;
            String InputPassword = Password1.Text;
            String InputConfirmPassword = Password2.Text;
            Session["userid"] = null;
            DataTable DT = new DataTable();
            int flag;
            flag = objmyDAL.signup_dal(InputName, InputEmail, InputBdate, InputPassword);
            if (flag == -1)
            {
                Message.Text = "There was some error!";
            }
            else if (flag == 2)
            {
                Message.Text = "Email already exists!";
            }
            else if (flag == 3)
            {
                Message.Text = "Email is not correct!";
            }
            else if (flag == 4)
            {
                Message.Text = "BirthDate is not correct!";
            }
            else if (flag == 1)
            {
                Message.Text = "SignUp Successful!";
                Session["userid"] = InputEmail;
                Response.Redirect("Redirect.aspx");
            }
        }
    }
}
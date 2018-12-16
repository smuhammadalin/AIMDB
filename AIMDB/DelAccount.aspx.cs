using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Delaccount.DAL;

namespace AIMDB
{
    public partial class DelAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void delaccountclick(object sender, EventArgs e)
        {
            Response.BufferOutput = true;
            myDAL objmyDAL = new myDAL();
            String InputEmail = Email.Text;
            String InputPassword = Password1.Text;
            DataTable DT = new DataTable();
            int flag;
            flag = objmyDAL.Delaccount_dal(InputEmail, InputPassword);
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
                Message.Text = "Account Deletion Successful!";
                Response.Redirect("Redirect1.aspx");
            }
        }
    }
}
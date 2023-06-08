using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adoptation_Portal.WebPages.Orphanages
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        readyclass obj = new readyclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblID.Text = Session["UserID"].ToString();

            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtNewPassword.Text.Trim() == txtConfirmPassword.Text.Trim())
            {
                string sql = "select * from tblLogin where UserID='" + lblID.Text.Trim() + "' and Password='" + txtCurPassword.Text.Trim() + "'";

                bool flag = obj.checkduplicate(sql);

                if (flag == true)
                {
                    string sql1 = "Update tblLogin SET ";
                    sql1 = sql1 + "Password='" + txtNewPassword.Text.Trim() + "' where UserID='" + lblID.Text.Trim() + "'";

                    Database.executeQuery(sql1);

                    readyclass.errormessage(lblerror, "Password is updated");
                }
                else
                    readyclass.errormessage(lblerror, "Current Password is incorrect");


            }
            else
                readyclass.errormessage(lblerror, "New Password and Confirm password should be same");
        }
    }
}
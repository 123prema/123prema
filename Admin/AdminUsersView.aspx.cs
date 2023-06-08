using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
namespace Adoptation_Portal.WebPages.Admin
{
    public partial class AdminUsersView : System.Web.UI.Page
    {
        readyclass obj = new readyclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblID.Text = Request.QueryString["ID"].ToString();

                fillDetails();
            }
        }

        private void fillDetails()
        {
            string sql = "select * from tblUser where ID='" + lblID.Text.Trim() + "'";
            SqlDataReader dr = Database.getDataReader(sql);
            if (dr.Read())
            {
                lblID.Text = dr[0].ToString().Trim();
                lblName.Text = dr[1].ToString().Trim();
                lblAddressLine1.Text = dr[2].ToString().Trim();
                lblAddressLine2.Text = dr[3].ToString().Trim();
                lblTaluk.Text = dr[4].ToString().Trim();
                lblDistrict.Text = dr[5].ToString().Trim();
                lblMobile.Text = dr[6].ToString().Trim();
            }
            dr.Close();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminUsersList.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (lblID.Text.Trim() == "")
                readyclass.errormessage(lblerror, "Select User to delete");
            else
            {
                string sql = "delete from tblUser where ID = '" + lblID.Text.Trim() + "'";
                Database.executeQuery(sql);

                sql = "delete from tblLogin where UserID = '" + lblMobile.Text.Trim() + "'";
                Database.executeQuery(sql);

                obj.Show("Deleted Successfully", "AdminUsersList.aspx");
            }
        }

    }
}
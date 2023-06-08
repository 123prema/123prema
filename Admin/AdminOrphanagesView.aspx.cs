using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace Adoptation_Portal.WebPages.Admin
{
    public partial class AdminOrphanagesView : System.Web.UI.Page
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
            string sql = "select * from tblOrphanages where ID='" + lblID.Text.Trim() + "'";
            SqlDataReader dr = Database.getDataReader(sql);
            if (dr.Read())
            {
                lblID.Text = dr[0].ToString().Trim();
                lblOrphanage.Text = dr[1].ToString().Trim();
                lblContactPerson.Text = dr[2].ToString().Trim();
                lblAddressLine1.Text = dr[3].ToString().Trim();
                lblAddressLine2.Text = dr[4].ToString().Trim();
                lblTaluk.Text = dr[5].ToString().Trim();
                lblDistrict.Text = dr[6].ToString().Trim();
                lblMobile.Text = dr[7].ToString().Trim();
                lblEmailID.Text = dr[8].ToString().Trim();
                lblStatus.Text = dr[9].ToString().Trim();
            }
            dr.Close();

            if (lblStatus.Text == "New")
            {
                btnApprove.Visible = true;
            }
            else
                btnApprove.Visible = false;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminOrphanagesList.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (lblID.Text.Trim() == "")
                readyclass.errormessage(lblerror, "Select Orphanages to delete");
            else
            {
                string sql = "delete from tblOrphanages where ID = '" + lblID.Text.Trim() + "'";
                Database.executeQuery(sql);

                sql = "delete from tblLogin where UserID = '" + lblMobile.Text.Trim() + "'";
                Database.executeQuery(sql);

                obj.Show("Deleted Successfully", "AdminOrphanagesList.aspx");
            }
        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            string sql = "Update tblOrphanages SET ";
            sql = sql + "Status = 'Approved' Where ID = '" + lblID.Text.Trim() + "'";

            Database.executeQuery(sql);

            String str = obj.generateOTP();


            sql = "insert into tblLogin (UserID,Password,UserType) ";
            sql = sql + "Values('" + lblMobile.Text.Trim() + "', '" + str + "','Orphanages')";

            Database.executeQuery(sql);

            string msg = "You can login to the Portal by using User ID:" + lblMobile.Text.Trim() + ". and Password is : " + str;
            string mobile = lblMobile.Text.Trim();

            obj.sendSMS(msg, mobile);

            obj.Show("Approved Successfully"+msg, "AdminOrphanagesList.aspx");
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace Adoptation_Portal.WebPages.Admin
{
    public partial class AdminRequestView : System.Web.UI.Page
    {
        readyclass obj = new readyclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblID.Text = Request.QueryString["ID"].ToString();
                string sql = "Select * from tblRequest where ID='" + lblID.Text.Trim() + "'";
                SqlDataReader dr = Database.getDataReader(sql);
                if (dr.Read())
                {
                    lblID.Text = dr[0].ToString().Trim();
                    lblOrphanID.Text = dr[1].ToString().Trim();
                    lblUserID.Text = dr[2].ToString().Trim();
                }
                dr.Close();

                fillOrphanDetails();
                fillOrphanageDetails();
                fillUserDetails();

                fillDocuments();


            }
        }

        private void fillDocuments()
        {
            string sql = "Select * from tblDocuments where RequestID=" + lblID.Text.Trim() + "";
            obj.fillwithouterrormsg(grdDocuments, sql);

        }

        private void fillOrphanDetails()
        {
            string sql = "select * from tblOrphans where ID='" + lblOrphanID.Text.Trim() + "'";
            SqlDataReader dr = Database.getDataReader(sql);
            if (dr.Read())
            {
                lblOrphanName.Text = dr[1].ToString().Trim();
                lblAge.Text = dr[2].ToString().Trim();
                lblGender.Text = dr[3].ToString().Trim();
                imgImage.ImageUrl = dr[4].ToString().Trim();
                lblAboutOrphan.Text = dr[5].ToString().Trim();
                lblStatus.Text = dr[6].ToString().Trim();
                lblMobile.Text = dr[7].ToString().Trim();
            }
            dr.Close();
        }

        private void fillOrphanageDetails()
        {
            string sql = "select * from tblOrphanages where Mobile='" + lblMobile.Text.Trim() + "'";
            SqlDataReader dr = Database.getDataReader(sql);
            if (dr.Read())
            {
                lblOrphanage.Text = dr[1].ToString().Trim();
                lblContactPerson.Text = dr[2].ToString().Trim();
                lblAddressLine1.Text = dr[3].ToString().Trim();
                lblAddressLine2.Text = dr[4].ToString().Trim();
                lblTaluk.Text = dr[5].ToString().Trim();
                lblDistrict.Text = dr[6].ToString().Trim();
                lblMobile.Text = dr[7].ToString().Trim();
                lblEmailID.Text = dr[8].ToString().Trim();
            }
            dr.Close();
        }

        private void fillUserDetails()
        {
            string sql = "select * from tblUser where Mobile='" + lblUserID.Text.Trim() + "'";
            SqlDataReader dr = Database.getDataReader(sql);
            if (dr.Read())
            {
                lblUName.Text = dr[1].ToString().Trim();
                lblUAddressLine1.Text = dr[2].ToString().Trim();
                lblUAddressLine2.Text = dr[3].ToString().Trim();
                lblUTaluk.Text = dr[4].ToString().Trim();
                lblUDistrict.Text = dr[5].ToString().Trim();
                lblUMobile.Text = dr[6].ToString().Trim();
            }
            dr.Close();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAdoptationList.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string sql = "delete from tblRequest where OrphanID = '" + lblOrphanID.Text.Trim() + "'";
            Database.executeQuery(sql);


            sql = "delete from tblDocuments where RequestID = '" + lblID.Text.Trim() + "'";
            Database.executeQuery(sql);

            string sql1 = "Update tblOrphans SET ";
            sql1 = sql1 + "Status='Orphan' where ID='" + lblOrphanID.Text.Trim() + "'";

            Database.executeQuery(sql1);

            obj.Show("Deleted Successfully", "AdminAdoptationList.aspx");

        }
    }
}
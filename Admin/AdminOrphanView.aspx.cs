using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

namespace Adoptation_Portal.WebPages.Admin
{
    public partial class AdminOrphanView : System.Web.UI.Page
    {
        readyclass obj = new readyclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblID.Text = Request.QueryString["ID"].ToString();

                fillOrphanDetails();

                fillOrphanageDetails();
            }
        }

        private void fillOrphanDetails()
        {
            string sql = "select * from tblOrphans where ID='" + lblID.Text.Trim() + "'";
            SqlDataReader dr = Database.getDataReader(sql);
            if (dr.Read())
            {
                lblID.Text = dr[0].ToString().Trim();
                lblOrphanName.Text = dr[1].ToString().Trim();
                lblAge.Text = dr[2].ToString().Trim();
                lblGender.Text = dr[3].ToString().Trim();
                imgImage.ImageUrl = dr[4].ToString().Trim();
                lblAboutOrphan.Text = dr[5].ToString().Trim();
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

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminOrphansList.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string sql = "delete from tblOrphans where ID = '" + lblID.Text.Trim() + "'";
            Database.executeQuery(sql);

            sql = "delete from tblRequest where OrphanID = '" + lblID.Text.Trim() + "'";
            Database.executeQuery(sql);
        }
    }
}
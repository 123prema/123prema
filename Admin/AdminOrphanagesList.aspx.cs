using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adoptation_Portal.WebPages.Admin
{
    public partial class AdminOrphanagesList : System.Web.UI.Page
    {
        readyclass obj = new readyclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "Select distinct(District) from tblOrphanages";
                obj.filllist(ddlDistrict, sql);

                ddlDistrict_SelectedIndexChanged(this, new EventArgs());
            }
        }

        protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "Select distinct(Status) from tblOrphanages where District='" + ddlDistrict.SelectedValue + "'";
            obj.filllist(ddlStatus, sql);

            ddlStatus_SelectedIndexChanged(this, new EventArgs());
        }

        protected void ddlStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "Select * from tblOrphanages where District='" + ddlDistrict.SelectedValue + "' and Status='" + ddlStatus.SelectedValue + "'";
            obj.fill(grdOrphanages, sql, lblerror);

        }
    }
}
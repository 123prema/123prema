using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adoptation_Portal.WebPages.Admin
{
    public partial class AdminOrphansList : System.Web.UI.Page
    {
        readyclass obj = new readyclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "Select distinct(District) from tblOrphanages";
                obj.filllist(ddlDistrict, sql);

                ddlDistrict_SelectedIndexChanged(this, new EventArgs());
                ddlTaluk_SelectedIndexChanged(this, new EventArgs());
                ddlOrphanage_SelectedIndexChanged(this, new EventArgs());
            }
        }

        protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {

            string sql = "Select distinct(Taluk) from tblOrphanages where District='" + ddlDistrict.SelectedValue + "'";
            obj.filllist(ddlTaluk, sql);

            ddlTaluk_SelectedIndexChanged(this, new EventArgs());
            ddlOrphanage_SelectedIndexChanged(this, new EventArgs());
        }

        protected void ddlTaluk_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "Select distinct(Orphanage) from tblOrphanages where District='" + ddlDistrict.SelectedValue + "' and Taluk='" + ddlTaluk.SelectedValue + "'";
            obj.filllist(ddlOrphanage, sql);

            ddlOrphanage_SelectedIndexChanged(this, new EventArgs());
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string gender = rdGender.SelectedValue;

            string sql = "Select o.ID,o.OrphanName,o.Age,o.Gender,o.Image from tblOrphans o,tblOrphanages og where o.Gender='" + gender + "' and og.Orphanage='" + ddlOrphanage.SelectedValue + "' and og.District='" + ddlDistrict.SelectedValue + "' and og.Taluk='" + ddlTaluk.SelectedValue + "' and og.Mobile=o.Orphanage and o.Status='" + ddlStatus.SelectedValue + "'";
            obj.fill(grdOrphans, sql, lblerror);
        }

        protected void ddlOrphanage_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "Select distinct(o.Status) from tblOrphans o,tblOrphanages og where og.Orphanage='" + ddlOrphanage.SelectedValue + "' and og.District='" + ddlDistrict.SelectedValue + "' and og.Taluk='" + ddlTaluk.SelectedValue + "' and og.Mobile=o.Orphanage";
            obj.filllist(ddlStatus, sql);
        }
    }
}
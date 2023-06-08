using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adoptation_Portal.WebPages.Admin
{
    public partial class AdminUsersList : System.Web.UI.Page
    {
        readyclass obj = new readyclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "Select distinct(District) from tblUser";
                obj.filllist(ddlDistrict, sql);

                ddlDistrict_SelectedIndexChanged(this, new EventArgs());
            }
        }

        protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "Select * from tblUser where District='" + ddlDistrict.SelectedValue + "'";
            obj.fill(grdUsers, sql, lblerror);
        }

    }
}
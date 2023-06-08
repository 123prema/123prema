using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Adoptation_Portal.WebPages.Orphanages
{
    public partial class OrphanagesAdoptationRequestList : System.Web.UI.Page
    {
        readyclass obj = new readyclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "Select r.ID,o.OrphanName,o.Age,o.Gender,o.Image from tblOrphans o,tblRequest r  where o.Orphanage='" + Session["UserID"].ToString() + "' and r.OrphanID=o.ID";
                obj.fill(grdOrphans, sql, lblerror);
            }

        }
    }
}
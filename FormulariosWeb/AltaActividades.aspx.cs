using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminProjects.FormulariosWeb
{
    public partial class AltaActividades : System.Web.UI.Page
    {
        ClaseGeneral Proceso = new ClaseGeneral();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtbl = new DataTable();
            dtbl.Rows.Add(dtbl.NewRow());
            gvEntregables.DataSource = dtbl;
            gvEntregables.DataBind();
 
        }
    }
}
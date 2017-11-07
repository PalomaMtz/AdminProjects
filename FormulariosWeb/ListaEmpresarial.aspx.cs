using AdminProjects.API_CRUD;
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
    public partial class ListaEmpresarial : System.Web.UI.Page
    {

        ProcedimientosProyecto Proceso = new ProcedimientosProyecto();
        ClaseGeneral Operacion = new ClaseGeneral();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LlenarTablaEmpresas();
            }
        }

        protected void gvTablaEmpresas_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "NuevaSolicitud")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                string Empresa = (gvTablaEmpresas.Rows[index].FindControl("lblEmpresas") as Label).Text.Trim();
                Response.Redirect("SolicitudProyecto.aspx?id=" + Empresa);
            }
        }

        private void LlenarTablaEmpresas()
        {
            DataTable dtbl = new DataTable();
            SqlDataAdapter sqlDa = Operacion.BuscarElementosSinParametro("sp_ListaEmpresas");
            sqlDa.Fill(dtbl);

            if (dtbl.Rows.Count > 0)
            {
                this.gvTablaEmpresas.DataSource = dtbl;
                this.gvTablaEmpresas.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                this.gvTablaEmpresas.DataSource = dtbl;
                this.gvTablaEmpresas.DataBind();
                this.gvTablaEmpresas.Rows[0].Cells.Clear();
                this.gvTablaEmpresas.Rows[0].Cells.Add(new TableCell());
                this.gvTablaEmpresas.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                this.gvTablaEmpresas.Rows[0].Cells[0].Text = "No hay empresa registadas";
                this.gvTablaEmpresas.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
    }
}
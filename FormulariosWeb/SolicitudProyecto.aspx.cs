using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdminProjects.MisControles;
using AdminProjects.API_CRUD;
using System.Data;

namespace AdminProjects.FormulariosWeb
{
    public partial class SolicitudProyecto : System.Web.UI.Page
    {
        ProcedimientosProyecto Proceso = new ProcedimientosProyecto();
        ClaseProyecto Proyecto = new ClaseProyecto();
        string FolioProyecto;
        string NombreEmpresa = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            FolioProyecto = Proceso.GenerarFolioProyecto("Solicitud");
            NombreEmpresa = Request.QueryString["id"].ToString();            
        }
        protected void btnMostrarPanelEntregable_Click(object sender, ImageClickEventArgs e)
        {
            this.panelEntregable.Visible = true;
            this.btnMostarPanelActividad.Visible = false;
            this.btnNvoEntregable.Visible = false;
        }
        protected void btnMostarPanelActividad_Click(object sender, EventArgs e)
        {

            this.panelListaActividades.Visible = true;
            this.btnGuardarEntregable.Visible = false;
            this.btnMostarPanelActividad.Visible = false;
            this.btnNvoEntregable.Visible = true;
            string IdEntregable = this.Proceso.ObtenerIdEntregableActual(this.FolioProyecto);
            this.LlenarTablaActividades(IdEntregable);
        }
        protected void btnGuardarProyecto_Click(object sender, EventArgs e)
        {
            int entregables = this.Proceso.contarEntregables(this.FolioProyecto);
            if (this.txtRespTecnico.Text == string.Empty || this.txtTelRespTecnico.Text == string.Empty || this.txtCorreoRespTecnico.Text == string.Empty || this.txtTelRespAdministrativo.Text == string.Empty ||
            this.txtCorreoRespAdministrativo.Text == string.Empty || this.txtTituloProyecto.Text == string.Empty || this.txtDescripcionPropuesta.Text == string.Empty || this.txtObjetivoProyecto.Text == string.Empty || this.txtResultadosEsperados.Text == string.Empty ||
            txtEstrategiaTecnologica.Text == string.Empty)
            {
                string msg = "Algunos campos obligatorios estan vacíos.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                return;

            }
                else if(entregables == 0){
                    string msg = "No se han agregado entregables para este proyecto.";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                    return;
                }
            else
            {

                try
                {
                    FolioProyecto = Proceso.GenerarFolioProyecto("Solicitud");
                    Proyecto.FolioProyecto = FolioProyecto;
                    Proyecto.StatusProyecto = "Solicitud";
                    Proyecto.Empresa = NombreEmpresa;
                    Proyecto.RespTecnico = this.txtRespTecnico.Text;
                    Proyecto.TelefonoRespTecnico = this.txtTelRespTecnico.Text;
                    Proyecto.ExtensionTelRespTecnico = this.txtExtTelRespTecnico.Text;
                    Proyecto.CorreoRespTecnico = this.txtCorreoRespTecnico.Text;
                    Proyecto.OtroTelefonoRespTecnico = this.txtOtroTelefonoRespTecnico.Text;
                    Proyecto.RespAdministrativo = this.txtRespAdministrativo.Text;
                    Proyecto.TelefonoRespAdministrativo = this.txtTelRespAdministrativo.Text;
                    Proyecto.ExtensionTelRespAdministrativo = this.txtExtTelRespAdministrativo.Text;
                    Proyecto.CorreoRespAdministrativo = this.txtCorreoRespAdministrativo.Text;
                    Proyecto.OtroTelefonoRespAdministrativo = this.txtOtroTelRespAdministrativo.Text;
                    Proyecto.TituloProyecto = this.txtTituloProyecto.Text;
                    Proyecto.DescripcionPropuesta = this.txtDescripcionPropuesta.Text;
                    Proyecto.ObjetivoProyecto = this.txtObjetivoProyecto.Text;
                    Proyecto.ResultadosEsperados = this.txtResultadosEsperados.Text;
                    Proyecto.ImpactoEstrategiaTecnologica = txtEstrategiaTecnologica.Text;
                    //Enviar la informacion al metodo Guardar proyecto

                    this.Proceso.GuardarRegistroActividad(FolioProyecto,"Usuario");
                    


                    this.Proceso.GuardarProyecto(Proyecto);
                    string msg = "InformacionGuardada con éxito.";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                    Response.Redirect("ListaEmpresarial.aspx");
                }
                catch
                {
                    string msg = "Ubo un error al guardar la información.";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                    return;

                }
            }
            
        }
        protected void btnGuardarEntregable_Click(object sender, EventArgs e)
        {
            if (this.txtEntregable.Text == string.Empty)
            {
                string msg = "El campo de entregable esta vacio, favor de poner un valor válido";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                return;
            }

            List<string> Entregable = new List<string>();
            string IdEntregable = IdEntregable = this.Proceso.GenerarIdEntregable(this.FolioProyecto);

            Entregable.Add(IdEntregable);
            Entregable.Add(this.FolioProyecto);
            Entregable.Add(this.txtEntregable.Text);
            //Enviar la lista de los entregables al metodo guardar
            this.Proceso.GuardarEntregable(Entregable);
            this.btnGuardarEntregable.Visible = false;
            this.btnMostarPanelActividad.Visible = true;
            this.btnNvoEntregable.Visible = true;
            this.txtEntregable.ReadOnly = true;
        }
        protected void btnAgregarIntegrantes_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Redirect("SolicitudProyecto.aspx?id=" + Empresa);
            string vtn = "window.open('AgregarIntegrantes.aspx?id="+this.FolioProyecto+"','Dates','scrollbars=yes,resizable=no,top=50','height=100px', 'width=300px')";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", vtn, true);
        }
        protected void btnNvoEntregable_Click(object sender, EventArgs e)
        {

            this.txtEntregable.ReadOnly = false;
            this.txtEntregable.Text = "";

            this.btnGuardarEntregable.Visible = true;
            this.btnMostarPanelActividad.Visible = false;
            this.btnNvoEntregable.Visible = false;
            this.panelListaActividades.Visible = false;
        }
        void LlenarTablaActividades(string _Idtregable)
        {
            DataTable dtbl = Proceso.TablaActividades(_Idtregable);
            if (dtbl.Rows.Count > 0)
            {
                gvTablaDatos.DataSource = dtbl;
                gvTablaDatos.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvTablaDatos.DataSource = dtbl;
                gvTablaDatos.DataBind();
                gvTablaDatos.Rows[0].Cells.Clear();
                gvTablaDatos.Rows[0].Cells.Add(new TableCell());
                gvTablaDatos.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvTablaDatos.Rows[0].Cells[0].Text = "Este entregable no tiene Actividades Agregadas";
                gvTablaDatos.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
        protected void gvTablaDatos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    string Actividad = (gvTablaDatos.FooterRow.FindControl("txtActividadFooter") as TextBox).Text.Trim();
                    if (Actividad == string.Empty)
                    {
                        lblErrorMessage.Text = "Error, Algunos campos estan vacios.";
                        return;
                    }
                    string IdEntregable = this.Proceso.ObtenerIdEntregableActual(this.FolioProyecto);
                    string IdActividad = this.Proceso.GenerarIdActividad(IdEntregable);//this.Proceso.ObtenerIdActividadActual(IdEntregable);

                    List<string> Actividades = new List<string>();
                    Actividades.Add(IdActividad);
                    Actividades.Add(IdEntregable);
                    Actividades.Add(Actividad);
                    //Enviar datos de la actividad para guardar en la bd
                    this.Proceso.GuardarActividad(Actividades);

                    LlenarTablaActividades(IdEntregable);
                    lblSuccessMessage.Text = "Nuevo dato agregado";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = "Error al guardar los datos";
            }

        }
        protected void gvTablaDatos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string IdEntregable = this.Proceso.ObtenerIdEntregableActual(this.FolioProyecto);
            try
            {
                string descripcion = (gvTablaDatos.Rows[e.RowIndex].FindControl("lblActividad") as Label).Text.Trim();
                this.Proceso.EliminarActividad(descripcion);
                this.LlenarTablaActividades(IdEntregable);
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }
        protected void btnGenerarFolio_Click(object sender, EventArgs e)
        {
            this.lblCodigo.Text = "Folio de Proyecto: " + FolioProyecto;
            this.btnGenerarFolio.Visible = false;
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            //limpiar todas las cajas de texto
            this.txtRespTecnico.Text = string.Empty;
            this.txtTelRespTecnico.Text = string.Empty;
            this.txtExtTelRespTecnico.Text = string.Empty;
            this.txtCorreoRespTecnico.Text = string.Empty;
            this.txtOtroTelefonoRespTecnico.Text = string.Empty;
            this.txtRespAdministrativo.Text = string.Empty;
            this.txtTelRespAdministrativo.Text = string.Empty;
            this.txtExtTelRespAdministrativo.Text = string.Empty;
            this.txtCorreoRespAdministrativo.Text = string.Empty;
            this.txtOtroTelRespAdministrativo.Text = string.Empty;
            this.txtTituloProyecto.Text = string.Empty;
            this.txtDescripcionPropuesta.Text = string.Empty;
            this.txtObjetivoProyecto.Text = string.Empty;
            this.txtResultadosEsperados.Text = string.Empty;
            this.txtEstrategiaTecnologica.Text = string.Empty;

        }
    }
}
  




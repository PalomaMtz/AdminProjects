<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="AltaProyecto.aspx.cs" Inherits="AdminProjects.FormulariosWeb.AltaProyecto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>


  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



   </head>
<body>
    <form runat="server" enctype="multipart/form-data">

        <div class="navbar-default" aria-orientation="horizontal" style="text-align: center">
            <br />
            <asp:Button ID="btnMostrarDDLs" runat="server" Text="Iniciar" OnClick="btnMostrarDDLs_Click" CssClass="btn-info" />

            <br />

            <br />

            <asp:Panel runat="server" ID="pnl_DDLs" style="margin-left: 5%; margin-top: 0px;" Visible="False" Height="214px">
            <asp:Label ID="Label1" runat="server" Text="Seleccione la empresa" CssClass="text-primary" Font-Size="15pt"></asp:Label>
            <br />

            <br />
            <asp:DropDownList ID="ddlEmpresas" runat="server" Height="39px" Width="80%" CssClass="dropdown-toggle" BackColor="#7BE7F2">
            </asp:DropDownList>
                &nbsp;
                <asp:Button ID="btnVerProyectos" runat="server" OnClick="btnVerProyectos_Click" Text="Ver" Width="53px" CssClass="bg-info" />
            <br />
            <br />
            <asp:Label ID="lblProyecto" runat="server" Text="Seleccione el proyecto Correspondiente" Visible="False" CssClass="text-primary" Font-Size="15pt"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="ddlProyectos" runat="server" Height="29px"  Width="85%" CssClass="dropdown-toggle" BackColor="#7BE7F2" Visible="False">
            </asp:DropDownList>
                <br />
            <br />
                <asp:Button ID="btnMostrarInformacion" runat="server" OnClick="btnMostrarInformacion_Click" Text="Mostrar Informacion" Visible="False" CssClass="btn-info" />

            </asp:Panel>
            
            <div>

                <br />

                
                <table runat="server"  id="TablaBase" style=" width:85%;margin-left:10%; height: 1326px;" align="center" visible="false">

                    <tr>
                        <td colspan ="2" style="text-align:center">

                            <br />

                            <asp:Label ID="Label3" runat="server" Text="Titulo del Proyecto" style="text-align: left" CssClass="text-primary" Font-Size="15pt"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtTituloProyecto" runat="server" Height="30px" Width="87%" CssClass="form-control" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>

                            <br />

                        </td>
                        <td>

                            <asp:Label ID="Label7" runat="server" Text="Folio de Proyecto" style="text-align: left" CssClass="text-primary" Font-Size="15pt"></asp:Label>
                            <asp:TextBox ID="txtFolioProyecto" runat="server" Height="30px" Width="70%" CssClass="form-control" ReadOnly="True"></asp:TextBox>

                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan ="3" style="text-align:center;" class="auto-style6">

                            <asp:Label ID="Label9" runat="server" Text="Descripción" CssClass="text-primary" Font-Size="15pt"></asp:Label>
                            <br />
                            <asp:TextBox   ID="txtDescripcion" runat="server" Width="91%" Height="100px" CssClass="form-control" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>

                            <br />

                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan ="3" style="text-align:center">

                            <asp:Label ID="Label5" runat="server" Text="Objetivos:" style="text-align: left" CssClass="text-primary" Font-Size="15pt"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtObjetivos" runat="server" Width="91%" Height="100px" CssClass="form-control" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>

                            <br />

                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan ="3" style="text-align:center" class="auto-style11">

                            <asp:Label ID="Label6" runat="server" Text="Resultados Esperados:" style="text-align: left" CssClass="text-primary" Font-Size="15pt"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtResultadosEsperados" runat="server" Width="91%" Height="100px" CssClass="form-control" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>

                            <br />
                            <br />
                            <br />

                        </td>
                        
                    </tr>

                    <tr>
                        <td class="auto-style2" style="width: 20%; ">
                            &nbsp;</td>
                        <td class="auto-style8" style="width: 40%">
                            <br />
                            <asp:Label ID="lblConvenio" runat="server" Text="Convenio" CssClass="text-primary" Font-Size="15pt"></asp:Label>
                            <asp:FileUpload ID="fulConvenio" runat="server"  CssClass="btn-info" Width="90%" Height="30px" />
                        </td>
                        <td class="auto-style1" style="width: 40%;">
                            <br />
                            <br />
                            <asp:Button ID="btnGuardarConvenioPDF" runat="server" Text="Guardar" OnClick="btnGuardarConvenioPDF_Click" />
                            &nbsp;<asp:Button ID="btnEliminarConvenioPDF" runat="server" Text="Eliminar" OnClick="btnEliminarConvenioPDF_Click" Visible="False" />
                            &nbsp;<asp:Button ID="btnVerConvenioPDF" runat="server" Text="Ver" OnClick="btnVerConvenioPDF_Click" Visible="False" />
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style9" style="width: 20%">
                            </td>
                        <td class="auto-style10" style="width: 40%">
                            <asp:Label ID="lblContrato" runat="server" Text="Contrato" CssClass="text-primary" Font-Size="15pt"></asp:Label>
                            <asp:FileUpload ID="fulContrato" runat="server"  CssClass="btn-info" Width="90%" Height="30px" />
                        </td>
                        <td class="auto-style4" style="width: 40%;">
                            <br />
                            <asp:Button ID="btnGuardarContratoPDF" runat="server" Text="Guardar" OnClick="btnGuardarContratoPDF_Click" />
                            &nbsp;<asp:Button ID="btnELiminarContratoPDF" runat="server" Text="Eliminar" OnClick="btbELiminarContratoPDF_Click" Visible="False" />
                            &nbsp;<asp:Button ID="btnVerContratoPDF" runat="server" Text="Ver" OnClick="btnVerContratoPDF_Click" Visible="False" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9" style="width: 20%">
                            </td>
                        <td class="auto-style10" style="width: 40%">
                            <asp:Label ID="lblFianza" runat="server" Text="Fianza" CssClass="text-primary" Font-Size="15pt"></asp:Label>
                            <br />
                            <asp:FileUpload ID="fulFianza" runat="server"  CssClass="btn-info" Width="90%" Height="30px" />
                        </td>
                        <td style="width: 40%;" class="auto-style14">
                            <br />
                            <asp:Button ID="btnGuardarFianzaPDF" runat="server" Text="Guardar" OnClick="btnGuardarFianzaPDF_Click" />
                            &nbsp;<asp:Button ID="btnELiminarFianzaPDF" runat="server" Text="Eliminar" OnClick="btnELiminarFianzaPDF_Click" Visible="False" />
                            &nbsp;<asp:Button ID="btnVerFianzaPDF" runat="server" Text="Ver" OnClick="btnVerFianzaPDF_Click" Visible="False" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="width: 20%">&nbsp;</td>
                        <td class="auto-style3" style="width: 40%">
                            <br />
                            <br />
                            <br />
                            <asp:Button ID="btnMostrarPnlAdjuntos" runat="server" Text="Agregar Otros Documentos" OnClick="btnMostrarPnlAdjuntos_Click" CssClass="bg-primary" />
                        </td>
                        <td style="width: 40%;">&nbsp;</td>
                    </tr>
                    <tr >
                        <td class="auto-style7" style="width: 20%">

                            <br />
                            <br />
                        </td>
                        <td class="auto-style5" style="width: 40%">
                            <br />
                            <asp:Label ID="lblStatus" runat="server" Text="Sección de Adjuntos" Visible="False"></asp:Label>

                            <br />

                            <br />
                            <asp:FileUpload ID="fulOtrosAdjuntos" runat="server" Width="90%" Visible="False" Height="30px" CssClass="btn-info" />

                            <br />
                            <asp:Label ID="Label8" runat="server" Text="Nombre del Documento" Width="100%" style="text-align: left" Visible="False" CssClass="text-primary" Font-Size="15pt"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtNombreAdjunto" runat="server" Width="100%" Height="30px" Visible="False"></asp:TextBox>
                            <br />
                            <br />

                        </td>
                       
                        <td class="auto-style6" style="width: 40%; text-align: left;">

                            <asp:Button ID="btnGuardarAdjunto" runat="server" Text="Guardar" OnClick="btnGuardarAdjunto_Click" Visible="False" Width="116px" />

                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">

                            <br />

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15" colspan="3">
                            <br />
                            <br />
                            <asp:Panel ID="pnlArchivosAdjuntos" runat="server" Width="95%"  HorizontalAlign="Center" style="text-align: right; margin-left: 5%" BackColor="White" Visible="False">
                                <br />
                                     <br />
                                <br />
                                     </asp:Panel>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="width: 20%">&nbsp;</td>
                        <td class="auto-style3" style="width: 40%">&nbsp;</td>
                        <td style="width:40%">
                            <br />
                            <asp:Button ID="btnActualizar" runat="server" Text="Guardar Todo" OnClick="btnActualizar_Click" Visible="False" Width="116px" />

                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
            </div>

        </div>

    </form>




</body>
</html>

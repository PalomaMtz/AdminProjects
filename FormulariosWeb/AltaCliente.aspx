<%@ Page Language="C#" MasterPageFile="~/paginaMaestra.Master"  AutoEventWireup="true" CodeBehind="AltaCliente.aspx.cs" Inherits="AdminProjects.FormulariosWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <style type="text/css">
        .auto-style1 {
            width: 1568px;
        }
        .auto-style2 {
            width: 333px;
        }
        .auto-style3 {
            width: 1568px;
            height: 60px;
        }
        .auto-style6 {
            width: 1568px;
            height: 48px;
        }
        .auto-style8 {
            height: 48px;
        }
        .auto-style9 {
            width: 1568px;
            height: 78px;
        }
        .auto-style11 {
            height: 78px;
        }
        .fontCG15px {
            font-family:Century Gothic;
            Font-Size:20pt;
            color:#1B7189;         
        }
        .auto-style12 {
            height: 91px;
        }
        </style>


</head>
<body>
     <br /> 
    <div class="navbar-default" style="height:100%">
         <br /> 
        <table  style="width: 90%;" align="center">
            <tr>
                <td rowspan="15" style="width:2%"></td>
            </tr>
            <tr align="center">
                <td colspan="3" class="auto-style6" align="left" width="65%">
                    <br />
                    <asp:Label ID="Label16" runat="server" Text="Información de la Empresa" CssClass="fontCG15px" Font-Bold="True"></asp:Label>
                    &nbsp;</td>
                
            </tr>
            
            <tr align="center">
                <td class="auto-style1" align="left" width="65%">
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Razon Social" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtRazonSocial" runat="server" Height="30px" Width="95%" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style2" colspan="2" align="justify" width="35%">
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="RFC" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtRFC" runat="server" Style="margin-top: 2px" Height="30px" Width="85%" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td class="auto-style1" align="left" width="100%" colspan="3">
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Nombre comercial" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtNombreComercial" runat="server" Height="30px" Width="95%" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td class="auto-style3"  align="left" width="65%">
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Dirección" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDireccion" runat="server" Height="70px" Width="95%" Rows="5" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                </td>
                <td align="justify" width="20%">
                    <asp:Label ID="Label5" runat="server" Text="Teléfono de la Empresa" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtTelefonoEmpresa" runat="server" Height="30px" Width="90%" CssClass="form-control"></asp:TextBox>
                </td>
                <td align="left" width="15%">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Extensión" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtExtTelefonoEmpresa" runat="server" Height="30px" Width="70%" CssClass="form-control"></asp:TextBox>

                </td>
            </tr>
            <tr align="center">
                <td class="auto-style6" align="left" width="65%">
                    <br />
                    <asp:Label ID="Label17" runat="server" Text="Información del Representante Legal" CssClass="fontCG15px" Font-Bold="True"></asp:Label>
                    </td>
                <td class="auto-style8" width="20%"></td>
                <td class="auto-style8" align="left" width="15%"></td>
            </tr>
            <tr align="center">
                <td class="auto-style9" align="left" width="65%">
                    <asp:Label ID="Label8" runat="server" Text="Nombre" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtRepresentanteLegal" runat="server" Height="30px" Width="95%" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style11" width="20%" align="left">
                    <asp:Label ID="Label11" runat="server" Text="Teléfono" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtTelefonoRepLegal" runat="server" Height="30px" Width="90%" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style11" width="15%" align="left">
                    <asp:Label ID="Label12" runat="server" Text="Extensión" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtExtTelefonoRepLegal" runat="server" Height="30px" Width="70%" CssClass="form-control"></asp:TextBox>

                </td>
            </tr>
            <tr align="center">
                <td class="auto-style1" align="left" width="65%">
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Correo" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtCorreoRepLegal" runat="server" Height="30px" Width="95%" CssClass="form-control"></asp:TextBox>
                </td>
                <td colspan="2" align="left" width="35%">
                    <br />
                    <asp:Label ID="Label13" runat="server" Text="Otro teléfono" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <asp:TextBox ID="txtOtroTelefonoRepLegal" runat="server" Height="30px" Width="85%" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" align="left" width="65%">
                   
                    <asp:Label ID="Label10" runat="server" Text="RENIECYT" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtRENIECYT" runat="server" Height="30px" Width="95%" CssClass="form-control"></asp:TextBox>
                   
                </td>
                <td colspan="2" width="35%">
                    <br />
                    <br />
                    <asp:Label ID="Label14" runat="server" Text="Vigencia RENIECYT" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <br />
                    
                    <asp:TextBox ID="txtVigenciaRENIECYT" runat="server" Width="85%" CssClass="form-control" ReadOnly="True" Height="30px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnCalendario" runat="server" OnClick="btnCalendario_Click" Text="Calendario" />
                    &nbsp;
                   
                    <br />
                </td>
                <td>
                     <asp:Calendar ID="Calendario" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar_SelectionChanged" Width="220px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr align="center">
                <td colspan="3" align="left" width="100%">
                    <asp:Label ID="Label15" runat="server" Text="Descripcion de la empresa" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDescripcionEmpresa" runat="server" Height="100px" Width="100%" Rows="5" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td colspan="3" align="left" width="100%">
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Estrategia Tecnológica" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtEstrategiaTecnologica" runat="server" Height="100px" Width="100%" Rows="5" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td colspan="3" align="left" width="100%">
                    <br />
                    <asp:Label ID="Label18" runat="server" Text="Principales productos, procesos o servicios que brinda la empresa" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtPrincipalesProdProcServ" runat="server" Height="100px" Width="100%" Rows="5" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td colspan="3" align="left" class="auto-style12" width="100%">
                    <br />
                    <asp:Label ID="Label19" runat="server" Text="Acervo tecnológico" CssClass="text-primary" Font-Bold="True" Font-Size="13pt"></asp:Label>
                    <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Red" Text="*"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtAcervoTecnologico" runat="server" Height="100px" Width="100%" Rows="5" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td class="auto-style1" align="left" width="65%">&nbsp;</td>
                <td width="20%">&nbsp;</td>
                <td align="left" width="15%">&nbsp;</td>
            </tr>
            <tr align="center">
                <td class="auto-style1" align="left" width="65%">&nbsp;</td>
                <td colspan="2" width="35%">
                    <asp:Button ID="btnGuardarCliente" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="btnGuardarCliente_Click" Height="50px" Width="120px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-danger" Height="50px" Width="120px" OnClick="btnCancelar_Click" />
                </td>
            </tr>
        </table>
        <br />
        <br />
    
    
    </div>
</body>
</html>

       </asp:Content>
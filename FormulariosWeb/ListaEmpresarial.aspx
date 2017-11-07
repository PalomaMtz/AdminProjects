<%@ Page MaintainScrollPositionOnPostback="true" EnableEventValidation="false" MasterPageFile="~/paginaMaestra.Master"  Language="C#" AutoEventWireup="true" CodeBehind="ListaEmpresarial.aspx.cs" Inherits="AdminProjects.FormulariosWeb.ListaEmpresarial" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>

        
         <table style="width: 95%">
            <tr>
                <td style="width: 5%"></td>
                <td style="width: 95%">

                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="text-primary" Text="Seleccione el Ícono para registrar un nuevo proyecto" Font-Bold="True" Font-Size="12pt"></asp:Label>
                    <br />

                    <br />
                    <asp:Panel HorizontalAlign="Center" ID="panelListaEmpresas" runat="server" Visible="true" Width="100%">
                        <asp:GridView ID="gvTablaEmpresas" runat="server" AutoGenerateColumns="False"
                            ShowHeaderWhenEmpty="True"
                            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                            GridLines="Vertical" Width="100%" OnRowCommand="gvTablaEmpresas_RowCommand1">
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle ForeColor="Black" BackColor="#EEEEEE" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:TemplateField HeaderText="Nombre Comercial de la Empresa" HeaderStyle-Width="45%">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("NombreComercial") %>' ID="lblEmpresas" runat="server" />
                                    </ItemTemplate>                                    
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Razon Social" HeaderStyle-Width="45%">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("RazonSocial") %>' ID="lblRazonSocial" runat="server" />
                                    </ItemTemplate>                                    
                                </asp:TemplateField>
                                <asp:TemplateField HeaderStyle-Width="10%">
                                    <ItemTemplate>
                                        <asp:ImageButton ImageUrl="~/Imagenes/nuevo.png" runat="server" 
                                            CommandName="NuevaSolicitud"
                                            CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                            Width="35px" Height="35px" />
                                    </ItemTemplate>
                                   
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

                    </asp:Panel>
                </td>
            </tr>
        </table>
        



    </body>
    </html>
</asp:Content>

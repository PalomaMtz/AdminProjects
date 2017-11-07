<%@ Page MaintainScrollPositionOnPostback="true" MasterPageFile="~/paginaMaestra.Master"  Language="C#" AutoEventWireup="true" CodeBehind="AltaActividades.aspx.cs" Inherits="AdminProjects.FormulariosWeb.AltaActividades" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body>
        <div>
             <br />
             <br />
             <br /> 
           <asp:Panel runat="server" HorizontalAlign="Center">
               <br />
               <asp:GridView ID="gvEntregables" runat="server" AutoGenerateColumns="False" BackColor="White" style="margin-right:10%; margin-left:5%" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="90%">
                   <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                   <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                   <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                   <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                   <SortedAscendingCellStyle BackColor="#F1F1F1" />
                   <SortedAscendingHeaderStyle BackColor="#0000A9" />
                   <SortedDescendingCellStyle BackColor="#CAC9C9" />
                   <SortedDescendingHeaderStyle BackColor="#000065" />
                   <AlternatingRowStyle BackColor="#DCDCDC" />
                   <Columns>
                       <asp:TemplateField HeaderText="Entregable" ItemStyle-Width="70%" >
                           <ItemTemplate>
                               <asp:Label Width="100%" ID="lblEntregable" runat="server" Text="Entregable"/> <!-- Text='<  ! %# Eval("DescripcionEntregable") %>'   -->
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField  ItemStyle-Width="30%">
                           <ItemTemplate >
                               <asp:Button runat="server" CommandName="AsignarFecha" ToolTip="Gregar nuevo" Text="Asignar Fecha" Width="120px" />
                           </ItemTemplate>
                       </asp:TemplateField>
                   </Columns>
               </asp:GridView>
               <br />
               <br />

           </asp:Panel>


             <br />


        </div>
    </body>
    </html>

</asp:Content>
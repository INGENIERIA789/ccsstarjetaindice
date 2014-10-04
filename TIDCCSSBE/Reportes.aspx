<%@ Page Title="Reportes" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Reportes.aspx.cs" Inherits="Reportes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
   
     <div class="jumbotron">
         <asp:GridView ID="GridView1" runat="server">
         </asp:GridView>
         <asp:Timer ID="Timer1" runat="server">
         </asp:Timer>
    </div>

</asp:Content>


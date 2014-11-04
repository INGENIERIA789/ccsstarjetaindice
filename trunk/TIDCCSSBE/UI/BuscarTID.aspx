<%@ Page Title="Buscar" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BuscarTID.aspx.cs" Inherits="UI_Paciente_BuscarTID" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
 
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
<h3>Busqueda de paciente.</h3>
  <div class="row">
      
      <div class="col-sm-2">
          <label class="control-label">Nombre</label>
          <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" AutoPostBack="True" Width="117px" ></asp:TextBox> 

      </div>
      <div class="col-sm-2">
          <label class="control-label">Primer Apellido</label>
         <asp:TextBox ID="txtPriApe" CssClass="form-control" runat="server" AutoPostBack="True" Width="112px" ></asp:TextBox> 

      </div>
      
      <div class="col-sm-2">
        <label class="control-label">Segundo Apellido</label>
         <asp:TextBox ID="txtSenApe" CssClass="form-control" runat="server" AutoPostBack="True" Width="104px" ></asp:TextBox> 
      </div>
           <div class="col-sm-2">
        <label class="control-label">Identificación</label>
         <asp:TextBox ID="txtCedulaPaciente" CssClass="form-control" runat="server" AutoPostBack="True" Width="104px" ></asp:TextBox> 
      </div>
           <div class="col-sm-2">
               <br />
               <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-primary btn-block" Text="Buscar" OnClick="Button1_Click" />
      </div>
      <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <EditRowStyle BackColor="#999999" />
          <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
          <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#E9E7E2" />
          <SortedAscendingHeaderStyle BackColor="#506C8C" />
          <SortedDescendingCellStyle BackColor="#FFFDF8" />
          <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
      </asp:GridView>
 <br />
    
          <br />
     
    </div>
</asp:Content>


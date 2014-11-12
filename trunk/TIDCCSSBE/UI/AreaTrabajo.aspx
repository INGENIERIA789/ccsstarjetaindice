<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AreaTrabajo.aspx.cs" Inherits="UI_Administrador_AreaTrabakj__" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Registro de área.</h3>
  <div class="row">
      <br />     
      <div class="col-sm-2">
          <label class="control-label">Número del área</label>
          <asp:TextBox ID="txtNumAre" CssClass="form-control" runat="server" required="required" AutoPostBack="True" Width="117px" OnTextChanged="txtNombre_TextChanged" Min="0" type="number" TextMode="Number"></asp:TextBox> 
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtNumAre" ForeColor="Red">Se requiere el numero del área.</asp:RequiredFieldValidator>
      </div>
      <div class="col-sm-2">
          <label class="control-label">Nombre del área</label>
         <asp:TextBox ID="txtNomAre" CssClass="form-control" runat="server" required="required" Width="300px" CausesValidation="True" ></asp:TextBox> 
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtNomAre" ForeColor="Red">Se requiere el nombre del área.</asp:RequiredFieldValidator>
          <br />
      <asp:Button ID="btnAgregarArea" runat="server" class="btn btn-lg btn-primary btn-block" Text="Registrar" OnClick="Button1_Click" />
      </div>
    <br />
    <br />
    <br />
      <br />
      <br />
      <br />
    </div>
</asp:Content>


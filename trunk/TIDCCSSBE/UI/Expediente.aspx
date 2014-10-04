<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Expediente.aspx.cs" Inherits="UI_Expediente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="text-danger"></p>
        <asp:Literal runat="server" ID="ErrorMessage" />
    
    <link href="../Content/bootstrap.css" rel="stylesheet" />
   
        <div class="form-horizontal">
            <h4>Registro de la Ubicación del Expediente</h4>
            <hr/>
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <div class="row">
        <div class="col-md-6">
             <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Cédula</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox9" CssClass="form-control" placeholder="Cédula del paciente" />
               </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Bloque</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" placeholder="Bloque del Expediente"/>
               </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Cubiculo</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" placeholder="Cubiculo del Expediente" />
               </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Estado</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control" placeholder="Estado del Expediente" />
               </div>
            </div>
        </div>
   
        <div class="col-md-6">
              <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Encargado</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox10" CssClass="form-control" placeholder="Encargado" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Creación</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control" placeholder="Fecha de la Creación"/>
               </div>
            </div>
             <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Observación</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox3"  CssClass="form-control" Rows="3" TextMode="MultiLine"  placeholder="Observaciones"/>
               </div>
            </div> 

        </div>
    </div>
         
           
    <div class="form-group">
        <div class="row">
            <div class="col-md-2">

            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="Button1" runat="server" Text="Registrarse" CssClass="btn btn-default" />
            </div>
            </div>
            <div class="col-md-2">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="Button3" runat="server" Text="Modificar" CssClass="btn btn-default" />
            </div>
            </div>
        </div>
        </div>
    </div>
</asp:Content>


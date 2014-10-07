<%@ Page Title="Expediente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ExpedienteEntrada.aspx.cs" Inherits="UI_Expediente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-danger"></p>
        <asp:Literal runat="server" ID="ErrorMessage" />
    
    <link href="../Content/bootstrap.css" rel="stylesheet" />
   
        <div class="form-horizontal">
            <br />
            <br />
            <br />
            <h4>Registro de Entrada del Expediente</h4>
            <hr/>
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <div class="row">
                <div class="col-md-2"></div>
        <div class="col-md-4">
             <div class="form-group">
                 <label class="control-label">Cedula</label>
                    <asp:TextBox runat="server" ID="txtCedulaPaciente" CssClass="form-control" placeholder="Cédula del paciente" />
            </div>
            <div class="form-group">
                <label class="control-label">Codigo Area</label>
                    <asp:TextBox runat="server" ID="txtCodAre" CssClass="form-control" placeholder="Codigo del área"/>
            </div>
            <div class="form-group">
                <label class="control-label">Codigo Doctor</label>
                    <asp:TextBox runat="server" ID="txtCodDoc" CssClass="form-control" placeholder="Codigo de Doctor" />
            </div>
            
        </div>
   
        <div class="col-md-6">
              <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Encargado</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtEncargado" CssClass="form-control" placeholder="Encargado" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Fecha</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtfecha" CssClass="form-control" placeholder="Fecha de Entrada"/>
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

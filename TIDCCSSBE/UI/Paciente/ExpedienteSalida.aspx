<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ExpedienteSalida.aspx.cs" Inherits="UI_RegistroSalida" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <p class="text-danger"></p>
        <asp:Literal runat="server" ID="ErrorMessage" />
    
    <link href="../Content/bootstrap.css" rel="stylesheet" />
   
        <div class="form-horizontal">
            <br />
            <br />
            <br />
            <h4>Registro Salida del Expediente</h4>
            <hr/>
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
         <div class="row">
                
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
   
        <div class="col-md-4">
              <div class="form-group">
                  <label class="control-label">Encarcado</label>              
                    <asp:TextBox runat="server" ID="txtEncargado" CssClass="form-control" placeholder="Encargado" />           
            </div>
            <div class="form-group">
                <label class="control-label">Fecha de la Salida</label>                 
                    <asp:TextBox runat="server" ID="txtfecha" CssClass="form-control" placeholder="Fecha de Entrada"/>
            </div>
             <div class="form-group">
                 <label class="control-label">Observación</label> 
                    <asp:TextBox runat="server" ID="txtObservacion"  CssClass="form-control" Rows="3" TextMode="MultiLine"  placeholder="Observaciones"/>
            </div> 

        </div>
    </div>
         
           <hr/>
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


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HojasEspecialidad.aspx.cs" Inherits="UI_Paciente_HojasEspecialidad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
             
        <asp:Literal runat="server" ID="ErrorMessage" />
    
    <link href="../Content/bootstrap.css" rel="stylesheet" />
   
        <div class="form-horizontal">
            <br />
            <br />
            <br />
            <h4>Registro de Hojas de Urgencias</h4>
            <hr/>
           
         <div class="row">
                
        <div class="col-md-4">
             <div class="form-group">
                 <label class="control-label">Cedula del Paciente</label>
                    <asp:TextBox runat="server" ID="txtCedulaPaciente" CssClass="form-control" placeholder="0-000-000" />
                
            </div>
            <div class="form-group">
                <label class="control-label">Primer Apellido</label>
                    <asp:TextBox runat="server" ID="txtCodAre" CssClass="form-control" placeholder="Barrios"/>
               
            </div>
            <div class="form-group">
                <label class="control-label">Segundo Apellido</label>
                    <asp:TextBox runat="server" ID="txtCodDoc" CssClass="form-control" placeholder="AAlgo" />
                
            </div>
              <div class="form-group">
                  <label class="control-label">Nombre del Paciente</label>              
                    <asp:TextBox runat="server" ID="txtEncargado" CssClass="form-control" placeholder="Patito" />           
            </div>
        </div>
   
        <div class="col-md-4">
            <div class="form-group">
                <label class="control-label">Fecha de Registro</label>                 
                    <asp:TextBox runat="server" ID="txtFecha" CssClass="form-control" placeholder="Fecha de Registro"/>
            </div>
            <div class="form-group">
                <label class="control-label">Especialidad</label>                 
                    <asp:TextBox runat="server" ID="txtNumeroAsegurado" CssClass="form-control" placeholder="uu"/>
            </div>
             <div class="form-group">
                 <label class="control-label">Observación</label> 
                    <asp:TextBox runat="server" ID="txtObservacion"  CssClass="form-control" Rows="3" TextMode="MultiLine"  placeholder="Observaciones"/>
            </div> 

        </div>
    </div>
         
           
            <div class="form-group">
                <div class="row">
                    <hr/>
                    <div class="col-md-2">
                        <asp:Button ID="Button1" runat="server" Text="Registrarse" CssClass="btn btn-default" />
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="Button3" runat="server" Text="Modificar" CssClass="btn btn-default" />
                    </div>
                </div>
            </div>
        </div>
</asp:Content>


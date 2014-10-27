<%@ Page Title="Especialidad" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HojasEspecialidad.aspx.cs" Inherits="UI_Paciente_HojasEspecialidad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
             
        <asp:Literal runat="server" ID="ErrorMessage" />
    
    <link href="../Content/bootstrap.css" rel="stylesheet" />
   
        <div class="form-horizontal">
            <br />
            <br />
            <br />
            <h4>Registro Hojas de Especialidad </h4>
            <hr/>
           
         <div class="row">
                
        <div class="col-md-4">
             <div class="form-group">
                 <label class="control-label">Identificación</label>
                    <asp:TextBox runat="server" ID="txtCedulaPaciente" CssClass="form-control" placeholder="0-000-000" OnTextChanged="txtCedulaPaciente_TextChanged" AutoPostBack="True" Width="1387px" />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCedulaPaciente" Text="Se requiere la identificación." ForeColor="Red"> </asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label">Primer Apellido</label>
                    <asp:TextBox runat="server" ID="txtPriAp" CssClass="form-control" placeholder="Barrios" Width="1387px"/>
               
            </div>
            <div class="form-group">
                <label class="control-label">Segundo Apellido</label>
                    <asp:TextBox runat="server" ID="txtSegApe" CssClass="form-control" placeholder="AAlgo" Width="1387px"/>
                
            </div>
              <div class="form-group">
                  <label class="control-label">Nombre del Paciente</label>              
                    <asp:TextBox runat="server" ID="txtNombPaci" CssClass="form-control" placeholder="Patito" Width="1387px"/>           
            </div>
        </div>
   
             <div class="col-md-4">
                 <div class="form-group">
                     <label class="control-label">Fecha de Registro</label>
                     <asp:TextBox runat="server" ID="txtFecha" CssClass="form-control" placeholder="Fecha de Registro" Enabled="False" Width="1387px"/>
                 </div>
                 <div class="form-group">
                     <label class="control-label">Especialidad</label>
                     <asp:TextBox runat="server" ID="txtEspecialidad" CssClass="form-control" placeholder="uu" Width="1387px"/>
                 </div>
                 <div class="form-group">
                     <label class="control-label">Observación</label>
                     <asp:TextBox runat="server" ID="txtObservacion" CssClass="form-control" Rows="3" TextMode="MultiLine" Width="1387px" placeholder="Observaciones" />
                 </div>

             </div>
             <div class="col-md-4">
                 <div class="form-group">
                     <label class="control-label">Bloque del expediente.</label>
                    <asp:TextBox runat="server" ID="txtBloqueExpediente"  CssClass="form-control" TextMode="SingleLine"  Width="1387px" placeholder="BLOQUE" Enabled="False" />
                 </div>
                 <div class="form-group">
                     <label class="control-label">Cubiculo del Expediente.</label>
                    <asp:TextBox runat="server" ID="txtCubiculoExpediente"  CssClass="form-control"  TextMode="SingleLine"  Width="1387px" placeholder="Cubiculo" Enabled="False" />
                 </div>
                  <div class="form-group">
                     <label class="control-label">Estado del Expediente.</label>
                    <asp:TextBox runat="server" ID="txtEstadoExpediente"  CssClass="form-control" TextMode="SingleLine" Width="1387px" placeholder="Estado" Enabled="False" />
                 </div>
             </div>
    </div>
                 
            <div class="form-group">
                <div class="row">
                    <hr/>
                    <div class="col-md-2">
                        <asp:Button ID="Button1" runat="server" Text="Registrarse" CssClass="btn btn-default" OnClick="Button1_Click" />
                    </div>                   
                </div>
            </div>
        </div>
</asp:Content>


<%@ Page Title="Urgencias" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HojasUrgencia.aspx.cs" Inherits="UI_HojasUrgencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
        
        <asp:Literal runat="server" ID="ErrorMessage" />
    
    <link href="../Content/bootstrap.css" rel="stylesheet" />
   
        <div class="form-horizontal">
            <br />
            <br />
            <br />
            <h4>Registro Hojas de Urgencias</h4>
            <hr/>
           
         <div class="row">
                
        <div class="col-md-4">
             <div class="form-group">
                 <label class="control-label">Identificación</label>
                    <asp:TextBox runat="server" ID="txtCedulaPaciente" CssClass="form-control" placeholder="0-000-000" AutoPostBack="True" OnTextChanged="txtCedulaPaciente_TextChanged" />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCedulaPaciente" Text="Se requiere la identificación." ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label">Primer Apellido</label>
                    <asp:TextBox runat="server" ID="txtApelli1" CssClass="form-control" placeholder="Primer Apellido"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtApelli1" Text="Se requiere el apellido." ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label">Segundo Apellido</label>
                    <asp:TextBox runat="server" ID="txtApelli2" CssClass="form-control" placeholder="Segundo Apellido" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtApelli2" Text="Se requiere el apellido." ForeColor="Red"></asp:RequiredFieldValidator>
                
            </div>
              <div class="form-group">
                  <label class="control-label">Nombre del Paciente</label>              
                    <asp:TextBox runat="server" ID="txtNombPac" CssClass="form-control" placeholder="Nombre" /> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtNombPac" Text="Se necesita el nombre." ForeColor="Red"></asp:RequiredFieldValidator>
                            
            </div>
        </div>
   
        <div class="col-md-4">
            <div class="form-group">
                <label class="control-label">Fecha de Registro</label>                 
                    <asp:TextBox runat="server" ID="txtFecha" CssClass="form-control" placeholder="Fecha de Registro" Enabled="False"/>
            </div>
            <div class="form-group">
                <label class="control-label">Numero de Asegurado</label>                 
                    <asp:TextBox runat="server" ID="txtNumeroAsegurado" CssClass="form-control" placeholder="0-0000-00000000"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtNumeroAsegurado" Text="Se necesita el numero de asegurado." ForeColor="Red"></asp:RequiredFieldValidator>
                
            </div>
             <div class="form-group">
                 <label class="control-label">Observación</label> 
                    <asp:TextBox runat="server" ID="txtObservacion"  CssClass="form-control" Rows="3" TextMode="MultiLine"  placeholder="Observaciones"/>
            </div> 
        </div>
             <div class="col-md-4">
                 <div class="form-group">
                     <label class="control-label">Bloque del expediente.</label>
                    <asp:TextBox runat="server" ID="txtBloqueExpediente"  CssClass="form-control" TextMode="SingleLine"  placeholder="BLOQUE" Enabled="False" />
                 </div>
                 <div class="form-group">
                     <label class="control-label">Cubiculo del Expediente.</label>
                    <asp:TextBox runat="server" ID="txtCubiculoExpediente"  CssClass="form-control"  TextMode="SingleLine"  placeholder="Cubiculo" Enabled="False" />
                 </div>
                  <div class="form-group">
                     <label class="control-label">Estado del Expediente.</label>
                    <asp:TextBox runat="server" ID="txtEstadoExpediente"  CssClass="form-control" TextMode="SingleLine"  placeholder="Estado" Enabled="False" />
                 </div>
             </div>
    </div>
         
           
            <div class="form-group">
                <div class="row">
                    <hr/>
                    <div class="col-md-2">
                        <asp:Button ID="BtnResgistrar" runat="server" Text="Registrarse" CssClass="btn btn-default" OnClick="Button1_Click" />
                    </div>
                
                </div>
            </div>
        </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RegistrarDoctor.aspx.cs" Inherits="UI_registrarDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

      <link href="../Content/bootstrap.css" rel="stylesheet" />
   
       
            <br />
            <br />
            <br />
            <h4>Registro de Médicos en el Sistema </h4>
            <hr/>
           
         <div class="row">
                
        <div class="col-md-4">
             <div class="form-group">
                 <label class="control-label">Código Médico</label>
                    <asp:TextBox runat="server" ID="txtCodigoMedico" CssClass="form-control" placeholder="0000000"  Width="1387px" AutoPostBack="True" OnTextChanged="txtCodigoMedico_TextChanged" />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCodigoMedico" Text="Se requiere el código del médico." ForeColor="Red"> </asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label">Nombre</label>
                    <asp:TextBox runat="server" ID="txtNombreMedico" CssClass="form-control" placeholder="Carlos" Width="1387px"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCodigoMedico" Text="Se requiere el nombre del médico." ForeColor="Red"> </asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label">Primer Apellido</label>
                    <asp:TextBox runat="server" ID="txtApellido1" CssClass="form-control" placeholder="Herrera" Width="1387px"/>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCodigoMedico" Text="Se requiere el apellido del médico." ForeColor="Red"> </asp:RequiredFieldValidator>
            </div>
              <div class="form-group">
                  <label class="control-label">Segundo Apellido</label>              
                    <asp:TextBox runat="server" ID="txtApellido2" CssClass="form-control" placeholder="Corrales" Width="1387px"/> 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCodigoMedico" Text="Se requiere el segundo apellido del médico." ForeColor="Red"> </asp:RequiredFieldValidator>          
            </div>
        </div>
            
   
             <div class="col-md-4">
                 <div class="form-group">
                     <label class="control-label">Especialidad</label>
                     <asp:TextBox runat="server" ID="txtEspecialidadMedico" CssClass="form-control" placeholder="Ginecología" Width="1387px"/>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCodigoMedico" Text="Se requiere la especialidad del médico." ForeColor="Red"> </asp:RequiredFieldValidator>
                 </div>
                 <div class="form-group">
                     <label class="control-label">Área de Trabajo</label>
                     <asp:TextBox runat="server" ID="txtArea" CssClass="form-control" placeholder="Ginecología" Width="1387px"/>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCodigoMedico" Text="Se requiere la especialidad del médico." ForeColor="Red"> </asp:RequiredFieldValidator>
                 </div>
                 <div class="form-group">
                            <label class="control-label">Estado</label>
                            <div class="input-group">
                                <select class="form-control" runat="server" name="validate-select" id="txtEstadoExpediente" required>
                                    <option value="">--Seleccione--</option>
                                    <option value="Activo">Activo</option>
                                    <option value="Suspendido">Suspendido</option>
                                </select>
                            </div>
                        </div>
                 <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-primary btn-block" Text="Agregar" OnClientClick="return confirm('¿Esta seguro que desea agregarlo?');" OnClick="Button1_Click" EnableTheming="False" />
               
             </div>
             </div>
</asp:Content>


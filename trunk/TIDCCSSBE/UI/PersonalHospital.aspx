<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PersonalHospital.aspx.cs" Inherits="UI_PersonalHospital" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
            
    <br />
    <br />
    <h3>Registro de Usuarios.</h3>
    <br />
    <div class="row">         
        <div class="col-md-4">
             <div class="form-group">
                 <label class="control-label">Identificación</label>
                    <asp:TextBox runat="server" ID="txtCedulaFuncionario" required="required" CssClass="form-control" placeholder="Identificación del Usuario" Width="1387px" OnTextChanged="txtCedulaFuncionario_TextChanged" AutoPostBack="True"/>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCedulaFuncionario" Text="Se requiere la identificación." ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label">Primer Apellido</label>
                    <asp:TextBox runat="server" ID="txtApelli1" CssClass="form-control" required="required" placeholder="Primer Apellido del Usuario" Width="1387px"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtApelli1" Text="Se requiere el apellido." ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label">Segundo Apellido</label>
                    <asp:TextBox runat="server" ID="txtApelli2" CssClass="form-control" required="required" placeholder="Segundo Apellido del Usuario" Width="1387px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtApelli2" Text="Se requiere el apellido." ForeColor="Red"></asp:RequiredFieldValidator>
                
            </div>
              <div class="form-group">
                  <label class="control-label">Nombre del Funcionario</label>              
                    <asp:TextBox runat="server" ID="txtNombPac" CssClass="form-control" required="required" placeholder="Nombre del Usuario" Width="1387px" /> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtNombPac" Text="Se necesita el nombre." ForeColor="Red"></asp:RequiredFieldValidator>                           
            </div>
            <div class="form-group">
                  <label class="control-label">Teléfono</label>              

                    <asp:TextBox runat="server" ID="txtTelefono" CssClass="form-control" placeholder="Telefono del Usuario" Width="1387px" /> 

                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtTelefono" Text="Se necesita el nombre." ForeColor="Red"></asp:RequiredFieldValidator>                           
            </div>
            <div class="form-group">
                <label class="control-label">Carnet de CCSS</label>                 

                    <asp:TextBox runat="server" ID="txtCarnet" CssClass="form-control" placeholder="Carnet de Usuario"  Width="1387px"/>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCarnet" Text="Se necesita el nombre." ForeColor="Red"></asp:RequiredFieldValidator>                                     
            </div>
        </div>
   
        <div class="col-md-4">
             <div class="form-group">
                 <label class="control-label">Dirección completa</label> 
                    <asp:TextBox runat="server" ID="txtDirec"  CssClass="form-control" required="required" Rows="3" TextMode="MultiLine" Width="1387px"  placeholder="Dirección del Usuario" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDirec" Text="Se necesita la dirección." ForeColor="Red"></asp:RequiredFieldValidator>
            
             </div> 
            <div class="form-group">
                <label class="control-label">Fecha de Nacimiento</label>                 
                    <asp:TextBox runat="server" ID="txtFecNac" CssClass="form-control" required="required" type="date" Width="1387px"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtFecNac" Text="Se necesita el la fecha de nacimiento." ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label">Área de trabajo</label>                 
                    <asp:TextBox runat="server" ID="txtArea" CssClass="form-control" required="required" placeholder="Área de trabajo" Width="1387px"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtArea" Text="Se necesita el area del usuario." ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label">Tipo de Usuario</label>
                <select class="form-control" runat="server" name="validate-select" width="1387px" id="txtTipUsa" required="required" controltovalidate="txtEstCilPacient">
                    <option value="">--Seleccione--</option>
                    <option value="Administrador">Administrador</option>
                    <option value="Usuario">Usuario</option>                   
                </select>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Tipo de usuario faltante." Text="Se necesita escoger un tipo de usuario." ForeColor="Red" ControlToValidate="txtTipUsa"></asp:RequiredFieldValidator>
            </div>


        </div>
          <div class="col-md-4">
              <H4>Seguridad de usuarios.</H4>
            <div class="form-group">
                <label class="control-label">Contraseña</label>                 
                    <asp:TextBox runat="server" ID="txtPass" CssClass="form-control" required="required" placeholder="Contraseña" Width="1387px"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtArea" Text="Se necesita el area del usuario." ForeColor="Red"></asp:RequiredFieldValidator>
            </div><div class="form-group">
                <label class="control-label">Confirmar Contraseña</label>                 
                    <asp:TextBox runat="server" ID="txtPass2" CssClass="form-control" placeholder="Contraseña" Width="1387px" required="required"/>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="txtPass" ControlToValidate="txtPass2" ForeColor="Red">Las contraseña no coinciden.</asp:CompareValidator>
                 </div>
                       <asp:Button ID="Button1" CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="Registrar" OnClick="Button1_Click"  />
    
          </div>
          </div>
</asp:Content>


﻿<%@ Page Title="Paciente" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TIDPACIENTE.aspx.cs" Inherits="UI_Paciente_TIDPACIENTE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link href="../../Scripts/Contenido-TID/CSSTID.css" rel="stylesheet" />
    <script src="../../Scripts/Contenido-TID/JSTID.js"></script>
  
    <h4>Tarjeta Indice del Paciente.</h4>
    <div class="container"></div>
    <div class="stepwizard">
        <div class="stepwizard-row setup-panel">
            <div class="stepwizard-step">
                <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                <p>Datos del Paciente</p>
            </div>
            <div class="stepwizard-step">
                <a href="#step-2" type="button" class="btn btn-default btn-circle">2</a>
                <p>Detalles del Paciente</p>
            </div>
            <div class="stepwizard-step">
                <a href="#step-3" type="button" class="btn btn-default btn-circle">3</a>
                <p>Expediente del Paciente</p>
            </div>
        </div>
    </div>
    <form role="form">
        <div class="row setup-content" id="step-1">
            <div class="col-xs-12">
                <div class="col-md-12">
                    <h3>Datos del Paciente</h3>
                    <!-- Aqui va todos los datos del paciente los basicos--->
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Identificación</label>
                                <asp:TextBox ID="txtCedulaPaciente" runat="server" CssClass="form-control" required="required" OnTextChanged="txtCedulaPaciente_TextChanged" AutoPostBack="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" Text="Se necesita ingresar la identificación." BackColor="White" ControlToValidate="txtCedulaPaciente" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre</label>
                                <asp:TextBox ID="txtNombrePaciente" runat="server" CssClass="form-control" required="required" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" Text="Se necesita ingresar el nombre." ControlToValidate="txtNombrePaciente" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Primer Apellido</label>
                                <asp:TextBox ID="txtApellido1Paciente" runat="server" class="form-control"  required="required"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtApellido1Paciente" Text="Se necesita el primer apellido." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Segundo Apellido</label>
                            <asp:TextBox ID="txtApellido2Paciente" runat="server" class="form-control" required="required"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtApellido2Paciente" Text="Se necesita el segundo apellido." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Genero</label>
                                <select class="form-control" runat="server" name="validate-select" id="txtGenPacient" required>
                                        <option value="">--Seleccione--</option>
                                        <option value="Masculino">Masculino</option>
                                        <option value="Femenino">Femenino</option>
                                        <option value="Otro">Otro</option>
                                    </select>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtGenPacient" Text="Se necesita el genero." ForeColor="Red"></asp:RequiredFieldValidator>
                             </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Estado Civil</label>                              
                                    <select class="form-control" runat="server" name="validate-select" id="txtEstCilPacient" required="required" controltovalidate="txtEstCilPacient">
                                        <option value="">--Seleccione--</option>
                                        <option value="Soltero">Soltero</option>
                                        <option value="Casado">Casado</option>
                                        <option value="Union Libre">Union Libre</option>
                                    </select>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" Text="Se necesita escoger el estado." ForeColor="Red" ControlToValidate="txtEstCilPacient"></asp:RequiredFieldValidator>
                                </div>
                            
                            <div class="form-group">
                                <label for="date" class="control-label">Fecha de Nacimiento</label>
                                <asp:TextBox  ID="txtFechaNaci"  runat="server" class="form-control" required="required"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" Text="Se necesita la fecha de nacimiento." ControlToValidate="txtFechaNaci" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="date" class="control-label">Observación</label>    
                                <asp:TextBox runat="server" ID="txtObserPaciente" CssClass="form-control" Rows="3"  TextMode="MultiLine" placeholder="Observaciones" />
                                  
                            </div>
                            <div class="form-group">     
                                 <label for="date" class="control-label">Estado de la tarjeta indice</label>                    
                               
                                    <select class="form-control" runat="server" name="validate-select" id="txttidestado" required="required" >
                                        <option value="">--Seleccione--</option>
                                        <option value="Activa">Activa</option>
                                        <option value="Pasiva">Pasiva</option>
                                    </select>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txttidestado" Text=" Se necesita el estado de la tarjeta índice" ForeColor="Red"></asp:RequiredFieldValidator>
                                 
                            </div>
                        </div>
         
                    </div> 

                    <!--  Aqui terminan los datos del pacient e-->
                    <asp:Button runat="server" ID="Button2" class="btn btn-primary nextBtn btn-lg pull-right" Text="Siguiente"/>
                </div>
           </div>
            </div>
        <div class="row setup-content" id="step-2">
            <div class="col-xs-12">
                <div class="col-md-12">
                    <h3>Detalles del Paciente</h3>
                    <!-- Detalles del paciente -->
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Nombre del Padre</label>
                                <asp:TextBox ID="txtNomPadre" runat="server" class="form-control" required="required"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" Text="Se necesita el nombre del padre." ControlToValidate="txtNomPadre" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre de la Madre</label>
                                <asp:TextBox ID="txtNombreMadre" runat="server" class="form-control" required="required"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Numero Patronal </label>
                                <asp:TextBox ID="txtNumPatrono" runat="server" class="form-control" required="required"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre del Patrono</label>
                                <asp:TextBox ID="txtxNombrePatrono" runat="server" class="form-control" required="required"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Domicilio</label>
                                <asp:TextBox runat="server" ID="txtDomicilio" CssClass="form-control" Rows="3" required="required" TextMode="MultiLine" placeholder="Dirección Exacta" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Observación</label>
                                <asp:TextBox runat="server" ID="txtObservacionDetalle" CssClass="form-control" Rows="3" TextMode="MultiLine" placeholder="Observación" />

                            </div>
                        </div>
                    </div>
                    <!-- Termina los detalles del paciente -->
                    <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Siguiente</button>
                </div>
            </div>
        </div>
        <div class="row setup-content" id="step-3">
            <div class="col-xs-12">
                <div class="col-md-12">
                    <h3>Expediente del Paciente</h3>
                    <div class="row">
                        <!-- Expediente Clinico -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Bloque</label>
                                <asp:TextBox ID="txtBloqueExpediente" runat="server" class="form-control" required="required"></asp:TextBox> 
                            </div>
                             <div class="form-group">
                                <label class="control-label">Cubiculo de Bloque</label>
                                 <asp:TextBox ID="txtNumBlo" runat="server" class="form-control" required="required"></asp:TextBox>                                
                            </div>
                             <div class="form-group">
                                <label class="control-label">Fecha de la Creación</label>
                                 <asp:TextBox ID="txtFechaCreacionExpediente" runat="server" class="form-control" required="required"></asp:TextBox>       
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="date" class="control-label">Observación</label>    
                                <asp:TextBox runat="server" ID="txtObserExpe" CssClass="form-control" Rows="3" TextMode="MultiLine" placeholder="Observaciones" />  
                            </div>
                            <div class="form-group">                        
                                <div class="input-group">
                                    <label for="date" class="control-label">Estado del Expediente</label>
                                    <select class="form-control" runat="server" name="validate-select" id="txtEstadoExpediente" required="required">
                                        <option value="">--Seleccione--</option>
                                        <option value="Archivado">Archivado</option>
                                        <option value="Fuera">Fuera</option>
                                    </select>
                                 </div>
                            </div>                           
                        </div>
                    </div>
<hr/>
                    <div class="row">
                        <div class="col-md-6">
                        </div>
                        <div class="col-md-3">
                            <asp:Button runat="server" ID="btnImprimir" class="btn btn-success btn-lg pull-right" Text="Imprimir" OnClick="btnImprimir_Click" CausesValidation="False" />
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="Button1" class="btn btn-success btn-lg pull-left" runat="server" Text="Agregar" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>


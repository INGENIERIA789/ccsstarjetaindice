<%@ Page Title="Paciente" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TIDPACIENTE.aspx.cs" Inherits="UI_Paciente_TIDPACIENTE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link href="../../Scripts/Contenido-TID/CSSTID.css" rel="stylesheet" />
    <script src="../../Scripts/Contenido-TID/JSTID.js"></script>
  
    <h4>Tarjeta Índice del Paciente.</h4>
    <div class="container"></div>
    <div class="stepwizard">
        <div class="stepwizard-row setup-panel">
            <div class="stepwizard-step">
                <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                <p>Datos del Paciente</p>
            </div>
            <div class="stepwizard-step">
                <a href="#step-2" type="button" class="btn btn-default btn-circle" >2</a>
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
                                <asp:TextBox ID="txtCedulaPaciente" runat="server" CssClass="form-control" Width="1387px" placeholder="Cédula de Paciente"  required="required" OnTextChanged="txtCedulaPaciente_TextChanged" AutoPostBack="True" Wrap="False"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Falta Identificación" Text="Se necesita ingresar la identificación." BackColor="White" ControlToValidate="txtCedulaPaciente" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre</label>
                                <asp:TextBox ID="txtNombrePaciente" runat="server" CssClass="form-control" Width="1387px" placeholder="Nombre de Paciente" required="required" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Nombre del Paciente Faltante." Text="Se necesita ingresar el nombre." ControlToValidate="txtNombrePaciente" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Primer Apellido</label>
                                <asp:TextBox ID="txtApellido1Paciente" runat="server" CssClass="form-control"  Width="1387px" placeholder="Primer Apellido del Paciente" required="required"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Primer Apellido Faltante." ControlToValidate="txtApellido1Paciente" Text="Se necesita el primer apellido." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Segundo Apellido</label>
                            <asp:TextBox ID="txtApellido2Paciente" runat="server" CssClass="form-control" Width="1387px" placeholder="Segundo Apellido del Paciente" required="required"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Segundo Apellido Faltante." ControlToValidate="txtApellido2Paciente" Text="Se necesita el segundo apellido." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Género</label>
                                <select class="form-control" runat="server" name="validate-select" Width="1387px" id="txtGenPacient" required  enableviewstate="True" visible="True">
                                        <option value="">--Seleccione--</option>
                                        <option value="Masculino">Masculino</option>
                                        <option value="Femenino">Femenino</option>
                                        
                                    </select>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Genero Faltante" ControlToValidate="txtGenPacient" Text="Se necesita el genero." ForeColor="Red"></asp:RequiredFieldValidator>
                             </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Estado Civil</label>                              
                                    <select class="form-control" runat="server" name="validate-select" Width="1387px" id="txtEstCilPacient" required="required" controltovalidate="txtEstCilPacient">
                                        <option value="">--Seleccione--</option>
                                        <option value="Soltero">Soltero</option>
                                        <option value="Casado">Casado</option>
                                        <option value="Union Libre">Union Libre</option>
                                    </select>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Estado Civil Faltante." Text="Se necesita escoger el estado." ForeColor="Red" ControlToValidate="txtEstCilPacient"></asp:RequiredFieldValidator>
                                </div>
                            
                            <div class="form-group">
                                <label for="date" class="control-label">Fecha de Nacimiento</label>
                                <asp:TextBox  ID="txtFechaNaci"  runat="server" CssClass="form-control" Width="1387px" required="required" TextMode="Date" ValidateRequestMode="Enabled"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Fecha de Nacimiento Faltante" Text="Se necesita la fecha de nacimiento." ControlToValidate="txtFechaNaci" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="date" class="control-label">Observación</label>    
                                <asp:TextBox runat="server" ID="txtObserPaciente" CssClass="form-control" Width="1387px"  Rows="3"  TextMode="MultiLine" placeholder="Observaciones" />
                                  
                            </div>
                            <div class="form-group">     
                                 <label for="date" class="control-label">Estado de la tarjeta indice</label>                    
                               
                                    <select class="form-control" runat="server" name="validate-select" Width="1387px" id="txttidestado" required="required" enableviewstate="True" >
                                        <option value="">--Seleccione--</option>
                                        <option value="Activa">Activa</option>
                                        <option value="Pasiva">Pasiva</option>
                                    </select>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Estado del la TID Faltante." ControlToValidate="txttidestado" Text="Se necesita el genero." ForeColor="Red"></asp:RequiredFieldValidator>                                                         
                            </div>
                        </div>
         
                    </div> 

                    <!--  Aqui terminan los datos del pacient e-->                 
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
                                <asp:TextBox ID="txtNomPadre" runat="server" CssClass="form-control" Width="1387px" placeholder="Nombre Completo del Padre" required="required"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Nombre del Padre Faltante." Text="Se necesita el nombre del padre." ControlToValidate="txtNomPadre" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre de la Madre</label>
                                <asp:TextBox ID="txtNombreMadre" runat="server" CssClass="form-control" Width="1387px" placeholder="Nombre Completo de la Madre" required="required"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFielValidator11" runat="server" ErrorMessage="Nombre de la Madre Faltante." Text="Se necesita el nombre de la madre." ControlToValidate="txtNombreMadre" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Numero Patronal 
                                </label>
                                <asp:TextBox ID="txtNumPatrono" runat="server" CssClass="form-control" Width="1387px" placeholder="00000" required="required"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Numero del Patrono Faltante." Text="Se requiere el numero Patronal." ControlToValidate="txtNumPatrono" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre del Patrono</label>
                                <asp:TextBox ID="txtxNombrePatrono" runat="server" CssClass="form-control" Width="1387px" placeholder="Nombre Completo del Patrono" required="required"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Nombre del Patrono Faltante." Text="Se el nombre del patrono." ControlToValidate="txtxNombrePatrono" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Domicilio</label>
                                <asp:TextBox runat="server" ID="txtDomicilio" CssClass="form-control" Width="1387px" Rows="3" required="required" TextMode="MultiLine" placeholder="Dirección Exacta" />
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Domicilio Faltante." Text="Se requiere el domicio del paciente." ControlToValidate="txtDomicilio" ForeColor="Red"></asp:RequiredFieldValidator>
                                  </div>
                            <div class="form-group">
                                <label class="control-label">Observación</label>
                                <asp:TextBox runat="server" ID="txtObservacionDetalle" CssClass="form-control" Width="1387px" Rows="3" TextMode="MultiLine" placeholder="Observación" />

                            </div>
                        </div>
                    </div>
                    <!-- Termina los detalles del paciente -->
                </div>
            </div>
        </div>
        <div class="row setup-content" id="step-3">
            <div class="col-xs-12">
                <div class="col-md-12">
                    <h3>Expediente del Paciente</h3>
                    <div class="row">
                        <!-- Expediente Clinico -->
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Bloque</label>
                                <asp:TextBox ID="txtBloqueExpediente" runat="server" CssClass="form-control" Width="1387px" required="required"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Bloque Faltante." ControlToValidate="txtBloqueExpediente" ForeColor="Red">Se necesita el bloque del expediente</asp:RequiredFieldValidator>
                                 </div>
                             <div class="form-group">
                                <label class="control-label">Cubiculo de Bloque</label>
                                 <asp:TextBox ID="txtNumBlo" runat="server" CssClass="form-control" Width="1387px" required="required"></asp:TextBox> 
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Cubiculo Faltante." ControlToValidate="txtNumBlo" ForeColor="Red">Se requiere el numero del bloque.</asp:RequiredFieldValidator>             
                            </div>
                             <div class="form-group">
                                <label class="control-label">Fecha de la Creación</label>
                                 <asp:TextBox ID="txtFechaCreacionExpediente" runat="server" Width="1387px" CssClass="form-control" required="required" Enabled="False"></asp:TextBox>       
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="date" class="control-label">Observación</label>    
                                <asp:TextBox runat="server" ID="txtObserExpe" CssClass="form-control" Rows="3" Width="1387px" TextMode="MultiLine" placeholder="Observaciones" />  
                            </div>
                            <div class="form-group">                        
                                <div class="input-group">
                                    <label for="date" class="control-label">Estado del Expediente</label>
                                    <select class="form-control" runat="server" name="validate-select" id="txtEstadoExpediente" required="required" enableviewstate="True">
                                        <option value="">--Seleccione--</option>
                                        <option value="Archivado">Archivado</option>
                                        <option value="Fuera">Fuera</option>
                                    </select>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Estado del Expediente Faltante." ControlToValidate="txttidestado" ForeColor="Red"></asp:RequiredFieldValidator>                                                                     </div>
                            </div>                           
                        </div>
                        <div class="col-md-4">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

                        </div>
                    </div>
<hr/>
                    <div class="row">
                        <div class="col-md-6">
                        </div>
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="Button1" CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="Registrar" OnClientClick="return confirm('¿Esta seguro que desea agregarlo?');" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>


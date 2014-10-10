<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TIDPACIENTE.aspx.cs" Inherits="UI_Paciente_TIDPACIENTE" %>

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
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Cedula</label>
                                <asp:TextBox ID="txtCedulaPaciente" runat="server" CssClass="form-control" required="required" OnTextChanged="txtCedulaPaciente_TextChanged" AutoPostBack="True"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre</label>
                                <asp:TextBox ID="txtNombrePaciente" runat="server" CssClass="form-control" required="required" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Primer Apellido</label>
                                <asp:TextBox ID="txtApellido1Paciente" runat="server" class="form-control"  required="required"></asp:TextBox>
                                </div>
                            <div class="form-group">
                                <label class="control-label">Segundo Apellido</label>
                            <asp:TextBox ID="txtApellido2Paciente" runat="server" class="form-control" required="required"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Genero</label>
                                <asp:TextBox ID="txtGenPaciente" runat="server" class="form-control" required="required"></asp:TextBox>
                             </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Estado Civil</label>
                                <asp:TextBox ID="txtEstCilPaciente" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="date" class="control-label">Fecha de Nacimiento</label>
                                <asp:TextBox ID="txtFechaNaci" runat="server" class="form-control" required="required"></asp:TextBox>                                
                            </div>
                            <div class="form-group">
                                <label for="date" class="control-label">Observación</label>    
                                <asp:TextBox runat="server" ID="txtObserPaciente" CssClass="form-control" Rows="3"  TextMode="MultiLine"  required="required" placeholder="Observaciones" />  
                            </div>
                            <div class="form-group">                        
                                <div class="input-group">
                                    <select class="form-control" runat="server" name="validate-select" id="txttidestado" required>
                                        <option value="">--Seleccione--</option>
                                        <option value="item_1">Activa</option>
                                        <option value="item_2">Pasiva</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-12 less-pad-left">
                            <div class="contact-input-form box-wrapper">
                                <div class="single-sidebar">
                                    <h4 class="sidebar-title"><span>Ventajas de la TID</span></h4>
                                    <div class="alert alert-warning" role="alert">
                                        <p>La tarjeta índice represanta la existencia de un expediente medigo.</p>
                                        <p>Asimismo, podrá registrar y buscar la tarjeta índice de cada paciente para saber la información de este.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 

                    <!--  Aqui terminan los datos del pacient e-->
                    <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Siguiente</button>
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
                                 <asp:TextBox runat="server" ID="txtDomicilio"  required="required" CssClass="form-control" Rows="3" TextMode="MultiLine"  placeholder="Dirección Exacta"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Observación</label> 
                                <asp:TextBox runat="server" ID="txtObservacionDetalle"  required="required" CssClass="form-control" Rows="3" TextMode="MultiLine"  placeholder="Dirección Exacta"/>
                                                             
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
                                    <select class="form-control" runat="server" name="validate-select" id="txtEstadoExpediente" required>
                                        <option value="">--Seleccione--</option>
                                        <option value="item_1">Archivado</option>
                                        <option value="item_2">Fuera</option>
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
                    <button class="btn btn-success btn-lg pull-right" type="submit">Imprimir</button>

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


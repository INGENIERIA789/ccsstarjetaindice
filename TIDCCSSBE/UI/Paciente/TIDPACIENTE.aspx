<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TIDPACIENTE.aspx.cs" Inherits="UI_Paciente_TIDPACIENTE" %>

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
            <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
            <p>Detalles del Paciente</p>
        </div>
        <div class="stepwizard-step">
            <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
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
                                <label class="control-label">Cedula</label>
                                <input runat="server" maxlength="100" id="txtcedula" type="text" required="required" class="form-control" placeholder="0-0000-0000" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre</label>
                                <input runat="server" id="txtNombre" type="text" required="required" class="form-control" placeholder="Nombre" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Primer Apellido</label>
                                <input runat="server" id="txtApellido1" type="text" required="required" class="form-control" placeholder="Apellido" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Segundo Apellido</label>
                                <input runat="server" id="txtApellido2" type="text" required="required" class="form-control" placeholder="Apellido" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Genero</label>
                                <input runat="server" id="txtGenero" type="text" required="required" class="form-control" placeholder="Genero" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Estado Civil</label>
                                <input runat="server" id="txtEstadoCivil" type="text" required="required" class="form-control" placeholder="Estado Civil" />
                            </div>
                            <div class="form-group">
                                <label for="date" class="control-label">Fecha de Nacimiento</label>
                                <input runat="server" type="date" class="form-control" id="date" name="date">
                            </div>
                        </div>
                    </div>

                    <!--  Aqui terminan los datos del paciente-->
                    <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Siguiente</button>
                </div>
            </div>
        </div>
        <div class="row setup-content" id="step-2">
            <div class="col-xs-12">
                <div class="col-md-12">
                    <h3>Detalles del Paciente</h3>
                    <div class="form-group">
                        <label class="control-label">Company Name</label>
                        <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Name" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Company Address</label>
                        <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Company Address" />
                    </div>
                    <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Siguiente</button>
                </div>
            </div>
        </div>
        <div class="row setup-content" id="step-3">
            <div class="col-xs-12">
                <div class="col-md-12">
                    <h3>Expediente del Paciente</h3>
                    <button class="btn btn-success btn-lg pull-right" type="submit">Finish!</button>
                </div>
            </div>
        </div>
    </form>
</asp:Content>


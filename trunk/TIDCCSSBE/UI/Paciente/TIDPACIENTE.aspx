<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TIDPACIENTE.aspx.cs" Inherits="UI_Paciente_TIDPACIENTE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link href="../../Scripts/Contenido-TID/CSSTID.css" rel="stylesheet" />
    <script src="../../Scripts/Contenido-TID/JSTID.js"></script>
    <h4>Tarjeta Indice del Paciente.</h4>
    <div class="container"></div>
<div class="stepwizard">
    <div class="stepwizard-row setup-panel">
        <div class="stepwizard-step">
            <a href="#step-1" type="button" class="btn btn-primary btn-circle"disabled="disabled">1</a>
            <p>Datos del Paciente</p>
        </div>
        <div class="stepwizard-step">
            <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
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
                                <label class="control-label">Cedula</label>
                                <input runat="server" maxlength="100" id="txtcedulaPaciente" type="text" required="required" class="form-control" placeholder="0-0000-0000" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre</label>
                                <input runat="server" id="txtNombrePacinete" type="text" required="required" class="form-control" placeholder="Nombre" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Primer Apellido</label>
                                <input runat="server" id="txtApellido1Paciente" type="text" required="required" class="form-control" placeholder="Apellido" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Segundo Apellido</label>
                                <input runat="server" id="txtApellido2Paciente" type="text" required="required" class="form-control" placeholder="Apellido" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Genero</label>
                                <input runat="server" id="txtGenPaciente" type="text" required="required" class="form-control" placeholder="Genero" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Estado Civil</label>
                                <input runat="server" id="txtEstCilPaciente" type="text" required="required" class="form-control" placeholder="Estado Civil" />
                            </div>
                            <div class="form-group">
                                <label for="date" class="control-label">Fecha de Nacimiento</label>
                                <input runat="server" type="date" class="form-control" id="txtFechaNaci" name="date">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Estado de la Tarjeta Indice</label>
                                <div class="input-group">
                                    <select class="form-control" name="validate-select" id="txttidestado" required>
                                        <option value="">Estado</option>
                                        <option value="item_1">Activa</option>
                                        <option value="item_2">Pasiva</option>
                                    </select>
                                 </div>
                            </div>
                            <div class="form-group">
                                <label for="date" class="control-label">Observación</label>    
                                <asp:TextBox runat="server" ID="txtObserPaciente" CssClass="form-control" Rows="3" TextMode="MultiLine" placeholder="Observaciones" />  
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
                    <!-- Detalles del paciente -->
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Nombre del Padre</label>
                                <input runat="server" maxlength="100" id="txtNomPadre" type="text" required="required" class="form-control" placeholder="Nombre del Padre" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre de la Madre</label>
                                <input runat="server" id="txtNombreMadre" type="text" required="required" class="form-control" placeholder="Genero" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Numero Patronal </label>
                                <input runat="server" id="txtNumPatrono" type="text" required="required" class="form-control" placeholder="00000" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre del Patrono</label>
                                <input runat="server" id="txtxNombrePatrono" type="text" required="required" class="form-control" placeholder="0000" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Domicilio</label>
                                 <asp:TextBox runat="server" ID="txtDomicilio"  CssClass="form-control" Rows="3" TextMode="MultiLine"  placeholder="Dirección Exacta"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Observación</label>  
                                <asp:TextBox runat="server" ID="txtObserVacion" CssClass="form-control" Rows="3" TextMode="MultiLine" placeholder="Observaciones" />  
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
                                <input runat="server" maxlength="100" id="txtBloqueExpediente" type="text" required="required" class="form-control" placeholder="ABCD" />
                            </div>
                             <div class="form-group">
                                <label class="control-label">Cubiculo de Bloque</label>
                                <input runat="server" maxlength="100" id="txtNumBlo" type="text" required="required" class="form-control" placeholder="00" />
                            </div>
                             <div class="form-group">
                                <label class="control-label">Fecha de la Creación</label>
                                <input runat="server" maxlength="100" id="txtFechaCreaciónExpediente" type="text" required="required" class="form-control" placeholder="00/00/0000" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Estado del Expediente</label>
                                <div class="input-group">
                                    <select class="form-control" name="validate-select" id="txtValida" required>
                                        <option value="">Estado</option>
                                        <option value="item_1">Archivado</option>
                                        <option value="item_2">Fuera</option>
                                    </select>
                                 </div>
                            </div>                           
                        </div>
                    </div>
                    
                    <button class="btn btn-success btn-lg pull-center" type="submit">Imprimir</button>
                    <button class="btn btn-success btn-lg pull-right" type="submit">Guardar</button>
                </div>
            </div>
        </div>
    </form>
</asp:Content>


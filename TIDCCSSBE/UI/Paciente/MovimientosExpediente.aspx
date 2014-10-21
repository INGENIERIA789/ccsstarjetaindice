<%@ Page Title="Expediente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="MovimientosExpediente.aspx.cs" Inherits="UI_Expediente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../Scripts/Contenido-TID/CSSTID.css" rel="stylesheet" />
    <script src="../../Scripts/Contenido-TID/JSTID.js"></script>
                
    <div class="stepwizard">
        <div class="stepwizard-row setup-panel">
            <div class="stepwizard-step">
                <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                <p>Movimientos</p>
            </div>
            <div class="stepwizard-step">
                <a href="#step-2" type="button" class="btn btn-default btn-circle">2</a>
                <p>Historial de Movimientos</p>             
            </div>
        </div>
    </div>
    <form role="form">
        <div class="row setup-content" id="step-1">
            <div class="col-xs-12">
<center><h4>Movimientos del Expediente</h4></center>
                        <br />
                 <br />
                    <div class="row">
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Cedula</label>
                                <asp:TextBox runat="server" ID="txtCedulaPaciente" CssClass="form-control" required="required" placeholder="Cédula del paciente" AutoPostBack="True" OnTextChanged="txtCedulaPaciente_TextChanged" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Codigo Area</label>
                                <asp:TextBox runat="server" ID="txtCodAre" CssClass="form-control" AutoPostBack="True" placeholder="Codigo del área" OnTextChanged="txtCodAre_TextChanged" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Area</label>
                                <asp:TextBox runat="server" ID="txtArea" CssClass="form-control" required="required" placeholder="Codigo del área" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Codigo Doctor</label>
                                <asp:TextBox runat="server" ID="txtCodDoc" CssClass="form-control" required="required" placeholder="Codigo de Doctor" AutoPostBack="True" OnTextChanged="txtCodDoc_TextChanged" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Nombre Doctor</label>
                                <asp:TextBox runat="server" ID="txtNombreDoctor" CssClass="form-control" required="required" placeholder="Codigo de Doctor" />
                            </div>

                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="control-label">Encarcado</label>
                                <asp:TextBox runat="server" ID="txtEncargado" CssClass="form-control" required="required" placeholder="Encargado" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Fecha</label>
                                <asp:TextBox runat="server" ID="txtfecha" CssClass="form-control" required="required" placeholder="Fecha de Entrada" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Observación</label>
                                <asp:TextBox runat="server" ID="txtObservacion" CssClass="form-control" Rows="2" TextMode="MultiLine" placeholder="Observaciones" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">Estado</label>
                                <div class="input-group">
                                    <select class="form-control" runat="server" name="validate-select" id="txtEstadoExpediente" required>
                                        <option value="">--Seleccione--</option>
                                        <option value="Archivado">Archivado</option>
                                        <option value="Pendiente">Pendiente</option>
                                    </select>
                                </div>
                            </div>

                            <div class="">
                                <asp:Button ID="Button1" runat="server" Text="Registrar" CssClass="btn btn-default" OnClick="Button1_Click" />
                               <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Ver Historial</button>

                            </div>
                        </div>
                    </div>
              

                <!--Aqui va todo lo de movimientos -->
            </div>
        </div>
        <div class="row setup-content" id="step-2">
            <div class="col-xs-12">
                Aqui va todo lo de movimientos 
                <div class="col-md-12">
                    <h3>Historial de Movimientos</h3>
                    <asp:Button ID="btnImprimirHistorial" runat="server" Text="Imprimir" CssClass="btn btn-default pull-right" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>

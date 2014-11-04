<%@ Page Title="Expediente" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="MovimientosExpediente.aspx.cs" Inherits="UI_Expediente" %>

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
                            <label class="control-label">Identificación</label>
                            <asp:TextBox runat="server" ID="txtCedulaPaciente" CssClass="form-control" required="required" Width="1387px" placeholder="Cédula del paciente" OnTextChanged="txtCedulaPaciente_TextChanged" AutoPostBack="True" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Código Área</label>
                            <asp:TextBox runat="server" ID="txtCodAre" CssClass="form-control" AutoPostBack="True" Width="1387px" placeholder="Codigo del área" OnTextChanged="txtCodAre_TextChanged" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Área</label>
                            <asp:TextBox runat="server" ID="txtArea" CssClass="form-control" required="required"  Width="1387px" placeholder="Nombre área" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Código Doctor</label>
                            <asp:TextBox runat="server" ID="txtCodDoc" CssClass="form-control" required="required" Width="1387px" placeholder="Codigo de Doctor" AutoPostBack="True" OnTextChanged="txtCodDoc_TextChanged" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Nombre Doctor</label>
                            <asp:TextBox runat="server" ID="txtNombreDoctor" CssClass="form-control" required="required" Width="1387px" placeholder="Codigo de Doctor" />
                        </div>

                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Encarcado</label>
                            <asp:TextBox runat="server" ID="txtEncargado" CssClass="form-control" required="required" Width="1387px" placeholder="Encargado" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Fecha</label>
                            <asp:TextBox runat="server" ID="txtfecha" CssClass="form-control" required="required" Width="1387px" placeholder="Fecha de Entrada" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Observación</label>
                            <asp:TextBox runat="server" ID="txtObservacion" CssClass="form-control" Rows="2" Width="1387px" TextMode="MultiLine" placeholder="Observaciones" />
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
                    </div>
                </div>

            <asp:Button ID="Button1" runat="server" Text="Registrar" CssClass="btn btn-default nextBtn btn-lg" OnClick="Button1_Click" />               
                <!--Aqui va todo lo de movimientos -->
            </div>
        </div>
        <div class="row setup-content" id="step-2">
            <div class="col-xs-12">
                <div class="col-md-12">
                   <center><h3>Historial de Movimientos</h3></center>
                    <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowCustomPaging="True" PageSize="5" HorizontalAlign="Justify">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <br />
                    <br />

                </div>
            </div>
        </div>
    </form>
</asp:Content>

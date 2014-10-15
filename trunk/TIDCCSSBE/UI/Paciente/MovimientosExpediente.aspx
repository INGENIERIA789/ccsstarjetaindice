<%@ Page Title="Expediente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="MovimientosExpediente.aspx.cs" Inherits="UI_Expediente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="../Content/bootstrap.css" rel="stylesheet" />
   
        <div class="form-horizontal">
            <h4>Movimientos del Expediente</h4>
            <hr/>

            <div class="row">
                <div class="col-md-3">
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

                <div class="col-md-3">
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
                    </div>
                </div>
                <div class="col-md-6">
                    <h3>Historial de Movimientos</h3>

                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="LinqHistorial" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="CODIGO_AREA" HeaderText="AREA" ReadOnly="True" SortExpression="CODIGO_AREA" />
                            <asp:BoundField DataField="CODIGO_DOCTOR" HeaderText="DOCTOR" ReadOnly="True" SortExpression="CODIGO_DOCTOR" />
                            <asp:BoundField DataField="FECHA_ULTIMO_REGISTRO" HeaderText="ULTIMO REGISTRO" ReadOnly="True" SortExpression="FECHA_ULTIMO_REGISTRO" />
                            <asp:BoundField DataField="ESTADO_EXPEDIENTE" HeaderText="ESTADO" ReadOnly="True" SortExpression="ESTADO_EXPEDIENTE" />
                            <asp:BoundField DataField="OBSERVACION_MOVIMIENTO" HeaderText="OBSERVACION" ReadOnly="True" SortExpression="OBSERVACION_MOVIMIENTO" />
                            <asp:BoundField DataField="RESPONSABLE" HeaderText="RESPONSABLE" ReadOnly="True" SortExpression="RESPONSABLE" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                    <asp:LinqDataSource ID="LinqHistorial" runat="server" ContextTypeName="DBTarjetaIndiceDataContext" EntityTypeName="" Select="new (CODIGO_AREA, CODIGO_DOCTOR, FECHA_ULTIMO_REGISTRO, ESTADO_EXPEDIENTE, OBSERVACION_MOVIMIENTO, RESPONSABLE)" TableName="TID_MOVIMIENTO_EXPEDIENTE" Where="CEDULA_PACIENTE == @CEDULA_PACIENTE" OrderBy="FECHA_ULTIMO_REGISTRO desc">
                        <WhereParameters>
                            <asp:ControlParameter ControlID="txtCedulaPaciente" Name="CEDULA_PACIENTE" PropertyName="Text" Type="String" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                    <asp:Button ID="btnImprimirHistorial" runat="server" Text="Imprimir" CssClass="btn btn-default pull-right" />
                </div>
            </div>
    </div>  
    <div class="form-group">
        <div class="row">
            <div class="col-md-2">

            
            </div>
        </div>
        </div>
    
</asp:Content>

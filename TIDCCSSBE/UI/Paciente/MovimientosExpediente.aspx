<%@ Page Title="Expediente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="MovimientosExpediente.aspx.cs" Inherits="UI_Expediente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-danger"></p>
        <asp:Literal runat="server" ID="ErrorMessage" />
    
    <link href="../Content/bootstrap.css" rel="stylesheet" />
   
        <div class="form-horizontal">
            <br />
            <br />
            <br />
            <h4>Movimientos del Expediente</h4>
            <hr/>
            <asp:ValidationSummary runat="server" CssClass="text-danger" />

            <div class="row">
                
        <div class="col-md-3">
             <div class="form-group">
                 <label class="control-label">Cedula</label>
                    <asp:TextBox runat="server" ID="txtCedulaPaciente" CssClass="form-control" placeholder="Cédula del paciente" AutoPostBack="True" OnTextChanged="txtCedulaPaciente_TextChanged" />
            </div>
            <div class="form-group">
                <label class="control-label">Codigo Area</label>
                    <asp:TextBox runat="server" ID="txtCodAre" CssClass="form-control" placeholder="Codigo del área"/>
            </div>
            <div class="form-group">
                <label class="control-label">Area</label>
                    <asp:TextBox runat="server" ID="txtArea" CssClass="form-control" placeholder="Codigo del área"/>
            </div>
            <div class="form-group">
                <label class="control-label">Codigo Doctor</label>
                    <asp:TextBox runat="server" ID="txtCodDoc" CssClass="form-control" placeholder="Codigo de Doctor" />
            </div>
            
        </div>
   
        <div class="col-md-3">
              <div class="form-group">
                  <label class="control-label">Encarcado</label>              
                    <asp:TextBox runat="server" ID="txtEncargado" CssClass="form-control" placeholder="Encargado" />           
            </div>
            <div class="form-group">
                <label class="control-label">Fecha del Ultimo Movimiento</label>                 
                    <asp:TextBox runat="server" ID="txtfecha" CssClass="form-control" placeholder="Fecha de Entrada"/>
            </div>
             <div class="form-group">
                 <label class="control-label">Observación</label> 
                    <asp:TextBox runat="server" ID="txtObservacion"  CssClass="form-control" Rows="3" TextMode="MultiLine"  placeholder="Observaciones"/>
            </div> 
            <div class="form-group">
                <div class="input-group">
                    <select class="form-control" runat="server" name="validate-select" id="txtEstadoExpediente" required>
                        <option value="">--Seleccione--</option>
                        <option value="item_1">Archivado</option>
                        <option value="item_2">Pendiente</option>
                    </select>
                </div>
            </div>
        </div>
                <div class="col-md-6">
                    <h3><center>Historial de movimientos</center>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                        <EmptyDataTemplate>
                            Fechas<br />
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    </h3>
                   
                    
                   
                <asp:Button ID="btnImprimirHistorial" runat="server" Text="Imprimir" CssClass="btn btn-default pull-right" />
           
            </div>
                </div>
    </div>
         
           <hr/>
    <div class="form-group">
        <div class="row">
            <div class="col-md-2">

            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="Button1" runat="server" Text="Registrarse" CssClass="btn btn-default" />
            </div>
            </div>
            <div class="col-md-2">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="Button3" runat="server" Text="Modificar" CssClass="btn btn-default" />
            </div>
            </div>
        </div>
        </div>
    
</asp:Content>

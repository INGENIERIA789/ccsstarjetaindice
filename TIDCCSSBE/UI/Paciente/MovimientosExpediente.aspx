<%@ Page Title="Expediente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="MovimientosExpediente.aspx.cs" Inherits="UI_Expediente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-danger"></p>
        <asp:Literal runat="server" ID="ErrorMessage" />
    
    <link href="../Content/bootstrap.css" rel="stylesheet" />
   
        <div class="form-horizontal">
            <br />
            <br />
            <br />
            <h4>Registro de Entrada del Expediente</h4>
            <hr/>
            <asp:ValidationSummary runat="server" CssClass="text-danger" />

            <div class="row">
                
        <div class="col-md-3">
             <div class="form-group">
                 <label class="control-label">Cedula</label>
                    <asp:TextBox runat="server" ID="txtCedulaPaciente" CssClass="form-control" placeholder="Cédula del paciente" />
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
                    <h3><center>Historial de movimientos</center></h3>
                   
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Email</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Rocky</td>
                                <td>Balboa</td>
                                <td>rockybalboa@mail.com</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Peter</td>
                                <td>Parker</td>
                                <td>peterparker@mail.com</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>John</td>
                                <td>Rambo</td>
                                <td>johnrambo@mail.com</td>
                            </tr>
                        </tbody>
                    </table>
                   
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

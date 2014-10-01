<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TarjetaIndice.aspx.cs" Inherits="UI_TarjetaIndice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <p class="text-danger"></p>
        <asp:Literal runat="server" ID="ErrorMessage" />
    
    <link href="../Content/bootstrap.css" rel="stylesheet" />
   
        <div class="form-horizontal">
            <h4>Paciente.</h4>
            <hr/>
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <div class="row">
        <div class="col-md-6">
             <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Cédula</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox9" CssClass="form-control" placeholder="Cédula del paciente" />
                    <button type="button" class="btn btn-default btn-lg">
                    <span class="glyphicon glyphicon-search"></span></button>
               </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Nombre</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" placeholder="Nombre"/>
               </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Apellido 1</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" placeholder="Apellido 1" />
               </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Apellido 2</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control" placeholder="Apellido 2"/>
               </div>
            </div>
        </div>
   
        <div class="col-md-6">
              <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Género</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox10" CssClass="form-control" placeholder="Género" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Estado Civil</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control" placeholder="Estado Civil"/>
               </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Fecha de Nacimiento</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control" placeholder="Fecha de Nacimiento"/>
               </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Fecha de defunción</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox6"  CssClass="form-control" placeholder="Fecha de defunción"/>
               </div>
            </div>
        </div>
    </div>
           <div class="row" >
                <div class="col-md-6">

          <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Observación</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox7"  CssClass="form-control" Rows="3" TextMode="MultiLine"  placeholder="Observaciones"/>
               </div>
            </div> 

                </div>
        </div>
           
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
    </div>
</asp:Content>


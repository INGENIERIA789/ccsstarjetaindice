<%@ Page Title="Cargar Xml-HOASIS" Language="C#" MasterPageFile="~/Master/PagForms.Master" AutoEventWireup="true" CodeBehind="CargaXml.aspx.cs" Inherits="Hoasis.IU.Formularios.Usuarios.CargaXml" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/Css/bootstrap.css" rel="stylesheet" />
    <link href="../../Css/CssContent.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container Body">
        <div id="top" class="row">
            <h2>Cargar Xml de Personas</h2>
        </div>
        <div class="row">
            <div class="col-xs-4 ">
                <section class="ne bg-info">
                    <fieldset >
                        <legend>Descripción</legend>
                        <p class="p">
                            Esta opción del sitio permite realizar una inserción de pacientes de forma masiva, por medio del uso de un archivo XML (este archivo
                            contiene información de los pacientes que van a ser registrados en el sistema) que el 
                            administrador del sistema podrá cargar para realizar dicha función, sólo se aceptarán archivos de la extensión .xml y que estén
                            en el formato correcto.
                        </p>
                    </fieldset>
                </section>
            </div>
           <%-- <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel" runat="server">
                <ContentTemplate>--%>
                    <div class="col-xs-8">
                        <div class="form-group">
                            <label for="FUXML">Cargar XML</label>
                            <asp:FileUpload ID="FUXML" runat="server" />
                            <p class="help-block">Carga del archivo XML que contiene los pacientes que van a ser registrados en el sistema.</p>
                        </div>
                        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" class="btn btn-primary" Click="btnEnviar_Click" OnClick="btnEnviar_Click1" />
                    </div>
                <%--</ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger EventName="Click" ControlID="btnEnviar"/>
                </Triggers>
            </asp:UpdatePanel>--%>
        </div>
    </div>
</asp:Content>

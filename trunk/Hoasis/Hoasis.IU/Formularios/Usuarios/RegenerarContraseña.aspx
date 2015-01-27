<%@ Page Title="Regeneración de contraseña" Language="C#" MasterPageFile="~/Master/PagForms.Master" AutoEventWireup="true" CodeBehind="RegenerarContraseña.aspx.cs" Inherits="Hoasis.IU.Formularios.Usuarios.RegenerarContraseña" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container Body">
        <div id="top" class="row">
            <h2>Regenerar contraseña del paciente</h2>
        </div>
        <div class="row">
            <div class="col-xs-4 ">
                <section class="ne bg-info">
                    <fieldset>
                        <legend>Descripción</legend>
                        <p class="p">
                            Esta opción del sitio permite regenerar una contraseña en caso de que el paciente solicitante la haya olvidado, para 
                            ello el administrador solo debe de presionar el botón "Regenerar".
                        </p>
                    </fieldset>
                </section>
            </div>
            <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel" runat="server">
                <ContentTemplate>
                    <div class="col-xs-8">
                        <div class="col-xs-6">
                            <h4>
                                <asp:Label ID="lblPaciente" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <div class="form-group ">
                                <label for="txtCedula">Cédula del paciente</label>
                                <asp:TextBox ID="txtCedula" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                            </div>
                             <div class="form-group ">
                                <asp:Button ID="btnRegenrar" runat="server" Text="Regenerar" class="btn btn-success" OnClick="btnRegenrar_Click"  />
                                <asp:Label ID="lblRegenerar" CssClass="help-block" runat="server" Text="Label">Al presionar el botón se generará una nueva contraseña para el paciente, luego se guardarán los cambios.</asp:Label>
                                <asp:TextBox ID="txtPassword" runat="server" class="form-control" Visible="False" ReadOnly></asp:TextBox>
                                <asp:Label ID="lblContra" runat="server" for="txtPassword" Text="Contraseña del paciente" Visible="False"></asp:Label>
                            </div>
                        </div>
                        <div class="col-xs-6">
                           
                        </div>
                        
                        <%--<asp:Button ID="btnEnviar" runat="server" Text="Enviar" class="btn btn-primary" Click="btnEnviar_Click" />--%>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger EventName="Click" ControlID="btnRegenrar" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

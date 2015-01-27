<%@ Page Title="Activar" Language="C#" MasterPageFile="~/Master/PagForms.Master" AutoEventWireup="true" CodeBehind="Activar.aspx.cs" Inherits="Hoasis.IU.Formularios.Usuarios.Activar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/Css/bootstrap.css" rel="stylesheet" />
    <link href="../../Css/CssContent.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container Body">
        <div id="top" class="row">
            <h2>Activar</h2>
        </div>
        <div class="row">
            <div class="col-xs-4">
                <section class="bg-info ne">
                    <fieldset >
                        <legend>Descripción</legend>
                        <p class="p">
                            Esta opción del sitio permite realizar la activación o desactivación de los pacientes, para 
                            ello el administrador solo debe de presionar el botón que este disponible, ya sea, el de "Activar" o "Desactivar". Estas opciones
                            estarán disponibles dependiendo del estado del paciente en el registro.
                        </p>
                    </fieldset>
                </section>
            </div>
            <div class="col-xs-8">
                <div class="col-xs-6">
                    <div class="form-group ">
                        <label for="txtCedula">Cédula del paciente</label>
                        <asp:TextBox ID="txtCedula" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtNombre">Nombre del paciente</label>
                        <asp:TextBox ID="txtNombre" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtApellido1">Primer apellido del paciente</label>
                        <asp:TextBox ID="txtApellido1" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtApellido2">Segundo apellido del paciente</label>
                        <asp:TextBox ID="txtApellido2" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <asp:Button ID="btnActivar" runat="server" Text="Activar" class="btn btn-success" OnClick="btnActivar_Click" />
                        <asp:Label ID="lblActivar" CssClass="help-block" runat="server" Text="Label">Al presionar el botón se activará y generará la contraseña del paciente, luego se guardarán los cambios.</asp:Label>
                        <asp:Button ID="btnDesactivar" runat="server" Text="Desactivar" class="btn btn-danger" OnClick="btnDesactivar_Click" />
                        <asp:Label ID="lblDesactivar" CssClass="help-block" runat="server" Text="Label">Al presionar el botón se activará y guardarán los cambios del paciente.</asp:Label>
                        <asp:TextBox ID="txtPassword" runat="server" class="form-control" Visible="False" ReadOnly></asp:TextBox>
                        <asp:Label ID="lblContra" runat="server" for="txtPassword" Text="Contraseña del paciente" Visible="False"></asp:Label>
                        <%--<label for="txtPassword" id="lblContra">Contraseña del paciente</label>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

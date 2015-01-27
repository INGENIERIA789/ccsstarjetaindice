<%@ Page Title="Registrar Usuarios-HOASIS" Language="C#" MasterPageFile="~/Master/PagForms.Master" AutoEventWireup="true" CodeBehind="RegistarPersonas.aspx.cs" Inherits="Hoasis.IU.Formularios.Usuarios.RegistarPersonas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/Css/bootstrap.css" rel="stylesheet" />
    <link href="../../Css/CssContent.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container Body">
        <div id="top" class="row">
            <h2>Registrar Pacientes</h2>
        </div>
        <div class="row">
            <div class="col-xs-4 ">
                <section class="ne bg-info">
                    <fieldset >
                        <legend>Descripción</legend>
                        <p class="p">
                            Esta opción le permite realizar la inserción de nuevos pacientes al sistema, no se permitirá guardar los cambios sin antes
                            haber llenado los campos que se le muestren como requeridos.
                        </p>
                    </fieldset>
                </section>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="col-xs-4">
                        <div class="adapta-form">
                            <div class="form-group ">
                                <label>Cédula de Paciente  </label>
                                <asp:TextBox ID="TxtCedula" runat="server" placeHolder="Identificación" CssClass="form-control" MaxLength="9" TabIndex="1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtCedula" ErrorMessage="Requiere la cédula" CssClass="campos"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group ">
                                <label>Nombre del Paciente  </label>
                                <asp:TextBox ID="TxtNombre" runat="server" placeHolder="Nombre" CssClass="form-control" MaxLength="20" TabIndex="2"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Requiere el nombre del usuario" ControlToValidate="TxtNombre" CssClass="campos"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group ">
                                <label>Primer Apellido del Paciente  </label>
                                <asp:TextBox ID="TxtPApellido" runat="server" placeHolder="Primer Apellido" CssClass="form-control" MaxLength="20" TabIndex="3"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Requiere el primer apellido" ControlToValidate="TxtPApellido" CssClass="campos"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group ">
                                <label>Segundo Apellido del Paciente  </label>
                                <asp:TextBox ID="TxtSApellido" runat="server" placeHolder="Segundo Apellido" CssClass="form-control" MaxLength="20" TabIndex="4"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Requiere el segundo apellido" ControlToValidate="TxtSApellido" CssClass="campos"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <div class="adapta-form">
                            <div class="form-group ">
                                <label>Fecha de Nacimiento del Paciente  </label>
                                <asp:TextBox ID="TxtFechaN" runat="server" placeHolder="Fecha Nacimiento" CssClass="form-control" TextMode="Date" TabIndex="5"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Requiere la fecha de nacimiento" ControlToValidate="TxtFechaN" CssClass="campos"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group ">
                                <label>Correo electronico del Paciente  </label>
                                <asp:TextBox ID="TxtEmail" runat="server" placeHolder="Correo Electronico" CssClass="form-control" MaxLength="100" TextMode="Email" TabIndex="6"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Dirección de correo no validad" ControlToValidate="TxtEmail" CssClass="campos"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group ">
                                <label>Dirección de habitación del Paciente  </label>
                                <asp:TextBox ID="TxtDireccion" runat="server" placeHolder="Direccion de casa" CssClass="form-control" MaxLength="200" TabIndex="8"></asp:TextBox>
                            </div>
                            <br />
                            <div class="form-group ">
                                <label>Teléfono del Paciente  </label>
                                <asp:TextBox ID="TxtTelefono" runat="server" CssClass="form-control" MaxLength="8" placeHolder="Teléfono" TabIndex="9" TextMode="Phone"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="BtnAgregar" runat="server" CssClass="btn btn-primary" TabIndex="11" Text="Registrar" OnClick="BtnAgregar_Click" />
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="BtnAgregar" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

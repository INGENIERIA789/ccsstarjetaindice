<%@ Page Title="Activar Paciente-HOASIS" Language="C#" MasterPageFile="~/Master/PagForms.Master" AutoEventWireup="true" CodeBehind="ActivacionPaciente.aspx.cs" Inherits="Hoasis.IU.Formularios.Usuarios.ActivacionPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/Css/bootstrap.css" rel="stylesheet" />
    <link href="../../Css/CssContent.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container Body">
        <div id="top" class="row">
            <h2>Activacion de Paciente</h2>
        </div>
        <div class="row">
            <div class="col-xs-4">
                <section class="ne bg-info">
                    <fieldset>
                        <legend>Descripción</legend>
                        <p class="p">
                            En esta opción los usuarios administradores del sistema podrán realizar la activación y desactivación de pacientes,
                            para poder realizar esto se debe presionar el botón "Seleccionar" que lo redirigirá hacia otra página dónde estarán
                            las opciones de activación.
                        </p>
                    </fieldset>
                </section>
            </div>
            <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel" runat="server">
                <ContentTemplate>
                    <div class="col-xs-8">
                        <div class="row ">
                            <section class="t4">
                                Buscar   
                            </section>
                            <section class="t4">
                                <asp:TextBox ID="txtCedula" runat="server" class="form-control" placeholder="Ingrese cédula aquí" />
                            </section>
                            <section class="t4">
                                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-primary " OnClick="btnBuscar_Click" />
                            </section>
                        </div>
                        <br />
                        <div class="row">
                            <asp:GridView ID="GridActivacion" runat="server" OnSelectedIndexChanged="GridActivacion_SelectedIndexChanged1" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                        </div>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger EventName="Click" ControlID="btnBuscar"/>
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

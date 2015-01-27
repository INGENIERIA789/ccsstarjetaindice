<%@ Page Title="" Language="C#" MasterPageFile="~/Master/PagForms.Master" AutoEventWireup="true" CodeBehind="ConsultaPaciente.aspx.cs" Inherits="Hoasis.IU.Formularios.Usuarios.ConsultaPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/Css/bootstrap.css" rel="stylesheet" />
    <link href="../../Css/CssContent.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container Body">
        <div id="top" class="row">
            <h2>Consulta Paciente</h2>
        </div>
        <div class="row">
            <div class="col-xs-4 ">
                <section class="ne bg-info">
                    <fieldset >
                        <legend>Descripción</legend>
                        <p class="p">
                            Esta opción del sitio le permite ver todos los pacientes que están registrados en el portal web, además podrá realizar una búsqueda
                             exhaustiva de los pacientes por medio de la cédula, otra opción disponible es que se podrá regenerar la contraseña de algún paciente
                             que lo solicite, las contraseñas sólo serán brindadas a aquellas personas que porten la cédula de identidad, para poder realizar esto 
                             se debe seleccionar el botón "Regenerar Contraseña" y no se permitirá regenerar la contraseña a personas que no están activas en 
                             el portal web.
                        </p>
                    </fieldset>
                </section>
            </div>
            <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel" runat="server">
                <ContentTemplate>
                    <div class="col-xs-8">
                        <div class="row">
                            <div class="form-inline">
                                <asp:Button ID="btnBuscar" class="btn btn-primary" runat="server" Text="Buscar Paciente" OnClick="btnBuscar_Click" />
                                <asp:TextBox ID="txtCedula" runat="server" class="form-control" placeholder="Ingrese cédula aquí" ToolTip="Ingrese la cédula sin espacios ni guiones"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <asp:GridView ID="GridPacientes" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridPacientes_SelectedIndexChanged">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ButtonType="Button" SelectText="Regenerar Contraseña" ShowSelectButton="True">
                                    <ControlStyle CssClass="btn btn-primary btn-sm" />
                                    </asp:CommandField>
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

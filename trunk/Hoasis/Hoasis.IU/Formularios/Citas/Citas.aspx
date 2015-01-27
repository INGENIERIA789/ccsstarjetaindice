<%@ Page Title="Citas-HOASIS" Language="C#" MasterPageFile="~/Master/PagForms.Master" AutoEventWireup="true" CodeBehind="Citas.aspx.cs" Inherits="Hoasis.IU.Formularios.Citas.Citas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/Css/bootstrap.css" rel="stylesheet" />
    <link href="../../Css/CssContent.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container Body">

        <div id="top" class="row ">
            <h2>Información de Citas</h2>
        </div>
        <div class="row">
            <div class="col-xs-4">
                <section class="ne bg-info">
                    <fieldset >
                        <legend>Descripción</legend>
                        <p class="p">
                            En este apartado, el usuario puede consultar su cita médica programada,
                            permitiendo las opciones de cancelar y reprogramar la cita elegida.
                        </p>
                    </fieldset>
                </section>
            </div>
            <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel" runat="server">
                <ContentTemplate>
                    <div class="col-xs-8">
                        <div class="row">
                            <section class="t4">
                                Buscar
                            </section>
                            <section class="t4">
                                <asp:TextBox ID="TxtFechaCita" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                            </section>
                            <section class="t4">
                                <asp:Button ID="BtnBuscar" runat="server" CssClass="btn btn-primary" Text="Buscar fecha de cita" OnClick="BtnBuscar_Click" />
                            </section>
                        </div>
                        <br />
                        <div class="row">
                            <asp:GridView ID="GdvCitas" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CellSpacing="3" CssClass="grid" Font-Overline="False" GridLines="Vertical">
                                <AlternatingRowStyle BackColor="Gainsboro" />
                                <FooterStyle BackColor="#CCCCCC" Font-Bold="False" ForeColor="Black" VerticalAlign="Middle" />
                                <HeaderStyle BackColor="#3289AC" Font-Bold="True" Font-Size="120%" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btnReprogramar" runat="server" CssClass="btn btn-default" OnClientClick="return confirm('¿Desea reprogramar su cita?')" OnClick="ReprogramarCita" Height="20px" CommandArgument='<%# Eval("Fecha programada")+","+Eval("Estado de la cita")%>'> <img src="../Imagenes/reprogrmaspeque.png" /></asp:LinkButton>
                                            <asp:LinkButton ID="btnCancelar" runat="server" CssClass="btn btn-default" OnClientClick="return confirm('¿Desea cancelar su cita?')" OnClick="CancelarCita" Height="20px" CommandArgument='<%# Eval("Fecha programada")+","+Eval("Estado de la cita")%>'> <img src="../Imagenes/eliminarmaspeque.png" /> </asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </ContentTemplate>
                <Triggers>
                     <asp:AsyncPostBackTrigger EventName="Click" ControlID="BtnBuscar" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

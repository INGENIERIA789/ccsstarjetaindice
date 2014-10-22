<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BuscarExpediente.aspx.cs" Inherits="UI_Paciente_BuscarExpediente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="Ingresar Identificación"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="LinqDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="CEDULA_PACIENTE" HeaderText="Identificación" ReadOnly="True" SortExpression="CEDULA_PACIENTE" />
            <asp:BoundField DataField="BLOQUE_EXPEDIENTE" HeaderText="Bloque" ReadOnly="True" SortExpression="BLOQUE_EXPEDIENTE" />
            <asp:BoundField DataField="CUBICULO_EXPEDIENTE" HeaderText="Cubiculo" ReadOnly="True" SortExpression="CUBICULO_EXPEDIENTE" />
            <asp:BoundField DataField="OBSERVACION" HeaderText="Observación" ReadOnly="True" SortExpression="OBSERVACION" />
            <asp:BoundField DataField="FECHA_CREACION_EXPEDIENTE" HeaderText="Fecha" ReadOnly="True" SortExpression="FECHA_CREACION_EXPEDIENTE" />
            <asp:BoundField DataField="ESTADO_EXPEDIENTE" HeaderText="Estado" ReadOnly="True" SortExpression="ESTADO_EXPEDIENTE" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DBTarjetaIndiceDataContext" EntityTypeName="" OrderBy="FECHA_CREACION_EXPEDIENTE desc" Select="new (CEDULA_PACIENTE, BLOQUE_EXPEDIENTE, CUBICULO_EXPEDIENTE, OBSERVACION, FECHA_CREACION_EXPEDIENTE, ESTADO_EXPEDIENTE)" TableName="TID_EXPEDIENTES" Where="CEDULA_PACIENTE == @CEDULA_PACIENTE">
        <WhereParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="CEDULA_PACIENTE" PropertyName="Text" Type="String" />
        </WhereParameters>
    </asp:LinqDataSource>
</asp:Content>


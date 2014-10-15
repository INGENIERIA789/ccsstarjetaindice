<%@ Page Title="Buscar" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BuscarTID.aspx.cs" Inherits="UI_Paciente_BuscarTID" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
 
    <br />
     <br />
     <br />
     <br />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
<h3>Busqueda de paciente.</h3>
  <div class="row">
      
      <div class="col-sm-2">
          <label class="control-label">Nombre</label>
          <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" AutoPostBack="True" ></asp:TextBox> 

      </div>
      <div class="col-sm-2">
          <label class="control-label">Primer Apellido</label>
         <asp:TextBox ID="txtPriApe" CssClass="form-control" runat="server" AutoPostBack="True" ></asp:TextBox> 

      </div>
      
      <div class="col-sm-2">
        <label class="control-label">Segundo Apellido</label>
         <asp:TextBox ID="txtSenApe" CssClass="form-control" runat="server" AutoPostBack="True" ></asp:TextBox> 
      </div>
          
  </div><br />
    
          <br />
     <asp:GridView ID="GridView1" runat="server" DataSourceID="LinqDataSource1" AutoGenerateColumns="False" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
             <asp:BoundField DataField="NUM_IDENTIFICACION" HeaderText="IDENTIFICACION" ReadOnly="True" SortExpression="NUM_IDENTIFICACION" />
             <asp:BoundField DataField="NOM_APELLIDO1" HeaderText="APELLIDO 1" ReadOnly="True" SortExpression="NOM_APELLIDO1" />
             <asp:BoundField DataField="NOM_APELLIDO2" HeaderText="APELLIDO" ReadOnly="True" SortExpression="NOM_APELLIDO2" />
             <asp:BoundField DataField="NOM_NOMBRE" HeaderText="NOMBRE" ReadOnly="True" SortExpression="NOM_NOMBRE" />
             <asp:BoundField DataField="IND_SEXO" HeaderText="SEXO" ReadOnly="True" SortExpression="IND_SEXO" />
             <asp:BoundField DataField="COD_ESTADO_CIVIL" HeaderText="ESTADO CIVIL" ReadOnly="True" SortExpression="COD_ESTADO_CIVIL" />
             <asp:BoundField DataField="FEC_NACIMIENTO" HeaderText="NACIMIENTO" ReadOnly="True" SortExpression="FEC_NACIMIENTO" />
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
          <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="" ContextTypeName="DBTarjetaIndiceDataContext" OrderBy="NOM_NOMBRE desc, NOM_APELLIDO1 desc, NOM_APELLIDO2 desc" Select="new (NUM_IDENTIFICACION, NOM_APELLIDO1, NOM_APELLIDO2, NOM_NOMBRE, IND_SEXO, COD_ESTADO_CIVIL, FEC_NACIMIENTO)" TableName="TID_PACIENTE" Where="NOM_APELLIDO1 != @NOM_APELLIDO1 &amp;&amp; NOM_NOMBRE == @NOM_NOMBRE &amp;&amp; NOM_APELLIDO2 != @NOM_APELLIDO2" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
              <WhereParameters>
                  <asp:ControlParameter ControlID="txtPriApe" Name="NOM_APELLIDO1" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="txtNombre" Name="NOM_NOMBRE" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="txtSenApe" Name="NOM_APELLIDO2" PropertyName="Text" Type="String" />
              </WhereParameters>
          </asp:LinqDataSource>

</asp:Content>


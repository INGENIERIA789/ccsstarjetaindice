<%@ Page Title="Reportes" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Reportes.aspx.cs" Inherits="Reportes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
   <br />
   <br />
    <div class="row"> 
        <div class="col-md-3">  
             <div class="form-group"> 
               <asp:label ID="lblFecInicio" runat="server">Fecha de Inicio: </asp:label>
               <input type="date" />
               </div>
         </div>
        <div class="col-md-3"> 
             <div class="form-group"> 
               <asp:label ID="lblFecFinal" runat="server">Fecha Final: </asp:label>
                <input type="date" />
             </div>
        </div>
    </div>
   <div class="form-group"> 
       <asp:Button ID="btnCargar1" runat="server" Text="Cargar Datos" />
       <asp:HyperLink ID="HyperLink1" runat="server">Ver Reporte de Salida de Expedientes</asp:HyperLink>
       </div>
    
    <div class="form-group">  
        <asp:Button ID="btnCargar2" runat="server" Text="Cargar Datos" />
        <asp:HyperLink ID="HyperLink2" runat="server">Ver Reporte de Entrada de Expediente</asp:HyperLink>
       </div>
    <div class="form-group">   
        <asp:Button ID="btnCargar3" runat="server" Text="Cargar Datos" />
        <asp:HyperLink ID="HyperLink3" runat="server">Ver reporte de Creación de TID</asp:HyperLink>
       
    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />

</asp:Content>


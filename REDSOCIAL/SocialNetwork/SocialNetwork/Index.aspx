<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SocialNetwork.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bienvenido a ToonFace</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
        <div id="logo">
            <h1 id="nombreSN">ToonFace</h1>
        </div>
        <div id="espaciador"></div>
        <div id="sesion">
            <div id="login">
                
                <asp:TextBox ID="txtNombreUsuario" runat="server">Nombre de Usuario</asp:TextBox>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password">password</asp:TextBox>
                
                <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" />
            </div>
            
            <asp:Button ID="btnRegister" runat="server" Text="Registrarse" />

        </div>
    </div>
    
    <div>
        Bienvenido a la red Social más nueva pero kawaii del año 2014
    </div>
    </form>
    <footer id="piePagina">
        poner condiciones de uso y derechos de autor aqui
    </footer>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SocialNetwork.inicioSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrarse a ToonFace</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
        <div id="logo">
            <h1 id="nombreSN">ToonFace</h1>
        </div>
        <div id="espaciador"></div>
        <div id="botonesSesion">
            <asp:Button ID="btnRetroceso" runat="server" Text="Atrás" />
        </div>
    </div>
    
    <div id="formulario">
        <table id="tbForm">
            <tr>
                <td>
                    <asp:Label ID="lblNombreUsuario" runat="server" Text="Nombre Usuario"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblApellidos" runat="server" Text="Apellidos"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMail" runat="server" Text="Correo Electrónico"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Contraseña"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirmar contraseña"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSexo" runat="server" Text="Sexo"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddSexo" runat="server">
                        <asp:ListItem>Femenino</asp:ListItem>
                        <asp:ListItem>Masculino</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblFecNac" runat="server" Text="Fecha de nacimiento"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddDay" runat="server"></asp:DropDownList>
                    <asp:DropDownList ID="ddMonth" runat="server"></asp:DropDownList>
                    <asp:DropDownList ID="ddYear" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Registrarse" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

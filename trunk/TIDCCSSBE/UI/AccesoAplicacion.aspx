<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AccesoAplicacion.aspx.cs" Inherits="UI_AccesoAplicacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<link href="../Content/bootstrap.css" rel="stylesheet" />
<script src="../Scripts/bootstrap.js"></script>
<script src="../Scripts/jquery-1.10.2.intellisense.js"></script>
<script src="../Scripts/jquery-1.10.2.js"></script>
<script src="../Scripts/jquery-1.10.2.min.js"></script>
<body>
    <br />
    <br />
    <br />
    <br />

 <div class="container">
    <div class="row">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Bienvenido</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form accept-charset="UTF-8" runat="server" role="form">
                    <fieldset>
			    	  	<div class="form-group">
                        <label>Nombre de Usuario</label>                      
                        <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" type="text" Width="305px"></asp:TextBox>
			    		</div>
			    		<div class="form-group">
                        <label>Contraseña</label>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" type="password" Width="306px"></asp:TextBox>
			    		</div>
                        <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-primary btn-block" Text="Ingresar" />			    	
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>
   </body>
</html>

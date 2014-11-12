<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="AccesoAplicacion.aspx.cs" Inherits="UI_AccesoAplicacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="../Content/bootstrap.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
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
			    	  	<h4>Utilice una cuenta local para iniciar sesión.</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="PlaceHolder1" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="Literal1" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <label>Nombre de usuario</label>
                       <!-- <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">Nombre de usuario</asp:Label>-->
                       
                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                CssClass="text-danger" ErrorMessage="El campo de nombre de usuario es obligatorio." />                    
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="El campo de contraseña es obligatorio." />                     
                    </div>
                    <div class="form-group">
                       
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label ID="Label3" runat="server" AssociatedControlID="RememberMe">¿Recordar cuenta?</asp:Label>
                            </div>
                        
                    </div>
                    
                        <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-primary btn-block" Text="Ingresar" OnClick="LogIn" />			    	
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>
   </body>
</html>

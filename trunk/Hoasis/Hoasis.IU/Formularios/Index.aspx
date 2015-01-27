<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Hoasis.IU.Formularios.Index2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>HOASIS</title>
    <script src="/JS/bootstrap.js" type="text/javascript"></script>
    <script src="/JS/jquery.js"></script>
    <script src="/JS/bootstrap.min.js" type="text/javascript"></script>
    <link href="/CSS/bootstrap.css" rel="stylesheet" />
    <link href="/CSS/CssIndex.css" rel="stylesheet" />
    <link href="../Imagenes/logotipoico.ico" rel="shortcut icon" type="image/x-icon"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="header" class="row">
        <div class="col-sm-6 col-md-6">
            <img src="../Imagenes/logoCaja.png" class="img" />
        </div>
        <div class="col-sm-6 col-md-6">
            <div class="row" >
                <div id="head-1" class="col-md-12">
                    <asp:Label ID="LblUsuario" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div id="head-2" class="col-md-12">
                    <button type="button" id="BtnLogin" class="btn btn-link enlace" data-toggle="modal" data-target="#Login" >
                        <span class="glyphicon glyphicon-user"></span>Iniciar Sesión
                    </button>
                </div>            
            </div>
        </div>
    </div>
        <div id="Login" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <div id="header-2" class="row">
                            <button type="button" class="close" data-dismiss="modal" style="color:white;"><span aria-hidden="true" style="color:white;">&times;</span><span class="sr-only">Close</span></button>
                            <div class="col-sm-12 col-md-12">
                                <img src="../Imagenes/logoCaja.png" class="img" />
                            </div>
                        </div>
                    </div>
                    <div class="modal-body">
                        <div class="row Autenticar">
                            <div class="row">
                                <h3 class="h3">Usuarios Registrados</h3>
                            </div>
                            <p class="p1">
                                Ingrese aquí su nombre de usuario y contraseña
                            </p>
                            <p id="p2">
                                <asp:Label ID="LblError" runat="server" Text="Datos erróneos.Por favor, inténtelo otra vez."></asp:Label>
                            </p>
                            <div>
                                <div class="row">
                                    <div class="col-md-6 ">
                                        Identificación de Usuario
                                    </div>
                                    <div class="col-md-4">
                                        <asp:TextBox ID="TxtUsuario" runat="server" CssClass="form-control" placeholder="Cédula" MaxLength="9" ToolTip="Ingrese su cédula con ceros ejemplo &quot;102220333&quot;" TabIndex="1"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-6">
                                        Contraseña
                                    </div>
                                    <div class="col-md-4">
                                         <asp:TextBox ID="TxtContraseña" runat="server" CssClass="form-control" TextMode="Password" placeholder="Contraseña" TabIndex="2"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-6"></div>
                                    <div class="t2 col-md-4">
                                        <asp:Button ID="BtnEntrar" runat="server" Text="Entrar" CssClass="btn btn-primary" TabIndex="3" OnClick="BtnEntrar_Click" />
                                    </div>
                                </div>
                                <br />
                                <div class="t3 row">
                                    <asp:CheckBox ID="CkbRecordar" runat="server" Text="Recordar nombre de usuario" />
                                </div>
                                <div class="row">
                                    <a class="a" href="#">¿Olvidó su contraseña?</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="row foot-up">
                            <img src="/Imagenes/HoasisFoot.png" />
                        </div>
                        <div class="row foot-down">
                            2015 Todos los derechos reservados, HOASIS Version 1.0
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <nav class="navbar navbar-default" role="navigation">
                <ul class="nav navbar-form nav-justified nav-pills" role="tablist">
                    <li><a href="Inicio.aspx">HOASIS</a></li>
                    <li><a href="#">Citas</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown">Farmacia <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Retiro</a></li>
                            <li><a href="#">Consulta</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Médico</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown">Configuración <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a>Usuarios</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Sistema</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="container">
            <section id="carusel" data-ride="carousel" class="carousel slide">
                <ol class="carousel-indicators">
                    <li data-target="#carusel" data-slide-to="0" class="active"></li>
                    <li data-target="#carusel" data-slide-to="1"></li>
                    <li data-target="#carusel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="/Imagenes/Hospitalntro.jpg" class="adaptar"/>
                    </div>
                    <div class="item">
                        <img src="/Imagenes/Hospitalntro.jpg" class="adaptar"/>
                    </div>
                    <div class="item">
                        <img src="/Imagenes/Hospitalntro.jpg" class="adaptar"/>
                    </div>
                </div>
                <a class="left carousel-control" href="#carusel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carusel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </section>
        </div>
        <footer>
            <div class="row foot-up">
                <img src="/Imagenes/HoasisFoot.png" />
            </div>
            <div class="row foot-down">
                2015 Todos los derechos reservados, HOASIS Version 1.0
            </div>
        </footer>
    </div>
    </form>
</body>
</html>

<%@ Page Title="Pagina Principal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Scripts/Contenido-TID/Default.css" rel="stylesheet" />
    <script src="Scripts/Contenido-TID/Default.js"></script>
   <div class="container">
	<div class="row">
        <br />
		<h2></h2>
	</div>
    
    <div class="row">
        <!-- The carousel -->
        <div id="transition-timer-carousel" class="carousel slide transition-timer-carousel" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#transition-timer-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#transition-timer-carousel" data-slide-to="1"></li>
				<li data-target="#transition-timer-carousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
                    <img src="img/tres.jpg" />
                    <div class="carousel-caption">
                        <h1 class="carousel-caption-header">Hospital la Anexión</h1>
                        <p class="carousel-caption-text hidden-sm hidden-xs">
                           El Hospital la Anexión se encuentra en la entrada principal de Nicoya.
                        </p>
                    </div>
                </div>
                
                <div class="item">
                    <img src="img/img-sliderhome-bg-ph.jpg" />
                    <div class="carousel-caption">
                        <h1 class="carousel-caption-header">Área de Archivos Clinicos</h1>
                        <p class="carousel-caption-text hidden-sm hidden-xs">
                           Se encarga de gestionar todos los archivos clinicos.
                        </p>
                    </div>
                </div>
                
                <div class="item">
                    <img src="http://placehold.it/1200x400/888888/555555" />
                    <div class="carousel-caption">
                        <h1 class="carousel-caption-header">Slide 3</h1>
                        <p class="carousel-caption-text hidden-sm hidden-xs">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dignissim aliquet rutrum. Praesent vitae ante in nisi condimentum egestas. Aliquam.
                        </p>
                    </div>
                </div>
            </div>

			<!-- Controls -->
			<a class="left carousel-control" href="#transition-timer-carousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#transition-timer-carousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
            
            <!-- Timer "progress bar" -->
            <hr class="transition-timer-carousel-progress-bar animate" />
		</div>
    </div>
</div>

</asp:Content>

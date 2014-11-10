<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdministradMenu.aspx.cs" Inherits="UI_AdministradMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


    <div class="row">
        <div class="col-md-4">
            <br />
            <br />
            <h3>Menu administrativo</h3>
        <nav>
        <ul class="nav nav-pills nav-stacked span2">
            <li><a href="PersonalHospital">Gestión de Personal</a></li>
            <li><a href="AreaTrabajo">Gestión de Áreas</a></li>
            <li><a href="registrarDoctor">Gestión de Cuerpo Medico</a></li>
            <li><a href="Resportes">Reportes</a></li>
        </ul>
        </nav>

        </div>
        <div class="col-md-4">
    
        </div>
    </div>
</asp:Content>


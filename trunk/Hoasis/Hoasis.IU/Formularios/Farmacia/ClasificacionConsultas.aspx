<%@ Page Title="Clasificación de consultas Farmacéuticas    -HOASIS" Language="C#" AutoEventWireup="true"  MasterPageFile="~/Master/PagForms.Master" 
    CodeBehind="ClasificacionConsultas.aspx.cs" ValidateRequest="false"
    Inherits="Hoasis.IU.Formularios.Farmacia.ClasificacionConsultas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Clasificación de consultas Farmacéuticas    -HOASIS</title>
    <meta charset="utf-8" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
     <link href="../MASTERPAGES/CSS/bootstrap.css" rel="stylesheet"/>
     <link href="../../Css/STEPbySTEP.css" rel="stylesheet"/>
    <script src="../../Js/bootstrap.js"></script>
    <link href="../../Css/CssContent.css" rel="stylesheet"/>
    <script src="../../Js/bootstrap.min.js"></script>
    <script  src="../JS/jquery.min.js"></script>
        <script  src="../../Js/JSSTEPBYSTEP.js"></script>
    <script src="../../Js/jquery.js"></script>

    <script src="../MASTERPAGES/CSS/bootstrap.css"></script>
    <script  src="../JS/jquery.min.js"></script>
    <script src="../JS/JSConsultaFarm.js"></script>
     <div id="Div1"> 
    <div class="container Body">
        <div id="top" class="row">
            <h2>Clasificación de Consultas Farmacéuticas</h2>
        </div>
        <div class="row">
            <div class="col-xs-4 ">
                <section class="ne bg-info">
                    <fieldset>
                        <legend>Descripción</legend>
                    </fieldset>
                    <h5 style="color: black; text-align: left">Apartado para la clasificación de consultas, de los distintos
                        medicamentos que otorga el hospital de la Anexión de Nicoya.
                    </h5>
                </section>
            </div>
            <div class="col-xs-8">
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server" ViewStateMode="Enabled" EnableViewState="true">
                         <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
                         <asp:UpdatePanel ID="UpdatePanel" runat="server">
                           <ContentTemplate>
                        <div class="col-xs-12">
                         <h3 class="centran">Listado de consultas</h3>
                        <div class="consulta">
                            <table>
                                <tr>
                                    <th class="col-xs-3">
                                        <asp:Label runat="server" ID="lblVerPorEstado" Text="Ver Consultas por: "></asp:Label></th>                                    
                                    <th class="centran col-xs-3">
                                        <asp:DropDownList AutoPostBack="true" OnSelectedIndexChanged="DDLEstados_SelectedIndexChanged" CssClass="btn btn-default btn-sm" runat="server" Width="100%" ID="DDLEstados" ToolTip="Estados de las Consultas">
                                            <asp:ListItem Selected="True">Pendiente</asp:ListItem>
                                            <asp:ListItem>Resuelta</asp:ListItem>
                                        </asp:DropDownList>
                                    </th>  
                                    <th class="col-xs-6">
                                        <asp:Button ID="btnListTodo" runat="server" CssClass="btn btn-primary btn-sm" OnClick="btnListTodo_Click" Text="Ver Todas Las Consultas" ToolTip="Ver Todas Las Consultas" />
                                    </th>
                                </tr>                                
                            </table>
                            <br />
                            <asp:GridView ID="GVConsultas" runat="server" CellPadding="4"
                                OnPageIndexChanging="GVConsultas_PageIndexChanging" AutoGenerateColumns="False" AllowPaging="True"
                                OnSelectedIndexChanging="GVConsultas_SelectedIndexChanging" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GVConsultas_SelectedIndexChanged">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ButtonType="Button" ItemStyle-CssClass="btn-sm" ControlStyle-CssClass="btn btn-primary" ItemStyle-Height="2%" ItemStyle-Width="2%" SelectText="Responder y Clasificar" ShowSelectButton="True">                                        
                                    </asp:CommandField>                                    
                                    <asp:BoundField DataField="Codigo" HeaderText="Codigo Consulta" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="3%">
                                        <ItemStyle Font-Size="90%" Height="5%" Width="8%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Fecha" HeaderText="Fecha de Consulta" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="3%">
                                        <ItemStyle Font-Size="90%" Height="5%" Width="8%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Cedula" HeaderText="Cedula" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="15%" Visible="false">
                                        <ItemStyle Font-Size="90%" Height="5%" Width="15%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Nombre" HeaderText="Nombre de Persona" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="10%" Visible="false">
                                        <ItemStyle Font-Size="90%" Height="5%" Width="10%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PApellido" HeaderText="Primer Apellido" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="15%" Visible="false">
                                        <ItemStyle Font-Size="90%" Height="5%" Width="15%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="SApellido" HeaderText="Segundo Apellido" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="15%" Visible="false">
                                        <ItemStyle Font-Size="90%" Height="5%" Width="15%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Edad" HeaderText="Edad" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="2%">
                                        <ItemStyle Font-Size="90%" Height="5%" Width="2%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Peso" HeaderText="Peso" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="2%">
                                        <ItemStyle Font-Size="90%" Height="5%" Width="2%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Pregunta" HeaderText="Pregunta" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="15%" Visible="false">
                                        <ItemStyle Font-Size="90%" Height="5%" Width="15%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Correo" HeaderText="Correo" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="15%" Visible="false">
                                        <ItemStyle Font-Size="90%" Height="5%" Width="15%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CodMedi" HeaderText="Codigo Medicamento" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="2%" Visible="false">
                                        <ItemStyle Font-Size="90%" Height="5%" Width="2%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="NombMedi" HeaderText="Nombre Medicamento" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="20%">
                                        <ItemStyle Font-Size="90%" Height="5%" Width="20%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Fecha de Respuesta" HeaderText="Fecha de Respuesta" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="15%" Visible="false">
                                        <ItemStyle Font-Size="90%" Height="5%" Width="15%" />
                                    </asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                <SelectedRowStyle BackColor="LightCyan" ForeColor="DarkBlue" Font-Bold="true" />
                            </asp:GridView>
                        </div></div>
                         </ContentTemplate>
                         <Triggers>
                           <asp:AsyncPostBackTrigger EventName="Click" ControlID="btnListTodo"/>
                          </Triggers>
                     </asp:UpdatePanel>
                    </asp:View>
                    <asp:View ID="View2" runat="server" ViewStateMode="Disabled">
                         <div class="col-xg-4 ">
                        <div class="consulta">
                            <h3 class="centran">Datos de consulta</h3>
                            <table class="consulta">
                                <tr>
                                    <th class="col-xs-3">
                                        <asp:Label ID="LblEstadoConsulta" runat="server" Text="Estado de Consulta: " ToolTip="Estado consulta"> </asp:Label></th>
                                    <th class="col-xs-3">
                                        <asp:TextBox ID="txtEstadoConsulta" CssClass="btn btn-default" ReadOnly="true" runat="server"
                                            ToolTip="Estados de las consultas">           
                                        </asp:TextBox></th>
                                    <th class="col-xs-2">
                                        <asp:Label ID="LblCalificacion" runat="server" Text="Clasificación " ToolTip="Clasificación"> </asp:Label></th>
                                    <th class="col-xs-3">
                                        <asp:DropDownList CssClass="btn btn-primary btn-sm" ID="DDLCalificaciones" runat="server" ToolTip="Calificaciones de las consultas">
                                            <asp:ListItem Selected="true">Indique la Clasificación</asp:ListItem>
                                            <asp:ListItem>Vencimiento</asp:ListItem>
                                            <asp:ListItem>Uso terapéutico</asp:ListItem>
                                            <asp:ListItem>Terapéutica</asp:ListItem>
                                            <asp:ListItem>Potencia</asp:ListItem>
                                            <asp:ListItem>Presentación/Potencia</asp:ListItem>
                                            <asp:ListItem>Perfil terapéutico</asp:ListItem>
                                            <asp:ListItem>LOM</asp:ListItem>
                                            <asp:ListItem>Interacciones</asp:ListItem>
                                            <asp:ListItem>Existencia</asp:ListItem>
                                            <asp:ListItem>Estabilidad de medicamentos</asp:ListItem>
                                            <asp:ListItem>Equivalencia terapéutica</asp:ListItem>
                                            <asp:ListItem>Embarazo/Lactancia</asp:ListItem>
                                            <asp:ListItem>Efectos adversos</asp:ListItem>
                                            <asp:ListItem>Dosis</asp:ListItem>
                                            <asp:ListItem>Dilución</asp:ListItem>
                                            <asp:ListItem>Automedicación</asp:ListItem>
                                            <asp:ListItem>Contraindicación</asp:ListItem>
                                            <asp:ListItem>Almacenamiento</asp:ListItem>
                                            <asp:ListItem>Administrativo</asp:ListItem>
                                            <asp:ListItem>Administración</asp:ListItem>
                                        </asp:DropDownList>
                                    </th>
                                </tr>
                                <tr>
                                    <th colspan="5" class="col-xs-3">
                                        <asp:Label ID="LblNombre" runat="server" Text="Nombre"></asp:Label></th>                                    
                                </tr>
                                <tr>
                                    <th class="col-xs-8" colspan="5">
                                        <asp:TextBox style="text-align:left;" CssClass="btn btn-default" Width="100%" ReadOnly="true" runat="server" ID="TxtNombre"></asp:TextBox>
                                    </th>
                                </tr>
                                <tr>
                                    <th colspan="1" class="col-xs-2">
                                        <asp:Label ID="LblCedula" runat="server" Text="Cedula"></asp:Label></th>
                                    <th colspan="1" class="col-xs-1">
                                        <asp:Label ID="LblEdad" runat="server" Text="Edad"> </asp:Label></th>
                                    <th colspan="3" class="col-xs-1">
                                        <asp:Label ID="LblPeso" runat="server" Text=" Peso"></asp:Label></th>
                                </tr>
                                <tr>
                                     <th colspan="1" class="col-xs-2">
                                        <asp:TextBox style="text-align:left;" CssClass="btn btn-default" ReadOnly="true" runat="server" ID="txtCedula"></asp:TextBox></th>    
                                   
                                    <th colspan="1" class="col-xs-1">
                                        <asp:TextBox style="text-align:left;" CssClass="btn btn-default" ReadOnly="true" runat="server" ID="Txtedad"></asp:TextBox></th>
                                   
                                    <th colspan="3" class="col-xs-1">
                                        <asp:TextBox style="text-align:left;" CssClass="btn btn-default" ReadOnly="true" runat="server" ID="TxtPeso"></asp:TextBox></th>
                                </tr>
                                <tr>                                    
                                    <th class="col-xs-3">
                                        <asp:Label ID="LblNombMedi" runat="server" Text="Nombre Medicamento"></asp:Label>
                                    </th>
                                </tr>
                                <tr>
                                    <th colspan="5" class="col-xs-3">
                                        <asp:TextBox style="text-align:left;" CssClass="btn btn-default" ReadOnly="true" align="left" ID="TxtMedNombre" runat="server" Width="100%"></asp:TextBox>
                                    </th>
                                </tr>
                                <tr>
                                    <th colspan="4">
                                        <asp:Label ID="LblConsulta" runat="server" Text="Consulta:"></asp:Label>
                                    </th>
                                </tr>
                                <tr>
                                    <th colspan="4">
                                        <asp:TextBox style="text-align:left;" CssClass="btn btn-default" ReadOnly="true" ID="txtConsulta" MaxLength="500"
                                            Height="250px" Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    </th>                                   
                                </tr>
                                <tr>
                                    <th colspan="4">
                                        <asp:Label ID="LblRespuesta" runat="server" Text=" Respuesta:"></asp:Label>
                                    </th>                                    
                                </tr>
                                <tr>
                                    <th colspan="5">
                                        <asp:TextBox style="text-align:left;" CssClass="btn btn-default" ID="TxtRespuesta" MaxLength="500" 
                                            Height="250px" Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    </th>                                     
                                </tr>
                            </table>
                            <br />
                            <br />
                            <asp:Button CssClass="btn btn-primary pull-left" ID="btnAtras" runat="server" Text="Atras" OnClick="btnAtras_Click" />
                            <asp:Button CssClass="btn btn-primary pull-right" ID="btnGuardar" runat="server" Text="Enviar Respuesta y Guardar Calificación de consulta" OnClick="btnGuardar_Click" />
                        </div> 
                       </div>                      
                    </asp:View>                                     
                </asp:MultiView>
            </div>
        </div></div></div>
</asp:Content>


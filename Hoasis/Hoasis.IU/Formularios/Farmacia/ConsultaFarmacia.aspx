<%@ Page Title="Informacion de Medicamentos - HOASIS" Language="C#" MasterPageFile="~/Master/PagForms.Master" 
    AutoEventWireup="true" ValidateRequest="false"
     CodeBehind="~/Formularios/Farmacia/ConsultaFarmacia.aspx.cs" Inherits="Hoasis.IU.Formularios.Farmacia.ConsultaFarmacia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Informacion de Medicamentos - HOASIS</title>
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
    <script  src="../../Js/Validaciones/Validaciones.js"></script>
    <script src="../../Js/jquery.js"></script>
    <div id="principal"> 
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <div class="container Body">
        <div id="top" class="row">
            <h2>Consulta de Medicamentos</h2>
        </div>
        <div class="row">
            <div class="col-xs-4 ">
                <section class="ne bg-info">
                    <fieldset>
                        <legend>Descripción</legend>
                    </fieldset>
                    <section class="section">
                        <h5 style="color: black; text-align: left">Apartado para la consulta, acerca de los distintos
                        medicamentos que otorga el hospital de la Anexión de Nicoya.
                        </h5>
                    </section>
                    <br />
                </section>
            </div>            
            <div class="col-xs-8">
                <section>
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server" ViewStateMode="Enabled" EnableViewState="true">
                            <h3>Estos son tus datos personales</h3>
                            <table>
                                <tr>
                                    <th class="col-xs-2"><asp:Label ID="LblCedula" runat="server" Text="Cédula"></asp:Label></th>
                                    <th class="col-xs-4 btn-sm"><asp:TextBox ID="TxtCedula" runat="server" Font-Size="100%" MaxLength="10"
                                        CssClass="form-control btn-sm alignright" ReadOnly="true"></asp:TextBox></th>
                                </tr>
                                <tr>
                                    <th class="col-xs-2"><asp:Label ID="LblNombre" runat="server" Text="Nombre"></asp:Label></th>
                                    <th class="col-xs-8 btn-sm"><asp:TextBox ID="TxtNombre" runat="server" Font-Size="100%" Enabled="False"
                                        CssClass="form-control btn-sm alignright" ReadOnly="true"></asp:TextBox></th>
                                </tr>
                                <tr>                           
                                    <th class="col-xs-2"><asp:Label ID="LblPApellido" runat="server" Text="Primer Apellido"></asp:Label></th>
                                    <th class="col-xs-8 btn-sm"><asp:TextBox ID="TxtPApellido" runat="server" Font-Size="100%" Enabled="False"
                                        CssClass="form-control btn-sm alignright" ReadOnly="true"></asp:TextBox></th>
                                </tr>                                                       
                                <tr>
                                    <th class="col-xs-2"><asp:Label ID="LblSApellido" runat="server" Text="Segundo Apellido"></asp:Label></th>
                                    <th class="col-xs-8 btn-sm"><asp:TextBox ID="TxtSApellido" runat="server" Font-Size="100%" Enabled="False"
                                        CssClass="form-control btn-sm alignright" ReadOnly="true"></asp:TextBox></th>
                                </tr>                            
                                <tr>
                                    <th class="col-xs-2"><asp:Label ID="lblCorreo" runat="server" Text="Correo Electronico"></asp:Label></th>
                                    <th class="col-xs-8 btn-sm"><asp:TextBox ID="TxtCorreo" runat="server" Font-Size="100%" Enabled="False"
                                        CssClass="form-control btn-sm alignright" ReadOnly="true"></asp:TextBox></th>
                                </tr>                           
                                <tr>
                                    <th class="col-xs-2"><asp:Label ID="LblSedad" runat="server" Text="Edad"></asp:Label></th>                                
                                    <th class="col-xs-8 btn-sm"><asp:TextBox ID="TxtSEdad" runat="server" Enabled="false" Font-Size="100%"
                                        CssClass="form-control btn-sm alignright" ReadOnly="true"></asp:TextBox></th>
                                </tr>                            
                            </table>
                            <asp:Button ID="btnSiguiente1" CssClass="btn btn-primary pull-right" runat="server" Text="Siguiente" OnClick="btnSiguiente1_Click" />
                        </asp:View>
                        <asp:View ID="View2" runat="server" ViewStateMode="Disabled">                          
                              <div class="consulta">
                               <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                               <ContentTemplate>
                                <h3>Datos de la consulta</h3>
                                <div class="form-group">
                                    <asp:Label Font-Size="110%" runat="server" ID="lblMensage" Text="En caso que la consulta sea para tratar a un niño,
                                     de click en la opción  de abajo. De lo contrario, solo continúe con el siguiente paso."></asp:Label>
                                </div>
                                <div class="form-group">
                                    <asp:CheckBox ID="Ckb_Niño" runat="server" Text=" Niño(a)" OnCheckedChanged="Ckb_Niño_CheckedChanged"
                                        AutoPostBack="true" ToolTip="Selección que indica si la consulta esta dirigida a un menor de edad" />
                                </div>
                                <table>
                                   <tr>
                                    <th class="col-xs-4"><asp:Label align="right" CssClass="control-label" Width="100%" ID="Lbl_PesoNiño" runat="server" Visible="false" Text="Ingrese el peso del niño : "></asp:Label></th>
                                    <th class="col-xs-1 btn-sm"><asp:TextBox onkeypress="ValidaSoloNumeros()" CssClass="btn btn-default btn-sm" Width="100%" ID="Txt_PesoNiño" runat="server" MaxLength="3" Visible="false" Font-Size="100%"></asp:TextBox></th>
                                    <th class="col-xs-8"><asp:Label ID="LblMedidaPeso" CssClass="control-label" runat="server" Visible="false" Text="Kg"></asp:Label></th>
                                   </tr>                                
                                   <tr>
                                    <th class="col-xs-1"><asp:Label align="right" ID="lblEdad" Width="100%" CssClass="control-label" runat="server" Visible="false" Text="Edad del niño : " ToolTip="ingrese la edad del niño"></asp:Label></th>
                                    <th class="col-xs-1 btn-sm"><asp:DropDownList ID="DDLedadNiño" CssClass="btn btn-primary btn-sm" runat="server" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="DDLedadNiño_SelectedIndexChanged" OnTextChanged="DDLedadNiño_TextChanged">
                                            <asp:ListItem >0</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>11</asp:ListItem>
                                            <asp:ListItem Selected="True">12</asp:ListItem>
                                        </asp:DropDownList></th>    
                                    <th class="col-xs-8"><asp:Label ID="lblaños" CssClass="control-label" runat="server" Visible="false" Text="Años" ToolTip="Años cumplidos"></asp:Label></th>                                
                                   </tr>
                                   <tr>
                                    <th class="col-xs-1"><asp:Label align="right" ID="lblmeses" Width="100%" runat="server" CssClass="control-label" Visible="false" Text="Meses cumplidos:" ToolTip="Meses cumplidos"></asp:Label></th>
                                    <th class="col-xs-1 btn-sm"><asp:DropDownList ID="DDLmeses" runat="server" CssClass="btn btn-primary btn-sm" Visible="false">
                                            <asp:ListItem Selected="True">0</asp:ListItem>
                                            <asp:ListItem >1</asp:ListItem>
                                            <asp:ListItem >2</asp:ListItem>
                                            <asp:ListItem >3</asp:ListItem>
                                            <asp:ListItem >4</asp:ListItem>
                                            <asp:ListItem >5</asp:ListItem>
                                            <asp:ListItem >6</asp:ListItem>
                                            <asp:ListItem >7</asp:ListItem>
                                            <asp:ListItem >8</asp:ListItem>
                                            <asp:ListItem >9</asp:ListItem>
                                            <asp:ListItem >10</asp:ListItem>
                                            <asp:ListItem >11</asp:ListItem>
                                        </asp:DropDownList></th>
                                    <th class="col-xs-8"><asp:Label runat="server" CssClass="control-label" Visible="false" ID="lblmmeses" Text="Meses"></asp:Label></th>
                                   </tr>
                                 </table>                                    
                                <br />
                                <br />
                                 </ContentTemplate>
                                 <Triggers>
                                  <asp:AsyncPostBackTrigger EventName="Click" ControlID="btnBuscar"/>
                                  </Triggers>
                                 </asp:UpdatePanel>
                                <p><h4 align="center">Se consideran niños(as) farmacéuticamente, cuando este es menor de 12 años</h4>
                                    <p>
                                    </p>
                                    <br />
                                    <br />
                                    <div class="form-group">
                                        <asp:Button ID="btnAtras2" runat="server" CssClass="btn btn-primary pull-left" OnClick="btnAtras_Click" Text="Atras" />
                                        <asp:Button ID="btnSiguiente2" runat="server" CssClass="btn btn-primary pull-right" OnClick="btnSiguiente2_Click" Text="Siguiente" />
                                    </div>
                                    <p>
                                    </p>
                                </p>
                            </div>
                        </asp:View>
                        <asp:View ID="View3" runat="server" ViewStateMode="Disabled">                            
                              <asp:UpdatePanel ID="UpdatePanel" runat="server">
                               <ContentTemplate>
                                <div class="consulta">
                                <h3 class="centran">Seleccion de Medicamento</h3>                                
                                <table>
                                    <tr>
                                        <th class="col-xs-8 btn-sm"><asp:TextBox ID="TxtConsultaMedicamento" CssClass="form-control" runat="server" Width="100%" placeholder="ingrese el codigo o el nombre del medicamento"
                                                         OnTextChanged="TxtConsultaMedicamento_TextChanged" AutoPostBack="true"></asp:TextBox></th>
                                        <th class="col-xs-2 btn-sm"><asp:Button ID="btnBuscar" CssClass="btn btn-default btn-sm" runat="server" Text="Buscar" OnClick="btnBuscar_Click" /></th>
                                    </tr>
                                </table>
                                <h5>Seleccione un medicamento de la lista para continuar con la consulta</h5>
                                <br />
                                <div>
                                    <asp:GridView ID="DGVMedicamentos" runat="server" CellPadding="4"
                                        AutoGenerateColumns="False" AllowPaging="True"
                                        OnLoad="DGVMedicamentos_Load" OnPageIndexChanging="DGVMedicamentos_PageIndexChanging" OnSelectedIndexChanged="DGVMedicamentos_SelectedIndexChanged"
                                        ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:CommandField ButtonType="Button" ItemStyle-CssClass="btn-sm" ControlStyle-CssClass="btn btn-primary btn-sm"
                                                ShowSelectButton="True">                                                
                                            </asp:CommandField>
                                            <asp:BoundField DataField="Codigo" HeaderText="Código" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="15%" SortExpression="1">
                                                <ItemStyle Font-Size="90%" Height="5%" Width="15%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="NOMBRE" HeaderText="Nombre" ItemStyle-Font-Size="90%" ItemStyle-Height="5%" ItemStyle-Width="80%">
                                                <ItemStyle Font-Size="90%" Height="5%" Width="80%" />
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
                                    <br />
                                </div>
                            </div>
                            </ContentTemplate>
                            <Triggers>
                            <asp:AsyncPostBackTrigger EventName="Click" ControlID="btnBuscar"/>
                             </Triggers>
                             </asp:UpdatePanel>
                            <asp:Button ID="btnAtras3" CssClass="btn btn-primary pull-left" runat="server" Text="Atras" OnClick="btnAtras3_Click" />
                        </asp:View>
                        <asp:View ID="View4" runat="server" ViewStateMode="Enabled">
                            <h3 class="centran">Ingrese su consulta</h3>
                            <h4>Para el medicamento: </h4>
                            <asp:Label runat="server" ID="v4medica" Font-Size="100%" BorderColor="#6666FF" class="form-control" Text=""></asp:Label>
                            <br />
                            <div class="consulta">
                                <asp:TextBox ID="Txt_Consulta" runat="server" Font-Size="100%" BorderColor="#6666FF"
                                    ToolTip="Ingresa la consulta a ser enviada" BorderStyle="Solid" Height="250px" Width="100%" TextMode="MultiLine" MaxLength="500"></asp:TextBox><br />
                                <br />
                                <asp:Button ID="Atras4" CssClass="btn btn-primary pull-left" runat="server" Text="Atras" OnClick="btnAtras_Click" />
                                <asp:Button runat="server" CssClass="btn btn-primary pull-right" ID="enviar" OnClick="enviar_Click" Text="Enviar Consulta"></asp:Button>
                            </div>
                        </asp:View>
                    </asp:MultiView>
                </section>
            </div>
        </div> </div></div>
</asp:Content>


using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TIDCCSS;


public partial class UI_PersonalHospital : System.Web.UI.Page
{
    DBTarjetaIndiceDataContext db = new DBTarjetaIndiceDataContext();
    clsFuncionario fun = new clsFuncionario();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void limpiarcampos() {
        txtApelli1.Text="";
        txtApelli2.Text = "";
        txtArea.Text = "";
        txtCarnet.Text = "";
        txtDirec.Text = "";
        txtFecNac.Text = Convert.ToString(DateTime.Now);
        txtNombPac.Text = "";
        txtPass.Text = "";
        txtPass2.Text = "";
        txtTelefono.Text = "";
        txtTipUsa.Value = "";
        
    
    }
    public void clsFuncionariollenar() {
        fun.Ps_PriApeFun1 = txtApelli1.Text;
        fun.Ps_SegApe1 = txtApelli2.Text;
        fun.Ps_Tef1 = txtTelefono.Text;
        fun.Ps_NomFun1 = txtNombPac.Text;
        fun.Pn_CedFun1 = txtCedulaFuncionario.Text;
        fun.Ps_AreTra1 = txtArea.Text;
        fun.Ps_CarFun1 = txtCarnet.Text;
        fun.Ps_Dir1 = txtDirec.Text;
        fun.Ps_FecNac1 = Convert.ToDateTime(txtFecNac.Text);

    }
    protected void txtCedulaFuncionario_TextChanged(object sender, EventArgs e)
    {
        try
        {
            string estado = "";
            var datos = db.SP_SELECCION_USUARIOS(Convert.ToInt32(txtCedulaFuncionario.Text));
            foreach (SP_SELECCION_USUARIOSResult resultados in datos)
            {
                txtApelli1.Text = resultados.APELLIDO_1_FUNCIONARIO;
                txtApelli2.Text = resultados.APELLIDO_2_FUNCIONARIO;
                txtArea.Text = resultados.AREA_TRABAJO_FUNCIONARIO;
                txtDirec.Text = resultados.DIRECCION_FUNCIONARIO;
                txtTelefono.Text = Convert.ToString(resultados.TELEFONO_FUNCIONARIO);
                txtCarnet.Text = Convert.ToString(resultados.CARNET_CCSS_FUNCIONARIO);
                txtNombPac.Text = resultados.NOMBRE_FUNCIONARIO;
                txtFecNac.Text = String.Format("{0:yyyy-MM-dd}", resultados.FECHA_NACIMIENTO);
                estado = resultados.ESTAD;
            }
            if (estado == "existe")
            {
                txtApelli1.Focus();
            }
            else
            { Response.Write("<script language=javascript>alert('El funcionario actualmente no existe en el sistema!!');</script>");
            limpiarcampos();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            clsFuncionariollenar();
            if (txtPass.Text == txtPass2.Text)
            {
                db.SP_INSERTAR_USUARIO(fun.Pn_CedFun1, fun.Ps_PriApeFun1, fun.Ps_SegApe1,
                                       fun.Ps_NomFun1, Convert.ToInt32(fun.Ps_Tef1),
                                       Convert.ToInt32(fun.Ps_CarFun1), fun.Ps_Dir1,
                                       fun.Ps_FecNac1, fun.Ps_AreTra1);
                if (txtTipUsa.Value == "Usuario")
                {
                    db.SP_INSERTAR_ROLLES(fun.Pn_CedFun1, txtTipUsa.Value, txtPass2.Text);
                    Response.Write("<script language=javascript>alert('El funcionario se agrego correctamente!!');</script>");
                    limpiartodo();
                }
                else
                {
                    var manager = new UserManager();
                    var user = new ApplicationUser() { UserName = txtCedulaFuncionario.Text };
                    IdentityResult result = manager.Create(user, txtPass2.Text);
                    if (result.Succeeded)
                    {
                        //IdentityHelper.SignIn(manager, user, isPersistent: false);
                        // IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                        Response.Write("<script language=javascript>alert('El funcionario se agrego correctamente!!');</script>");
                        limpiartodo();
                    }
                    else
                    {
                        Response.Write("<script language=javascript>alert('Error faltal!!');</script>");
                    }

                }

            }
            else
            {
                Response.Write("<script language=javascript>alert('Las contraseñas no coinciden!!');</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
        finally {
        //    Response.Redirect("PersonalHospital");

        }
    }
    public void limpiartodo() {
        txtCedulaFuncionario.Text = "";
        txtApelli1.Text = "";
        txtApelli2.Text = "";
        txtArea.Text = "";
        txtCarnet.Text = "";
        txtDirec.Text = "";
        txtFecNac.Text = Convert.ToString(DateTime.Now); 
        txtNombPac.Text = "";
        txtPass.Text = "";
        txtPass2.Text = "";
        txtTelefono.Text = "";
        txtTipUsa.Value = "";
    }
}
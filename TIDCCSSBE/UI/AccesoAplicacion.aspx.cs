using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using TIDCCSS;

public partial class UI_AccesoAplicacion : System.Web.UI.Page
{
    DBTarjetaIndiceDataContext db = new DBTarjetaIndiceDataContext();//Conexión linq
    protected void Page_Load(object sender, EventArgs e)
    {
    }

   
    protected void LogIn(object sender, EventArgs e)
    {
        Session["user"] = true;
        Session["pass"] = true;
        Session["user"] = UserName.Text;
        Session["pass"] = Password.Text;
        string respuesta = "";
        try
        {
            var datos = db.SP_APLICACIONSEGURIDAD(UserName.Text, Password.Text);
            foreach (SP_APLICACIONSEGURIDADResult resultado in datos)
            {
                respuesta = resultado.EXISTENCIA;
            }
            if (respuesta == "EXISTE")
                Response.Redirect("~/Default");
            else
                Response.Write("<script language=javascript>alert('Usuario o Contraseña son incorrectadas!!');</script>");

            if (IsValid)
            {
                // Validate the user password
                var manager = new UserManager();
                ApplicationUser user = manager.Find(UserName.Text, Password.Text);
                if (user != null)
                {
                    IdentityHelper.SignIn(manager, user, RememberMe.Checked);
                    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Usuario o Contraseña son incorrectadas!!');</script>");
                }
            }
        }
        catch (Exception ex) {
            Response.Write(ex);
        }

    }
}
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

    protected void Button1_Click(object sender, EventArgs e)
    {

        var datos = db.SP_APLICACIONSEGURIDAD(txtUsuario.Text, txtPassword.Text);


            Response.Write("<script language=javascript>alert('Usuario o Contraseña son incorrectadas!!');</script>");

        if (IsValid)
        {
            // Validate the user password
            var manager = new UserManager();
            ApplicationUser user = manager.Find(txtUsuario.Text, txtPassword.Text);
            if (user != null)
            {
               // IdentityHelper.SignIn(manager, user, RememberMe.Checked);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["Default"], Response);
            }
            else
            {
                Response.Write("<script language=javascript>alert('Usuario o Contraseña son incorrectadas!!');</script>");
            }
        }
    }
}
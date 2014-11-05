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
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = "Lester", b = "1234", c, d;
        c = txtUsuario.Text;
        d = txtPassword.Text;

        if (a == c && b == d)
        {
            Response.Redirect("~/Default");
            Session["User"] = true;
            Session["Pass"] = true;
            Session["User"] = a;
            Session["Pass"] = b;
        }
        else
        {

            Response.Write("<script language=javascript>alert('Usuario o Contraseña son incorrectadas!!');</script>");
        }
    }
}
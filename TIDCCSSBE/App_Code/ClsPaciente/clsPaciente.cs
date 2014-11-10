using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsPaciente
/// </summary>
public class clsPaciente
{
    private string Ps_IdePac;
    private string Ps_PriApe;
    private string Ps_SegApe;
    private string Ps_NomPac;
    private string Ps_Sex;
    private string Ps_EstCiv;
    private DateTime Pd_FecNac;
    private string Ps_Obs;

    public string Ps_IdentiPa
    {
        get { return Ps_IdePac; }
        set { Ps_IdePac = value; }
    }

    public string Ps_PriApel
    {
        get { return Ps_PriApe; }
        set { Ps_PriApe = value; }
    }

    public string Ps_SegApel
    {
        get { return Ps_SegApe; }
        set { Ps_SegApe = value; }
    }

    public string Ps_NomPa
    {
        get { return Ps_NomPac; }
        set { Ps_NomPac = value; }
    }

    public string Ps_Sexo
    {
        get { return Ps_Sex; }
        set { Ps_Sex = value; }
    }

    public string Ps_EstCivil
    {
        get { return Ps_EstCiv; }
        set { Ps_EstCiv = value; }
    }

    public DateTime Pd_FecNaci
    {
        get { return Pd_FecNac; }
        set { Pd_FecNac = value; }
    }

    public string Ps_Obse
    {
        get { return Ps_Obs; }
        set { Ps_Obs = value; }
    }

    
	public clsPaciente()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
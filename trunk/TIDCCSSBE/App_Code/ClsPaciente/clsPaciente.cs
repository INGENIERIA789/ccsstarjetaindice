using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsPaciente
/// </summary>
public class clsPaciente
{
    private string ps_IdentiPa;

    public string Ps_IdentiPa
    {
        get { return ps_IdentiPa; }
        set { ps_IdentiPa = value; }
    }
    private string ps_PriApe;

    public string Ps_PriApe
    {
        get { return ps_PriApe; }
        set { ps_PriApe = value; }
    }
    private string ps_SegApe;

    public string Ps_SegApe
    {
        get { return ps_SegApe; }
        set { ps_SegApe = value; }
    }
    private string ps_NomPa;

    public string Ps_NomPa
    {
        get { return ps_NomPa; }
        set { ps_NomPa = value; }
    }
    private string ps_Sexo;

    public string Ps_Sexo
    {
        get { return ps_Sexo; }
        set { ps_Sexo = value; }
    }
    private string ps_EstCivil;

    public string Ps_EstCivil
    {
        get { return ps_EstCivil; }
        set { ps_EstCivil = value; }
    }
    private DateTime pd_FecNac;

    public DateTime Pd_FecNac
    {
        get { return pd_FecNac; }
        set { pd_FecNac = value; }
    }
    private DateTime pd_FecDef;

    public DateTime Pd_FecDef
    {
        get { return pd_FecDef; }
        set { pd_FecDef = value; }
    }
    private string ps_Obs;

    public string Ps_Obs
    {
        get { return ps_Obs; }
        set { ps_Obs = value; }
    }

    
	public clsPaciente()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
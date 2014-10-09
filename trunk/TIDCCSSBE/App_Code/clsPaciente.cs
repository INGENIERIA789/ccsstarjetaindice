using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsPaciente
/// </summary>
public class clsPaciente
{
    private string ps_NomPa;
    private string ps_PriApe;
    private string ps_SegApe;
    private int pn_CedPa;
    private string ps_Sexo;
    private string ps_EstCivil;
    private DateTime pd_FecNac;
    private DateTime pd_FecDef;
    private string ps_Obs;

    
    public string Ps_NomPa
    {
        get
        {
            return ps_NomPa;
        }
        set
        {
            ps_NomPa = value;
        }
    }
    public string Ps_PriApe
    {
        get
        {
            return ps_PriApe;
        }
        set
        {
            ps_PriApe = value;
        }
    }
    public string Ps_SegApe
    {
        get
        {
            return ps_SegApe;
        }
        set
        {
            ps_SegApe = value;
        }
    }
    public int Pn_CedPa
    {
        get
        {
            return pn_CedPa;
        }
        set
        {
            pn_CedPa = value;
        }
    }
    public string Ps_Sexo
    {
        get
        {
            return ps_Sexo;
        }
        set
        {
           ps_Sexo = value;
        }
    }
    public string Ps_EstCivil
    {
        get
        {
            return ps_EstCivil;
        }
        set
        {
            ps_EstCivil = value;
        }
    }
    public DateTime Pd_FecNac
    {
        get
        {
            return pd_FecNac;
        }
        set
        {
            pd_FecNac = value;
        }
    }
    public DateTime Pd_FecNac
    {
        get
        {
            return pd_FecNac;
        }
        set
        {
            pd_FecNac = value;
        }
    }
    public string Ps_Obs
    {
        get
        {
            return ps_Obs;
        }
        set
        {
            ps_Obs = value;
        }
    }
	public clsPaciente()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsHojaUrgencia
/// </summary>
public class clsHojaUrgencia
{
    private string Ps_CedPac;
    private string Ps_PriApe;
    private string Ps_SegApe;
    private string Ps_NomPac;
    private string Pn_NumAse;
    private DateTime Pd_FecReg;
    private string Ps_Obs;


    public string Ps_CedPaU
    {
        get { return Ps_CedPac; }
        set { Ps_CedPac = value; }
    }
    public string Ps_PriApePaU
    {
        get { return Ps_PriApe; }
        set { Ps_PriApe = value; }
    }
    public string Ps_SegApePaU
    {
        get { return Ps_SegApe; }
        set { Ps_SegApe = value; }
    }
    public string Ps_NomPAU
    {
        get { return Ps_NomPac; }
        set { Ps_NomPac = value; }
    }
    public string Pn_NumAseguradoU
    {
        get { return Pn_NumAse; }
        set { Pn_NumAse = value; }
    }
    public DateTime Pd_FecRegU
    {
        get { return Pd_FecReg; }
        set { Pd_FecReg = value; }
    }
    public string Ps_ObsU
    {
        get { return Ps_Obs; }
        set { Ps_Obs = value; }
    }
	public clsHojaUrgencia()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
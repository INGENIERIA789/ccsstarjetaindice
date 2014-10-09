using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsHojaUrgencia
/// </summary>
public class clsHojaUrgencia
{
    private int ps_CedPaU;
    private string ps_PriApePaU;
    private string ps_SegApePaU;
    private string ps_NomPAU;
    private int pn_NumAseguradoU;
    private DateTime pd_FecRegU;
    private string ps_ObsU;


    public int Ps_CedPaU
    {
        get { return ps_CedPaU; }
        set { ps_CedPaU = value; }
    }
    public string Ps_PriApePaU
    {
        get { return ps_PriApePaU; }
        set { ps_PriApePaU = value; }
    }
    public string Ps_SegApePaU
    {
        get { return ps_SegApePaU; }
        set { ps_SegApePaU = value; }
    }
    public string Ps_NomPAU
    {
        get { return ps_NomPAU; }
        set { ps_NomPAU = value; }
    }
    public int Pn_NumAseguradoU
    {
        get { return pn_NumAseguradoU; }
        set { pn_NumAseguradoU = value; }
    }
    public DateTime Pd_FecRegU
    {
        get { return pd_FecRegU; }
        set { pd_FecRegU = value; }
    }
    public string Ps_ObsU
    {
        get { return ps_ObsU; }
        set { ps_ObsU = value; }
    }
	public clsHojaUrgencia()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
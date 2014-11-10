using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsExamenExterno
/// </summary>
public class clsExamenExterno
{
    private string ps_CedPaEe;   
    private string ps_PriApePaEe;    
    private string ps_SegApePaEe;    
    private string ps_NomPAEe;    
    private string pn_NumAseguradoEe;    
    private string ps_Especialidad;    
    private DateTime ps_FecRegEe;    
    private string ps_ObsEe;
    
    public string Ps_CedPaEe
    {
        get { return ps_CedPaEe; }
        set { ps_CedPaEe = value; }
    }

    public string Ps_PriApePaEe
    {
        get { return ps_PriApePaEe; }
        set { ps_PriApePaEe = value; }
    }
    public string Ps_SegApePaEe
    {
        get { return ps_SegApePaEe; }
        set { ps_SegApePaEe = value; }
    }
    public string Ps_NomPAEe
    {
        get { return ps_NomPAEe; }
        set { ps_NomPAEe = value; }
    }
    public string Pn_NumAseguradoEe
    {
        get { return pn_NumAseguradoEe; }
        set { pn_NumAseguradoEe = value; }
    }

    public string Ps_Especialidad
    {
        get { return ps_Especialidad; }
        set { ps_Especialidad = value; }
    }

    public DateTime Ps_FecRegEe
    {
        get { return ps_FecRegEe; }
        set { ps_FecRegEe = value; }
    }
    public string Ps_ObsEe
    {
        get { return ps_ObsEe; }
        set { ps_ObsEe = value; }
    }

	public clsExamenExterno()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
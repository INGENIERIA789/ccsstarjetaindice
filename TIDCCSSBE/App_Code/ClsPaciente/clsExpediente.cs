using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsExpediente
/// </summary>
public class clsExpediente 
{
    private string Ps_CedPac;
    private string Ps_BloExp;
    private string Ps_CubExp;
    private string Ps_EstExp;
    private DateTime Pd_CreExp;

    public DateTime PdCreEX
    {
        get { return Pd_CreExp; }
        set { Pd_CreExp = value; }
    }
    private string Ps_Obs;
    public string PsCubEx
    {
        get { return Ps_CubExp; }
        set { Ps_CubExp = value; }
    }
    
    public string PsObs
    {
        get { return Ps_Obs; }
        set { Ps_Obs = value; }
    }
    

    public string PsEstEx
    {
        get { return Ps_EstExp; }
        set { Ps_EstExp = value; }
    }

    public string PsBloEx
    {
        get { return Ps_BloExp; }
        set { Ps_BloExp = value; }
    }

    public string PsCedPac
    {
        get { return Ps_CedPac; }
        set { Ps_CedPac = value; }
    }
	public clsExpediente()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
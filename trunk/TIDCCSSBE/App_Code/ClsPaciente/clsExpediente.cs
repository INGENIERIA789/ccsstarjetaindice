using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsExpediente
/// </summary>
public class clsExpediente 
{
    private string psCedPac;
    private string psBloEx;
    private string psCubEx;
    private string psEstEx;
    private DateTime pdCreEX;

    public DateTime PdCreEX
    {
        get { return pdCreEX; }
        set { pdCreEX = value; }
    }
    private string psObs;
    public string PsCubEx
    {
        get { return psCubEx; }
        set { psCubEx = value; }
    }
    
    public string PsObs
    {
        get { return psObs; }
        set { psObs = value; }
    }
    

    public string PsEstEx
    {
        get { return psEstEx; }
        set { psEstEx = value; }
    }

    public string PsBloEx
    {
        get { return psBloEx; }
        set { psBloEx = value; }
    }

    public string PsCedPac
    {
        get { return psCedPac; }
        set { psCedPac = value; }
    }
	public clsExpediente()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
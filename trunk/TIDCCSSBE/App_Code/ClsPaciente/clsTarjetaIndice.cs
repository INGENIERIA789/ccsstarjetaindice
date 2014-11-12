using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsTarjetaIndice
/// </summary>
public class clsTarjetaIndice
{
    private string Ps_CedPac;
    private DateTime Pd_FecCre;
    private string Ps_ObsTar;
    private string Ps_EstTar;
    private string Pi_CedFun;

    public string Pi_CedFun1
    {
        get { return Pi_CedFun; }
        set { Pi_CedFun = value; }
    }

    public string Pn_CedPaTid
    {
        get { return Ps_CedPac; }
        set { Ps_CedPac = value; }
    }



    public DateTime Pd_FecCreacionTid
    {
        get { return Pd_FecCre; }
        set { Pd_FecCre = value; }
    }

    public string PsEstTar
    {
        get { return Ps_EstTar; }
        set { Ps_EstTar = value; }
    }

    public string PsObsTarInd
    {
        get { return Ps_ObsTar; }
        set { Ps_ObsTar = value; }
    }

    



    
	public clsTarjetaIndice()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
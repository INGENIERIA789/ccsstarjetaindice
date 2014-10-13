using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsTarjetaIndice
/// </summary>
public class clsTarjetaIndice
{
    private int pn_CedPaTid;

    public int Pn_CedPaTid
    {
        get { return pn_CedPaTid; }
        set { pn_CedPaTid = value; }
    }
    private DateTime pd_FecCreacionTid;

    public DateTime Pd_FecCreacionTid
    {
        get { return pd_FecCreacionTid; }
        set { pd_FecCreacionTid = value; }
    }
    private string psEstTar;

    public string PsEstTar
    {
        get { return psEstTar; }
        set { psEstTar = value; }
    }
    private string psObsTarInd;

    public string PsObsTarInd
    {
        get { return psObsTarInd; }
        set { psObsTarInd = value; }
    }
    private int piCedFun;

    public int PiCedFun
    {
        get { return piCedFun; }
        set { piCedFun = value; }
    }



    
	public clsTarjetaIndice()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
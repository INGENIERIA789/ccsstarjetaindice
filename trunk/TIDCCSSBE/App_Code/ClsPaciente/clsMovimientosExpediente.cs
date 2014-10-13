using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsMovimientosExpediente
/// </summary>
public class clsMovimientosExpediente
{
    private string pn_CedPaSE;

    public string Pn_CedPaSE
    {
        get { return pn_CedPaSE; }
        set { pn_CedPaSE = value; }
    }
    private int pn_CodArea;

    public int Pn_CodArea
    {
        get { return pn_CodArea; }
        set { pn_CodArea = value; }
    }
    private int pn_CodDoctor;

    public int Pn_CodDoctor
    {
        get { return pn_CodDoctor; }
        set { pn_CodDoctor = value; }
    }
    private DateTime pd_FecSalida;

    public DateTime Pd_FecSalida
    {
        get { return pd_FecSalida; }
        set { pd_FecSalida = value; }
    }
    private string ps_Obs;

    public string Ps_Obs
    {
        get { return ps_Obs; }
        set { ps_Obs = value; }
    }
    private string Ps_Res;

    public string Ps_Res1
    {
        get { return Ps_Res; }
        set { Ps_Res = value; }
    }

 
	public clsMovimientosExpediente()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
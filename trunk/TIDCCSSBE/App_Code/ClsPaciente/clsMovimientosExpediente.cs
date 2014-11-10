using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsMovimientosExpediente
/// </summary>
public class clsMovimientosExpediente
{
    private string Ps_CedPac;
    private int Pn_CodAre;
    private int Pn_CodDoc;
    private DateTime Pd_FecMov;
    private string Ps_Obs;
    private string Ps_Est;
    private string Ps_Res;


    public DateTime Pd_FecSalida
    {
        get { return Pd_FecMov; }
        set { Pd_FecMov = value; }
    }
    public string Pn_CedPaSE
    {
        get { return Ps_CedPac; }
        set { Ps_CedPac = value; }
    }
    public int Pn_CodArea
    {
        get { return Pn_CodAre; }
        set { Pn_CodAre = value; }
    }
    public int Pn_CodDoctor
    {
        get { return Pn_CodDoc; }
        set { Pn_CodDoc = value; }
    }
    public string Ps_Obse
    {
        get { return Ps_Obs; }
        set { Ps_Obs = value; }
    }
    public string Ps_Esta
    {
        get { return Ps_Est; }
        set { Ps_Est = value; }
    }
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
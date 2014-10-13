using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsEntradaExpediente
/// </summary>
public class clsEntradaExpediente
{
    private int ps_CedPaEN;

    public int Ps_CedPaEN
    {
        get { return ps_CedPaEN; }
        set { ps_CedPaEN = value; }
    }
    private string ps_Responsable;

    public string Ps_Responsable
    {
        get { return ps_Responsable; }
        set { ps_Responsable = value; }
    }
    private int ps_CodEspecialidad;

    public int Ps_CodEspecialidad
    {
        get { return ps_CodEspecialidad; }
        set { ps_CodEspecialidad = value; }
    }
    private DateTime ps_Entrad;

    public DateTime Ps_Entrad
    {
        get { return ps_Entrad; }
        set { ps_Entrad = value; }
    }
    private string ps_Obs;

    public string Ps_Obs
    {
        get { return ps_Obs; }
        set { ps_Obs = value; }
    } 

	public clsEntradaExpediente()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
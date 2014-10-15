using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsDoctor
/// </summary>
public class clsDoctor
{
    private int pn_CodDoc;

    public int Pn_CodDoc
    {
        get { return pn_CodDoc; }
        set { pn_CodDoc = value; }
    }
    private string ps_NomDoc;

    public string Ps_NomDoc
    {
        get { return ps_NomDoc; }
        set { ps_NomDoc = value; }
    }
    private string ps_PriApe;
    private string ps_SegApe;
    private int pn_CodEspecialidad;
	public clsDoctor()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
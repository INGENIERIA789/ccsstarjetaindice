using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsDetallePaciente
/// </summary>
public class clsDetallePaciente
{
    private string Ps_NomPac;
    private string Ps_NomMad;
    private string Ps_Dom;
    private string Ps_IdePac;
    private string Ps_CodPat;
   
    public string PiCodPa
    {
        get { return Ps_CodPat; }
        set { Ps_CodPat = value; }
    }
    public string PsIndPac
    {
        get { return Ps_IdePac; }
        set { Ps_IdePac = value; }
    }
   

  
    private string psNomPat;

    public string PsNomPat
    {
        get { return psNomPat; }
        set { psNomPat = value; }
    }
    private string psObs;


public string PsNomPa
    {
        get { return Ps_NomPac; }
        set { Ps_NomPac = value; }
    }
    public string PsNomMa
    {
        get { return Ps_NomMad; }
        set { Ps_NomMad = value; }
    }

    public string PsDom
    {
        get { return Ps_Dom; }
        set { Ps_Dom = value; }
    }

    public string PsObs
    {
        get { return psObs; }
        set { psObs = value; }
    }
	public clsDetallePaciente()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
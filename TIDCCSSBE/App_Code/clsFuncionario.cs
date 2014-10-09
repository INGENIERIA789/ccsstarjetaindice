using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsFuncionario
/// </summary>
public class clsFuncionario
{
    private int pn_CedFun;
    private string ps_PriApeFun;
    private string ps_SegApeFun;
    private string ps_NombreFun;
    private bool pb_EstadoFun;
    public int Pn_CedFun
    {
        get
        {
            return pn_CedFun;
        }
        set
        {
            pn_CedFun = value;
        }

    }
    public string Ps_PriApeFun
    {
        get
        {
            return ps_PriApeFun;
        }
        set
        {
            ps_PriApeFun = value;
        }
    }
    public string Ps_SegApeFun
    {
        get
        {
            return ps_SegApeFun;
        }
        set
        {
            ps_SegApeFun = value;
        }
    }
    public string Ps_NombreFun
    {
        get
        {
            return ps_NombreFun;
        }
        set
        {
            ps_NombreFun = value;
        }
    }
    public bool Pb_EstadoFun
    {
        get
        {
            return pb_EstadoFun;
        }
        set
        {
            pb_EstadoFun = value;
        }
    }
	public clsFuncionario()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
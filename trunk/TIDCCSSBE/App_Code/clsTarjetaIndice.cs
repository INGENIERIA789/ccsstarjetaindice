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
    private DateTime pd_FecCreacionTid;
    private string ps_Cubiculo_BloqueTid;
    private bool pb_EstadoTid;
    private string ps_ObsTid;


    public int Pn_CedPaTid
    {
        get
        {
            return pn_CedPaTid;
        }
        set
        {
            pn_CedPaTid = value;
        }
    }
    public DateTime Pd_FecCreacionTid
    {
        get
        {
            return pd_FecCreacionTid; 
        }
        set
        {
            pd_FecCreacionTid= value;
        }
    }

    public string Ps_Cubiculo_BloqueTid
    {
        get
        {
            return ps_Cubiculo_BloqueTid;
        }
        set
        {
           ps_Cubiculo_BloqueTid = value;
        }
    }
    public bool Pb_EstadoTid
    {
        get
        {
            return pb_EstadoTid;
        }
        set
        {
            pb_EstadoTid = value;
        }
    }
    public string Ps_ObsTid
    {
        get
        {
            return ps_ObsTid;
        }
        set
        {
            ps_ObsTid = value;
        }
    }

    
	public clsTarjetaIndice()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
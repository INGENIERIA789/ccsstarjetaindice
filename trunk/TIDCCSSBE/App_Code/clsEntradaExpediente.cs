﻿using System;
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
    private int ps_CodEspecialidad;
    private DateTime ps_Entrad;
    private string ps_Obs; 

	public clsEntradaExpediente()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}
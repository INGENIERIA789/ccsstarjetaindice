using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Hoasis.BS.Dominio.Acciones
{
    public class Activacion
    {
        public string Contraseña()
        {
            Char[] abcdario = { 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'z', 'x', 'c', 'v', 'b', 'n', 'm', 
                                  'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M',
                              '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};//new Char[21];
            Char[] numeros = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' }; //new Char[10];
            Random ram = new Random();
            string password = string.Empty;

            for (int i = 0; i < 8; i++)
            {
                int rm = ram.Next(0, 2);

                if (rm == 0)
                {
                    password += ram.Next(0, 10);
                }
                else
                {
                    password += abcdario[ram.Next(0, 62)];
                }
            }
            return password;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Bank
{
    internal class Itog
    {
        public string Name { get; set; }
        public double Dohod { get; set; }
        public double FullSum { get; set; }
        public double Procent { get; set; }
        public double Dep { get; set; }
        public double Period { get; set; }

        public Itog(string name, double dohod, double fullSum, double procent, double dep, double period, double nach)
        {
            Name = name;
            Dohod = dohod;
            FullSum = fullSum;
            Procent = procent;
            Dep = dep;
            Period = period;
        }
    }
}

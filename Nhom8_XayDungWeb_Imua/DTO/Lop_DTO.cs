using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Lop_DTO
    {
        string msSP, tenSP, mota;
        int gia;

        public string MsSP { get => msSP; set => msSP = value; }
        public string TenSP { get => tenSP; set => tenSP = value; }
        public string Mota { get => mota; set => mota = value; }
        public int Gia { get => gia; set => gia = value; }

        
    }
}

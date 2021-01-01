using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class KQT_DTO
    {
        string maSP, tenSP, hinhanh, mieuta;
        float gia;

        public string MaSP { get => maSP; set => maSP = value; }
        public string TenSP { get => tenSP; set => tenSP = value; }
        public string Hinhanh { get => hinhanh; set => hinhanh = value; }
        public string Mieuta { get => mieuta; set => mieuta = value; }
        public float Gia { get => gia; set => gia = value; }
        public string MaQuaTang { get => maQuaTang; set => maQuaTang = value; }
        public string TenQuaTang { get => tenQuaTang; set => tenQuaTang = value; }
        public string MieuTa { get => mieuTa; set => mieuTa = value; }
        public string HinhAnhQua { get => hinhAnhQua; set => hinhAnhQua = value; }
        public float GiaQua { get => giaQua; set => giaQua = value; }

        string maQuaTang, tenQuaTang, mieuTa, hinhAnhQua;
        float giaQua;
    }
}

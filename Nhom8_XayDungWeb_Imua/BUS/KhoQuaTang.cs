using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAL;
using DTO;
namespace BUS
{

    public class KhoQuaTang
    {
        Data da = new Data();
        public DataTable showKhoQuaTang()
        {
            string sql = "select * from QuaTang";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
    }
}

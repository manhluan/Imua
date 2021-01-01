using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class KQT_Data
    {
        public SqlConnection getConnection()
        {
            return new SqlConnection(@"Data Source=DESKTOP-BP2R9O8\THANH;Initial Catalog=imua1;Integrated Security=True");
        }

        public DataTable GetTable(string sql)
        {
            SqlConnection con = getConnection();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void ExcuteNonQuery(string sql)
        {
            SqlConnection con = getConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cmd.Clone();
        }

    }
}

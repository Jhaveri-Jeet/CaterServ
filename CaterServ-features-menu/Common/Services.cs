using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace CaterServ.Common
{
    public class Services
    {
        static SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=CaterServDb;Integrated Security=True");
        internal static int execute(string sql)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            int affectedRows = cmd.ExecuteNonQuery();
            con.Close();
            return affectedRows;
        }


        internal static DataTable select(string sql)
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }

    }
}
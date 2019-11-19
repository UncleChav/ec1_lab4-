using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace HondaXpress
{
    public class WebService : System.Web.Services.WebService
    {

        [WebMethod]
        public string ConnectionState()
        {
            string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            return conString;
        }

        [WebMethod]
        public DataTable GetAllProducts()
        {
            var con = new SqlConnection(ConnectionState());
            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using ( con )
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM tblProducts"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            dt.TableName = "Products";
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

        [WebMethod]
        public void Update(long PID, string PName, string PPrice, string PDescription)
        {
            // string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            var con = new SqlConnection(ConnectionState());
            using (con)
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "UPDATE tblProducts SET PName=@PName, PPrice=@PPrice, PDescription=@PDescription  WHERE PID = @PID";
                    cmd.Parameters.AddWithValue("@PID", PID);
                    cmd.Parameters.AddWithValue("@PName", PName);
                    cmd.Parameters.AddWithValue("@PPrice", PPrice);
                    cmd.Parameters.AddWithValue("@PDescription", PDescription);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        [WebMethod]

        public void Delete(long prodId)

        {
            var con = new SqlConnection(ConnectionState());

            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using ( con )
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM tblProductImages WHERE PID = @ProdID"))
                {
                    using (SqlCommand cmd2 = new SqlCommand("DELETE FROM tblProducts WHERE PID = @ProdID"))
                    {
                        cmd.Parameters.AddWithValue("@ProdID", prodId);
                        cmd2.Parameters.AddWithValue("@ProdID", prodId);
                        cmd.Connection = con;
                        cmd2.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                    }
                }

            }
        }
    }
}

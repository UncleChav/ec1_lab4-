using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HondaXpress
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] != null)
            {
                if (!IsPostBack)
                {
                    BindPriceData();
                }
            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }
        }

        private void BindPriceData()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] CookieDataArray = CookieData.Split(',');
                if (CookieDataArray.Length > 0)
                {

                    DataTable dtBrands = new DataTable();
                    Int64 CartTotal = 0;

                    for (int i = 0; i < CookieDataArray.Length; i++)
                    {
                        string PID = CookieDataArray[i].ToString().Split('-')[0];

                        if (hdPID.Value != null && hdPID.Value != "")
                        {
                            hdPID.Value +=PID;
                        }
                        else
                        {
                            hdPID.Value = PID;
                        }

                        String CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                        using (SqlConnection con = new SqlConnection(CS))
                        {
                            using (SqlCommand cmd = new SqlCommand("select A.*,B.* from tblProducts A cross apply( select top 1 B.Name,Extention from tblProductImages B where B.PID=A.PID)B where A.PID="
                             + PID + "", con))
                            {
                                cmd.CommandType = CommandType.Text;
                                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                                {
                                    sda.Fill(dtBrands);
                                }

                            }
                        }
                        CartTotal += Convert.ToInt64(dtBrands.Rows[i]["PPrice"]);

                    }
                    divPriceDetails.Visible = true;

                    spanTotal.InnerText = "$ " + CartTotal.ToString();
                }
                else
                {
                    //TODO Show Empty Cart
                    Response.Redirect("~/Products.aspx");
                }
            }
            else
            {
                //TODO Show Empty Cart
                Response.Redirect("~/Products.aspx");

            }

        }

        protected void btnPaytm_Click(object sender, EventArgs e)
        {
            
            if (Session["USERNAME"] != null)
            {
                string USER = Session["USERNAME"].ToString();


                //Insert Data to tblPurchase
                String CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into tblOrder values('" + hdPID.Value + "','"
                        + USER + "','" + "1" +"','" + txtName.Text + "','" + txtAddress.Text + "','" + txtMobileNumber.Text +"') select SCOPE_IDENTITY()", con);
                    con.Open();
                    Int64 OrderID = Convert.ToInt64(cmd.ExecuteScalar());

                    HttpCookie CartProducts = Request.Cookies["CartPID"];
                    CartProducts.Values["CartPID"] = null;
                    CartProducts.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(CartProducts);

                    Response.Redirect("Callback.aspx");
                   
                }
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}
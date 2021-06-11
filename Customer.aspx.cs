using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace BankingSystem
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtadd_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bank"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblcustomer(Name,Email,Current_Balance) Values('" + txtname.Text + "','" + txtemail.Text + "','" + txtCurrent.Text + "')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Customer Successfully Added');  </script>");
                    clr();
                    con.Close();
                    lblMsg.Text = "Customer Successfully Added";
                    lblMsg.ForeColor = System.Drawing.Color.Green;

                }

            }
            else
            {
                Response.Write("<script> alert('Customer Added failed');  </script>");
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
        private bool isformvalid()
        {
            if (txtname.Text == "")
            {
                Response.Write("<script> alert('enter customer name');  </script>");
                txtname.Focus();

                return false;
            }
            else if (txtemail.Text == "")
            {
                Response.Write("<script> alert('enter email');  </script>");
                txtemail.Focus();
                return false;
            }
            else if (txtCurrent.Text == "")
            {
                Response.Write("<script> alert('enter customer balance');  </script>");
                txtCurrent.Focus();
                return false;
            }
            return true;
        }

        private void clr()
        {
            txtname.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtCurrent.Text = string.Empty;
        }
    }
}

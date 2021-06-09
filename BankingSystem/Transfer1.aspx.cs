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
    public partial class Transfer1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txttransfer_Click(object sender, EventArgs e)
        {

            if (isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bank"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tbltransfer(sender,reciever,credit) Values('" + txtfrom.Text + "','" + txtto.Text + "','" + txtCredit.Text + "')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Transfer Successfully done');  </script>");
                    clr();
                    con.Close();
                    lblMsg.Text = "Transfer Successfully done";
                    lblMsg.ForeColor = System.Drawing.Color.Green;

                }

            }
            else
            {
                Response.Write("<script> alert('Transfer failed');  </script>");
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
        private bool isformvalid()
        {
            if (txtfrom.Text == "")
            {
                Response.Write("<script> alert('enter senders name');  </script>");
                txtfrom.Focus();

                return false;
            }
            else if (txtto.Text == "")
            {
                Response.Write("<script> alert('enter reciever name');  </script>");
                txtto.Focus();
                return false;
            }
            else if (txtCredit.Text == "")
            {
                Response.Write("<script> alert('enter amount');  </script>");
                txtCredit.Focus();
                return false;
            }
            return true;
        }

        private void clr()
        {
            txtfrom.Text = string.Empty;
            txtto.Text = string.Empty;
            txtCredit.Text = string.Empty;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace BankingSystem
{
    public partial class ViewAllCust : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Ovbind();
            }
        }
        private void Ovbind()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bank"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblcustomer ", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        Repeater1.DataSource = dt;
                        Repeater1.DataBind();
                    }
                }
            }
        }
    }
}
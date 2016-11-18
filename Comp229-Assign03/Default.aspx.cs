using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Comp229_Assign03
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                     
            {
                if (!IsPostBack)
                {
                    BindData();
                }
            }
        }


        protected void BindData()

        {
            SqlConnection connection = new SqlConnection("Server=localhost\\SqlExpress;Database=Comp229Assign03;Integrated Security=True");
            SqlCommand comm = new SqlCommand("Select * from Students", connection);
            
            try
            {
                connection.Open();
                DataSet ds = new DataSet();
                DataTable FromTable = new DataTable();
                SqlDataAdapter adp = new SqlDataAdapter(comm);
                adp.Fill(ds);
                DataList.DataSource = ds.Tables[0];
                DataList.DataBind();
                
            }
            finally
            {
                connection.Close();

            }
        }  
        }
        }

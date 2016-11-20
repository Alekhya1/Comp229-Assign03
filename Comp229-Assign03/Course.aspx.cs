using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class Course : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }
 protected void BindData()
         {
            SqlConnection connection = new SqlConnection("Server=localhost\\SqlExpress;Database=Comp229Assign03;Integrated Security=True");
        SqlCommand comm = new SqlCommand("Select * from Courses", connection);
            
            try
            {
                connection.Open();
                DataSet cs = new DataSet();
        DataTable FromTable = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(comm);
        adp.Fill(cs);
                DataList.DataSource = cs.Tables[0];
                DataList.DataBind();
                
            }
            finally
            {
                connection.Close();

            }
        }
       
    }
}
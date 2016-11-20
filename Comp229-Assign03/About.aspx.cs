using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        

        protected void Add_Click(object sender, EventArgs e)
        {

            string lastname = LastName.Text;
            string firstmidname = FirstMidName.Text;
            string enrollmentdate = EnrollmentDate.Text;
            SqlConnection connection = new SqlConnection("Server=localhost\\SqlExpress;Database=Comp229Assign03;Integrated Security=True");
            SqlCommand comm = new SqlCommand("insert into Students(LastName,FirstMidName,EnrollmentDate) Values(@LastName,@FirstMidName,@EnrollmentDate)", connection);

            comm.Parameters.Add("@LastName", System.Data.SqlDbType.VarChar);
            comm.Parameters["@LastName"].Value = lastname;

            comm.Parameters.Add("@FirstMidName", System.Data.SqlDbType.VarChar);
            comm.Parameters["@FirstMidName"].Value = firstmidname;

            //comm.Parameters.Add("@EnrollmentDate", System.Data.SqlDbType.DateTime);
            //comm.Parameters["@EnrollmentDate"].Value = Convert.ToDateTime(enrollmentdate);

            try
            {
                connection.Open();
                comm.ExecuteNonQuery();
            }

            finally
            {
                connection.Close();
            }
            Response.Redirect("~/Default.aspx");
            }
    }
    }

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign03
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            int studentid = Convert.ToInt32(id);
            StudentID.Text = studentid.ToString();
            SqlConnection connection = new SqlConnection("Server=localhost\\SqlExpress;Database=Comp229Assign03;Integrated Security=True");
            SqlCommand comm = new SqlCommand("Select * from Students where StudentID=@StudentID", connection);
            comm.Parameters.Add("@StudentID", System.Data.SqlDbType.Int);
            comm.Parameters["@StudentID"].Value = studentid;
            try
            {
                connection.Open();
                SqlDataReader reader = comm.ExecuteReader();
                while(reader.Read())
                    { LastName.Text = reader["LastName"].ToString();
                    FirstMidName.Text = reader["FirstMidName"].ToString();
                    EnrollmentDate.Text = reader["EnrollmentDate"].ToString();
                }
            }
                    finally
                {
                connection.Close();
            }
            
            }

        protected void update_click(object sender, EventArgs e)
        {
            string ID = StudentID.Text;
            int stdno = Convert.ToInt32(ID);
            string lastname = LastName.Text;
            string firstmidname = FirstMidName.Text;
            string enrollmentdate = EnrollmentDate.Text;
            SqlConnection connection = new SqlConnection("Server=localhost\\SqlExpress;Database=Comp229Assign03;Integrated Security=True");
            SqlCommand comm = new SqlCommand("Update Students Set LastName=@LastName,FirstMidName=@FirstMidName,EnrollmentDate=@EnrollmentDate where StudentID=@StudentID", connection);
            comm.Parameters.Add("@StudentID", System.Data.SqlDbType.Int);
            comm.Parameters["@StudentID"].Value = stdno;

            comm.Parameters.Add("@LastName", System.Data.SqlDbType.VarChar);
            comm.Parameters["@LastName"].Value = lastname;

            comm.Parameters.Add("@FirstMidName", System.Data.SqlDbType.VarChar);
            comm.Parameters["@FirstMidName"].Value = firstmidname;

            comm.Parameters.Add("@EnrollmentDate", System.Data.SqlDbType.DateTime);
            comm.Parameters["@EnrollmentDate"].Value = Convert.ToDateTime(enrollmentdate);

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

        protected void Delete_Click(object sender, EventArgs e)
        {
            string ID = StudentID.Text;
            int stdno = Convert.ToInt32(ID);
            SqlConnection connection = new SqlConnection("Server=localhost\\SqlExpress;Database=Comp229Assign03;Integrated Security=True");
            SqlCommand comm = new SqlCommand("Delete from Enrollments where StudentID=@StudentID", connection);
            SqlCommand comm1 = new SqlCommand("Delete from Students where StudentID=@StudentID", connection);
            comm.Parameters.Add("@StudentID", System.Data.SqlDbType.Int);
            comm.Parameters["@StudentID"].Value = stdno;
            comm1.Parameters.Add("@StudentID", System.Data.SqlDbType.Int);
            comm1.Parameters["@StudentID"].Value = stdno;

            try
                {
                connection.Open();
                comm.ExecuteNonQuery();
                comm1.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            }
            Response.Redirect("~/Default.aspx");
        }
    }

}
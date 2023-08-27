using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace RunCodesRegistrationForm
{
    public partial class RegisterationForm : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "female";
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            gender = "others";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=userregister;Integrated Security=True");

            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[RegistrationForm]
           ([name]
           ,[address]
           ,[gender]
           ,[phone]
           ,[email]
           ,[username]
           ,[password])
     VALUES
           (( '"+txtName.Text+"','"+txtAddress.Text+"','"+gender+"','"+txtPhone.Text+"','"+txtEmail.Text+"','"+txtUsername.Text+"','"+txtPassword.Text+"')",con);  
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write(" <script> alert(' user registeration completed successfully ' )   </script>");
            

        }

        
    }
}
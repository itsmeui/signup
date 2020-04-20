using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submitButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["dbWebsites"].ConnectionString;

        SqlCommand cmd = new SqlCommand("sp_InsertUser", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@txtName", SqlDbType.VarChar, 55);
        cmd.Parameters.Add("@txtMobile", SqlDbType.VarChar, 15);
        cmd.Parameters["@txtName"].Value = nameTxtBox.Text;
        cmd.Parameters["@txtMobile"].Value = mobileTxtBox.Text;
        nameTxtBox.Text = "";
        mobileTxtBox.Text = "";
        conn.Open();
        int i = cmd.ExecuteNonQuery();
        conn.Close();

        if (i == 1)
        {
            
            postMsg.Text = "Your details saved successfully.";
            showMsg.Attributes.Add("class", showMsg.Attributes["class"].ToString().Replace("hide", ""));

        }
    }
}
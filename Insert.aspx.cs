using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            //estabish a conncetion with the database
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\MZJ\Documents\Visual Studio 2012\WebSites\Project\App_Data\CurrencyConvertion.mdf;Integrated Security=True");
            //open the conncetion 
            con.Open();
            //send this query to database to Currncy table with these values
            SqlCommand cmd = new SqlCommand("INSERT INTO Currency(FromCurrency,ToCurrency,ExchangeRate,DateAndTime)VALUES('" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox1.Text + "',GETDATE())", con);

            cmd.ExecuteNonQuery();
            //close the connection 
            con.Close();
            // if the data is saved display this
            if (IsPostBack)
            {
                Label1.ForeColor = System.Drawing.Color.Black;
                Label1.Text = "Date entered sucessfuly";
            }
        
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
       TextBox1.Text = "";

        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        CompareValidator1.Text = "";
        RegularExpressionValidator1.Text = "";
        rfv1.Text = "";

    }
   
}



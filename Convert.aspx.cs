using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Convert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // new varibles to store values
        int number = 0;
        string dates = string.Empty;
        double rate = 0;
        //estabish a conncetion with the database
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\MZJ\Documents\Visual Studio 2012\WebSites\Project\App_Data\CurrencyConvertion.mdf;Integrated Security=True");
        {
            //open the conncetion 
            con.Open();
            //send this query to database to get ExchangeRate, DateAndTime
            SqlCommand cmd = new SqlCommand("SELECT ExchangeRate, DateAndTime FROM Currency WHERE FromCurrency = @from AND ToCurrency = @to ", con);
            cmd.Parameters.AddWithValue("@from", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@to", DropDownList2.Text);
            SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    // get the results of each column
                    rate = double.Parse (rdr["ExchangeRate"].ToString());
                    dates = rdr["DateAndTime"].ToString();
                }
                rdr.Close();
                cmd.ExecuteNonQuery();
                con.Close();
            }

        //to get the date only from  DateAndTime and store it in the number varibles
        number = dates.IndexOf(" ");

        if (number > 0)
        {
            dates = dates.Substring(0, number);
        }

        if (rate == 0)
        {
            //if there is data at all display this
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "No data enter yet.";

        }
        else if (dates != DateTime.Now.ToShortDateString())
        {
            //if there is no data for today display this
            Label1.ForeColor = System.Drawing.Color.Blue;
            Label1.Text = "the rate is not available for today.";
        }
        else
        {
            //if there is data found display this
            Label1.ForeColor = System.Drawing.Color.Green;
            Label1.Text = (rate * double.Parse(TextBox1.Text)).ToString();
        }



        }


    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";

        Label1.Text = "";
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        CompareValidator1.Text = "";
        RegularExpressionValidator1.Text = "";
        rfv1.Text = "";
    }
}
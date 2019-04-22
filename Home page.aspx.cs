using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        //once the button1 is clicked excute this code
        //to go to insert web page
        Response.Redirect("Insert.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //once the button1 is clicked excute this code
        //to go to convert web page
        Response.Redirect("Convert.aspx");
    }
  
    protected void Button3_Click(object sender, EventArgs e)
    {
        //once the button1 is clicked excute this code
        //to go to display all web page
        Response.Redirect("Display all.aspx");
    }
}
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Convert.aspx.cs" Inherits="Convert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Convert  Page</title>
    <style type="text/css">
          body {
            background-color : lightgrey;
          font-family: "Times New Roman";
        }
              p {
    text-align: center;
    font-family: "Times New Roman";
    
        }
              h2 {

            text-align: center;
font-family: "Times New Roman";

color: purple;
            width: 1311px;
        }
        p {
    font-family: "Times New Roman", Times, serif;
            height: 63px;
        }
        div {
font-family: "Times New Roman", Times, serif;
text-align:center;
        }
        table {
    border-collapse: collapse;
    text-align:center;
}
        #Reset1 {
            height: 27px;
            width: 133px;
            margin-left: 0px;
        }
        </style>
</head>
<body style="height: 429px">
    <form id="form1" runat="server">
    <div style="position:absolute; left:0; right:0; text-align: center; top: 22px; height: 478px;">
    <h2>Currency Convertion WebPage</h2>
        <p>&nbsp;</p>
       
     
        <p>
                   
      
        
                    
        
                    Select From Currency&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
      
        
                    
        
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select Currency</asp:ListItem>
                        <asp:ListItem>USD</asp:ListItem>
                        <asp:ListItem>EUR</asp:ListItem>
                        <asp:ListItem>MYR</asp:ListItem>
                        <asp:ListItem>SGD</asp:ListItem>
                    </asp:DropDownList>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="DropDownList1" InitialValue="Select Currency" ErrorMessage="Please select something" ForeColor="Red" />
      </p>
        <p>
                    
                &nbsp;Select To Currency&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Select Currency</asp:ListItem>
                        <asp:ListItem>USD</asp:ListItem>
                        <asp:ListItem>EUR</asp:ListItem>
                        <asp:ListItem>MYR</asp:ListItem>
                        <asp:ListItem>SGD</asp:ListItem>
                    </asp:DropDownList>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="DropDownList1" ControlToValidate="DropDownList2" ErrorMessage="Choose another currency" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
            </p>  
        <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter The Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter a vaild amount" ForeColor="Red" ValidationExpression="^0*[1-9][0-9]*(\.[0-9]+)?|0+\.[0-9]*[1-9][0-9]*$"></asp:RegularExpressionValidator>
        </p>
        <p>
    
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Convert" style="margin-right: 279px;" BorderStyle="Double" Width="145px" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" BorderStyle="Double" Width="145px" />
        </p>
        <p>
    
      <asp:Label ID="Label1" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        </p>

    </div>
    </form>
</body>
</html>

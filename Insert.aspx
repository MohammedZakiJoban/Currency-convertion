<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Insert.aspx.cs" Inherits="Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert Page</title>
    <style type="text/css">
          body {
            background-color : lightgrey;
          
        }
              p {
    font-family: "Times New Roman", Times, serif;
            height: 63px;
        }
                    h2 {

            text-align: center;
font-family: "Times New Roman";

color: purple;
            width: 1311px;
        }
                      div {
font-family: "Times New Roman", Times, serif;
text-align:center;
        }
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <h2> Insert New Data</h2>
        <p> &nbsp;</p>
        
        
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To Currency&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Select Currency</asp:ListItem>
                        <asp:ListItem>USD</asp:ListItem>
                        <asp:ListItem>EUR</asp:ListItem>
                        <asp:ListItem>MYR</asp:ListItem>
                        <asp:ListItem>SGD</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="DropDownList1" ControlToValidate="DropDownList2" ErrorMessage="Please Choose another currency" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>

            </p>
               
                   
               <p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

Exchange Rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter A vaild Rate" ForeColor="Red" ValidationExpression="^0*[1-9][0-9]*(\.[0-9]+)?|0+\.[0-9]*[1-9][0-9]*$"></asp:RegularExpressionValidator>
               </p>
           
   <p>
       &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BorderStyle="Double" OnClick="Button1_Click" Text="Insert" Width="92px" />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" BorderStyle="Double" Width="92px"/>
   </p>
        <p>
             &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="#0033CC"></asp:Label>
        </p>
    
    </div>
    
   
    </form>
</body>
</html>

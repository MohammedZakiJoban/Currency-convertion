<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Display all.aspx.cs" Inherits="Display_all" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The database</title>
    <style>
           body {
            background-color : lightgray;
          
        }
        button {
            
            
        }
        
            p {
    text-align: center;
    
    
        }
        h2 {

            text-align: center;
font-family: "Times New Roman";

color: purple;
            width: 1311px;
        }
        div {
            text-align: center;
        }
        .Gridview

{

font-family:Verdana;

font-size:10pt;

font-weight:normal;

color:black;

 

}
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="FromCurrency" HeaderText="FromCurrency" SortExpression="FromCurrency" />
                <asp:BoundField DataField="ToCurrency" HeaderText="ToCurrency" SortExpression="ToCurrency" />
                <asp:BoundField DataField="ExchangeRate" HeaderText="ExchangeRate" SortExpression="ExchangeRate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FromCurrency], [ToCurrency], [ExchangeRate] FROM [Currency] WHERE ([DateAndTime] &gt;= @DateAndTime)">
            <SelectParameters>
                <asp:Parameter DbType="DateTime2" DefaultValue="07/10/2015 00:00:00" Name="DateAndTime" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

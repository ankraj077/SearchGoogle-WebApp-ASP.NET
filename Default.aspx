<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Search Google</title>
    <link rel="stylesheet" href="maincss.css"/>
</head>

<body>
    <center>
    <strong><asp:Label ID="Label1" runat="server" Text="Search on Google" Font-Size="40px" ForeColor="#003399"></asp:Label></strong>
    <hr/>
       <br/><br/>
       <asp:Repeater ID="Repeater1ID" runat="server">
        <HeaderTemplate>
                <table>
                    <tr>  
        </HeaderTemplate>
          
        <ItemTemplate>
                   <td class="maindata">
                        <strong><a href="https://www.google.ca/search?site=&source=hp&q=<%#Container.DataItem %>" class="aData"><%# Container.DataItem %></a></strong>
                   </td>  
        </ItemTemplate>
           
        <FooterTemplate>
                   </tr>
               </table>
        </FooterTemplate>
      </asp:Repeater>
            <br/><br />
                <form id="form1" runat="server">
                    <asp:TextBox class="inpDa" ID="searchText" runat="server" Width="300px" placeholder="Type here and search"></asp:TextBox><br/><br/>
                    <asp:Button class="btnSearch" ID="ButtonSearch" runat="server" Text="Search" OnClick="ButtonSearch_Click" />
                </form>
                
                <asp:Label runat="server" ID="labelinfo" Font-Size="25px"></asp:Label>
    </center>
</body>
</html>

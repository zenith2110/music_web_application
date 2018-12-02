<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 254px;
        }
        .style6
        {
            width: 254px;
            height: 18px;
        }
        .style7
        {
            height: 18px;
        }
        .style8
        {
            width: 208px;
            height: 18px;
        }
        .style9
        {
            width: 208px;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table class="style1">
        <tr>
            <td align="right" class="style6">
                UserName</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxUNupdate" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style7" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUNupdate" ErrorMessage="Enter Your Username" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style6">
                Email</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxEmailupdate" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style7" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxEmailupdate" ErrorMessage="Enter You Email ID" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxEmailupdate" ErrorMessage="Enter a Valid Email Id" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style5">
                Password</td>
            <td class="style9">
                <asp:TextBox ID="TextBoxPassupdate" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxPassupdate" ErrorMessage="Enter Your Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td align="right" class="style5">
                Region</td>
            <td class="style9">
                    <asp:DropDownList ID="DropDownListRegionUpdate" runat="server" 
                    Width="180px">
                        <asp:ListItem>Select One</asp:ListItem>
                        <asp:ListItem>Europe</asp:ListItem>
                        <asp:ListItem>Asia</asp:ListItem>
                        <asp:ListItem>Russia</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownListRegionUpdate" ErrorMessage="Select Any One Region" 
                        ForeColor="Red" InitialValue="Select One"></asp:RequiredFieldValidator>
                </td>
        </tr>
    </table>
    <br /><br/>
    <asp:Button ID="ButtonUpdate" runat="server" Text="Update" Width="180px" 
        onclick="ButtonUpdate_Click"/>
    <br />
    <br />
    <br />
    
    <asp:HyperLink ID="Hyperlinkdelete" runat="server" NavigateUrl="~/Delete.aspx">Click here to Delete Account</asp:HyperLink>
    
    <br />
    <br />
    <br />
    <br />
    </center>
    
        
    
</asp:Content>


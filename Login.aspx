<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID= ContentPlaceHolder1 runat=server>
    <div align="center" style="font-family: Arial">
    
        <asp:Label ID="Labellogin" runat="server" BackColor="Black" Font-Bold="True" 
            Font-Size="X-Large" Text="Enter Your Details To Login" Width="230px" 
            ForeColor="#666666"></asp:Label>
        <br />
        <br />
    
    </div>
    <table class="style1" align="center">
        <tr>
            <td align="right" class="style10" style="font-family: 'Arial Black'">
                UserName</td>
            <td class="style11" align="center">
                <asp:TextBox ID="TextBoxLUN" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style9" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxLUN" ErrorMessage="Please Enter Your UserName" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" style="font-family: 'Arial Black'">
                Password</td>
            <td class="style11" align="center">
                <asp:TextBox ID="TextBoxLPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="style4" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxLPass" ErrorMessage="Please Enter Your Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" style="font-family: 'Arial Black'">
                &nbsp;</td>
            <td class="style5" align="center">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10" style="font-family: 'Arial Black'">
            </td>
            <td align="center" class="style11">
                <asp:Button ID="ButtonLogin" runat="server" Font-Bold="True" 
                    Font-Names="Verdana" onclick="ButtonLogin_Click" Text="Login" Width="90px" />
                <br />
                <br />
                <asp:HyperLink ID="HyperLinkReg" runat="server" NavigateUrl="~/Register.aspx">New User ? Register Here</asp:HyperLink>
            </td>
            <td class="style12" align="left">
            </td>
        </tr>
    </table>
   </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style4
    {
        width: 823px;
    }
    .style5
    {
        height: 27px;
        width: 292px;
    }
    .style7
    {
        height: 27px;
        width: 584px;
    }
    .style9
    {
        width: 556px;
    }
    .style10
    {
        width: 584px;
    }
    .style11
    {
        width: 292px;
    }
</style>
</asp:Content>

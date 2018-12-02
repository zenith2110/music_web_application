<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID= "ContentPlaceHolder1" runat="server">
    <div align="center" style="font-family: Arial; color: #000000">
    
        <asp:Label ID="LabelTitle" runat="server" Font-Bold="True" Font-Italic="False" 
            Font-Size="X-Large" Text="REGISTRATION PAGE" Width="277px" 
            ForeColor="#666666"></asp:Label>
        <strong>
        <br />
        <br />
        <br />
        </strong>
    
        <table class="style9" align="center">
            <tr>
                <td align="right" class="style6" 
                    style="color: #FFFFFF; font-family: 'Arial Black';">
                    User Name</td>
                <td class="style10">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBoxUN" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right" class="style6" 
                    style="color: #FFFFFF; font-family: 'Arial Black';">
                    Email</td>
                <td class="style10">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td align="left">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBoxEmail" ErrorMessage="You must Enter a Valid Email ID" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBoxEmail" ErrorMessage="Enter Email Address" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5" 
                    style="color: #FFFFFF; font-family: 'Arial Black';">
                    Password</td>
                <td class="style11">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="style9" align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBoxPass" ErrorMessage="Please Enter Password" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    .</td>
            </tr>
            <tr>
                <td align="right" class="style5" 
                    style="color: #FFFFFF; font-family: 'Arial Black';">
                    Confirm Password</td>
                <td class="style12">
                    <asp:TextBox ID="TextBoxCPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
&nbsp;</td>
                <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBoxCPass" ErrorMessage="Please Confirm Password" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBoxPass" ControlToValidate="TextBoxCPass" 
                        ErrorMessage="Both Password Should Match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6" 
                    style="color: #FFFFFF; font-family: 'Arial Black';">
                    Region</td>
                <td class="style10">
                    <asp:DropDownList ID="DropDownListRegion" runat="server" Width="180px">
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
                        ControlToValidate="DropDownListRegion" ErrorMessage="Select Any One Region" 
                        ForeColor="Red" InitialValue="Select One"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" style="color: #FFFFFF; font-family: 'Arial Black';">
                    </td>
                <td class="style12">
                    </td>
                <td class="style4" align="left">
                    </td>
            </tr>
            <tr>
                <td class="style6" style="color: #FFFFFF; font-family: 'Arial Black';">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Button ID="ButtonSubmit" runat="server" onclick="Button1_Click" 
                        Text="Sign Up" Font-Bold="True" Font-Names="Arial Black" Width="90px" />
&nbsp;&nbsp; <input 
                        id="Reset1" type="reset" value="Reset" readonly="readonly" 
                        style="font-family: 'Arial Black'; font-style: normal;" />&nbsp;&nbsp;&nbsp; </td>
                <td align="left">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
   </asp:Content> 
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style4
    {
        height: 27px;
        width: 817px;
    }
    .style5
    {
        width: 667px;
    }
    .style6
    {
        height: 27px;
        width: 667px;
    }
</style>
</asp:Content>
 
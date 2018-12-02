<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 252px;
        }
        .style8
        {
            width: 277px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    Enter Your UserName Below To Delete Account
    <br />
    <br />
    <table class="style1">
        <tr>
            <td align="right" class="style8">
                UserName</td>
            <td align="center" class="style7">
                <asp:TextBox ID="TextBoxUNDelete" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUNDelete" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">UserName left empty</asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Delete" Width="180px" 
        onclick="Button1_Click" /></center>
</asp:Content>


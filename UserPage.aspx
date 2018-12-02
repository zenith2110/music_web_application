<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserPage.aspx.cs" Inherits="UserPage" MasterPageFile="~/MasterPage2.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID= ContentPlaceHolder1 runat=server>
    <div>
    
    </div>
    <center> 
    <asp:Label ID="LabelWelcome" runat="server" Text="Welcome User "></asp:Label>
&nbsp;
    <br />
        <br />
        <br />
        <asp:Button ID="Buttonweb" runat="server" BackColor="#666666" ForeColor="Black" 
            onclick="Buttonweb_Click" Text="Click Here For Capturing Image" 
            Width="224px" Font-Bold="True" />
        <br />
        <br />
        <br />
        <br />
    <br />
    <asp:Button ID="ButtonLogout" runat="server" onclick="Button1_Click" 
        Text="Logout" Width="180px" BackColor="#666666" Font-Bold="True" 
            ForeColor="Black" />
    </center>  

</asp:Content>
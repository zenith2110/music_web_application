<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VB.aspx.vb" Inherits="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Emotica</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="default.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        .style3
        {
            width: 709px;
        }
        .style4
        {
            width: 709px;
            height: 250px;
        }
        .style5
        {
            height: 250px;
        }
    </style>
</head>
<body><center>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src='<%=ResolveUrl("~/Webcam_Plugin/jquery.webcam.js") %>' type="text/javascript"></script>
    <script type="text/javascript">
        var pageUrl = '<%=ResolveUrl("~/VB.aspx") %>';
        $(function () {
            jQuery("#webcam").webcam({
                width: 320,
                height: 240,
                mode: "save",
                swffile: '<%=ResolveUrl("~/Webcam_Plugin/jscam.swf") %>',
                debug: function (type, status) {
                    $('#camStatus').append(type + ": " + status + '<br /><br />');
                },
                onSave: function (data) {
                    $.ajax({
                        type: "POST",
                        url: pageUrl + "/GetCapturedImage",
                        data: '',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (r) {
                            $("[id*=imgCapture]").css("visibility", "visible");
                            $("[id*=imgCapture]").attr("src", r.d);
                        },
                        failure: function (response) {
                            alert(response.d);
                        }
                    });
                },
                onCapture: function () {
                    webcam.save(pageUrl);
                }
            });
        });
        function Capture() {
            webcam.capture();
            return false;
        }
    </script>
    <form id="form1" runat="server">
    
        
       
            
    <div id="header"></div>
	<div id="logo">
		<center><h1><a href="#">EMOTICA</a></h1></center>
		
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="Home.aspx" title="">Homepage</a></li>
			<li><a href="#" title="">About Us</a></li>
			<li><a href="#" title="">Feedback</a><a href="Update.aspx" title="">Update Account</a></li>
		</ul>
	</div>

          
       <table border="0" cellpadding="0" cellspacing="0">
       <tr>
            <td align="left" class="style3">
                <u style="font-family: 'Arial Black'; font-size: large">Live Camera</u>
            </td>
            <td align="right" style="font-family: 'Arial Black'; font-size: large">
                <u>Captured Picture</u>
            </td>
            <td align="right" style="font-family: 'Arial Black'; font-size: large">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <div id="webcam">
                </div>
            </td>
            
            <td class="style5">
                <asp:Image ID="imgCapture" runat="server" Style="visibility: hidden; " 
                    Height="240px" Width="320px" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnCapture" Text="Capture" runat="server" OnClientClick="return Capture();" />
    <br />
    <span id="camStatus"></span>
    </form>
    </center>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="首页导航检索main.aspx.cs" Inherits="都市供求信息网.html.iframe.首页导航检索main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type="text/css">
	#div_main{
		width:680px;
		height:300px;
		}
	#div_header{
		border:1px solid #999;
		height:30px;
		width:680px;
		background-color:#F0F0F0;
		}
	#p_header{
		color:#039;
		font-weight:bold;
		margin-top:7px;
		font-size:12px;
		}
	#div_recommand{
		background-color:#FAFCF5;
		border:1px #D4D0C8 solid;
		width:680px;
		}
	#table{
		font-size:12px;
		font-family:"宋体";
		margin-left:5px;
        width:680px;
		}
	tr{
		height: 50px;	
	}
        .auto-style1 {
            width: 48%;
        }
        .auto-style2 {
            width: 34%;
        }
        .auto-style3 {
            width: 33%;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div id = "div_main">
<div>
	<div id = "div_header" style = "margin-top:16px;">
		<p id = "p_header">&nbsp;■<asp:Label ID="lblTop1" runat="server"></asp:Label>
        </p>
	</div>
    
    <div id = "div_recommand">
    	<table id = "table">
        	<tr>
            	<td colspan="2">【<asp:Label ID="lblTitle1" runat="server"></asp:Label>
                    】</td>
                <td class="auto-style1">发布时间：『<asp:Label ID="lblDate1" runat="server"></asp:Label>
                    』</td>
            </tr>
            <tr>
            	<td colspan="3">
                    <asp:Label ID="lblContent1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
            	<td style = "text-align:center; " class="auto-style2">联系电话：<asp:Label ID="lblPhone1" runat="server"></asp:Label>
                </td>
                <td style = "text-align:center; " class="auto-style3">联系人：<asp:Label ID="lblContact1" runat="server"></asp:Label>
                </td>
                <td style = "text-align:center; " class="auto-style1">E-mail：<asp:Label ID="lblEmail1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </div>
    
    <div style = "margin-top: 5px;">
    <div id = "div_header">
		<p id = "p_header">&nbsp;■<asp:Label ID="lblTop0" runat="server"></asp:Label>
        </p>
	</div>
    
    <div id = "div_recommand">
    	<table id = "table">
        	<tr>
            	<td colspan="2">【<asp:Label ID="lblTitle0" runat="server"></asp:Label>
                    】</td>
                <td>发布时间：『<asp:Label ID="lblDate0" runat="server"></asp:Label>
                    』</td>
            </tr>
            <tr>
            	<td colspan="3">
                    <asp:Label ID="lblContent0" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
            	<td style = "text-align:center; width:30%">联系电话：<asp:Label ID="lblPhone0" runat="server"></asp:Label>
                </td>
                <td style = "text-align:center; width:30%">联系人：<asp:Label ID="lblContact0" runat="server"></asp:Label>
                </td>
                <td style = "text-align:center; width:30%">E-mail：<asp:Label ID="lblEmail0" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </div>
</div>
    </form>
</body>
</html>

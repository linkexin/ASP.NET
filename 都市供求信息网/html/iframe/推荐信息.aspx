<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="推荐信息.aspx.cs" Inherits="都市供求信息网.html.iframe.推荐信息" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

<style type="text/css">
    a {
        text-decoration:none;
        color:darkblue;
    }
	li{
		list-style:none;
		line-height:22px;
		font-size:12px;
		}
	#div_header{
		border:1px solid #999;
		height:30px;
		width:670px;
		background-color:#F0F0F0;
		}
	#p_header{
		color:#039;
		font-weight:bold;
		margin-top:7px;
		font-size:12px;
		}
</style>

</head>
<body>
    <form id="form1" runat="server">
    <div id = "div_header">
		<p id = "p_header">&nbsp;■推荐信息『缴费专区』 <a href ="首页关键字检索.aspx" target ="main">信息搜索</a></p>
	</div>
    <div style="border:1px solid #D4D0C8; width:670px; margin-top:2px">
    	<div style="float:left; width:50%; background-color:#FAFCF5;">	
        	<ul style = "margin-left:-30px; margin-top:3px;">
                <asp:Repeater ID="rptInfoLeft" runat="server">
                    <ItemTemplate>
                        <li>
                            <a href ="详细信息.aspx?index=<%#Eval("Id") %>" target ="main">『<%#Eval("Tbtype.TypeIntro")%>』<%#Eval("InfoTitle")%></a>
                        </li>
            	    </ItemTemplate>
                </asp:Repeater>
            </ul>
		</div>
        
        <div style="float:left; width: 50%; background-color:#FAFCF5;">
        	<ul style = "margin-left:-30px; margin-top:3px;">
            	<asp:Repeater ID="rptInfoRight" runat="server">
                    <ItemTemplate>
                        <li>
                            <a href ="详细信息.aspx?index=<%#Eval("Id") %>" target ="main">『<%#Eval("Tbtype.TypeIntro")%>』<%#Eval("InfoTitle")%></a>
                        </li>
            	    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
 	<img src="image/pcard2.jpg" style="margin-top:3px"/>
   </div>
    </form>
</body>
</html>

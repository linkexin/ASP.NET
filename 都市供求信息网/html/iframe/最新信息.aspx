<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="最新信息.aspx.cs" Inherits="都市供求信息网.html.iframe.最新信息" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style>
    li {
        font-size:12px;
        list-style:none;
        margin-left:5px;
        margin-top:10px;
    }
    a {
        text-decoration:none;
        color:darkblue;
        font-size:12px;
        font-weight:bold;
		
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
		
	#div_green{
		background-color:#00B48F;
		width:332px;
		height:30px;
		overflow:hidden;
		float:left;
		border:#D4D0C8 1px solid;
		}
	#p_green{
		color:#FFF;
		font-weight:bold;
		font-size:12px;
		margin-top:7px;
		height:20px;
		}
		
	#div_white{
		clear:left;
		overflow:hidden;
		width:332px;
		height:150px;
		background-color:#FAFCF5;
		border:#D4D0C8 1px solid;
		position:relative;
		top:-1px;
		}
	#p_white{
		font-weight:bold;
		font-size:12px;
		margin-top:50px;
		}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:672px; height:200px;">
	<div id = "div_header">
		<p id = "p_header">&nbsp;■最新信息『免费专区』</p>
	</div>
    
    <div>
    	<div> 
        	<div style = "float:left;">
        	<div id = "div_green">				
            	<p id = "p_green">&nbsp;▲培训信息</p>
            </div>
            
        	<div id = "div_white">
            	<ul style ="margin-left:-30px">
                    <asp:Repeater ID="rptLeft" runat="server">
                        <ItemTemplate>
                            <li>
                                <a href="详细信息.aspx?index=<%#Eval("Id") %>" target ="main"><%#Eval("InfoTitle")%></a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <!--
                <div style = "float:right; width:60px; height:30px;">
            		<p id = "p_white">更多...</p>
                </div>-->
            </div>
            </div>
            
            <div style = "float:left; margin-left:4px;">
            	<div id = "div_green">			
            		<p id = "p_green">&nbsp;▲求职信息</p>
            	</div>
            
            	<div id = "div_white" style="float:left;">
            		<ul style ="margin-left:-30px">
                    <asp:Repeater ID="rptRight" runat="server">
                        <ItemTemplate>
                            <li>
                                <a href="详细信息.aspx?index=<%#Eval("Id") %>" target ="main"><%#Eval("InfoTitle")%></a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                    </ul>
            	</div>
            </div>
            </div>
      </div>
     </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="后台欢迎登录.aspx.cs" Inherits="都市供求信息网.html.iframe.后台欢迎登录" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style>
	#div_body{
		margin:0 auto; 
		width:960px; 
		height:930px; 
		overflow:hidden;
		}

	#div_header{
		float:right;
		width:930px; 
		height:50px; 
		margin:0 auto;
		}	
		
	#div_main{
		width:1000px;
		height:690px; 
		overflow:hidden;
		margin:0 auto;
		}
		
	#div_right{
		float:right; 
		margin-top:60px;
		margin-right:-30px; 
		width:320px; 
		height:500px;
		}
	
	#div_left{
		width:600px; 
		height:690px; 
		float:left;
		margin-top:60px;
		margin-left:20px;
		}
	#iframe{
		width:700px; 
		height:690px; 
		}
		
	/*---------*/
	.div{
		margin:0 auto;
		width:900px;
		height:15px;
		}
	.div a{
		text-decoration:none;
		color:#000;
		}
	.div a:link{
		color:#000;
		}
	.div a:visited{
		color:gray;
		}
	.div a:hover{
		color:#00F;
		text-decoration:underline;
		}
	.div a:active{
		color:gray;
		}
</style>


</head>
<body>
    <form id="form1" runat="server">
    <div id = "div_body">
    	<div id = "div_header">
        	<iframe src="顶部.aspx" frameborder = "0" scrolling="no" width="930px" height="120px"></iframe>
        </div>
        
        <div id = "div_main">
        	<div id = "div_right">
            	<iframe src = "后台右侧.html" frameborder = "0" scrolling="no" width = "320px" height = "700px"></iframe>
            </div>

			<div id = "div_left">
        		<iframe name = "main" id = "iframe" src="后台首页main.html" frameborder = "0" scrolling="no"></iframe>
       	 	</div>
    	</div>
    </div>
    </form>
</body>
</html>

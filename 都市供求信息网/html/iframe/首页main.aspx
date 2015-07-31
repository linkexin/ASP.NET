<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="首页main.aspx.cs" Inherits="都市供求信息网.html.iframe.首页main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

<style>
	#div_recommand{
		float:left;
		margin-left:-5px;
		}
	#iframe_latestInfo{
		height:800px;
		width:688px;
		float:left;
		margin-left:-5px;
		}
</style>

</head>
<body>
    <form id="form1" runat="server">
    <div id = "div_recommand">
        	<iframe src = "推荐信息.aspx" frameborder = "0" scrolling="no" width="680px" height="240px"></iframe>
    </div>
        
<div>
    <iframe src = "最新信息.aspx" frameborder = "0" scrolling="no" id = "iframe_latestInfo"></iframe>
</div>
    </form>
</body>
</html>

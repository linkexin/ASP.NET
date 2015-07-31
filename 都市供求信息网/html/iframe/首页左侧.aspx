<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="首页左侧.aspx.cs" Inherits="都市供求信息网.html.iframe.首页左侧" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
<form id="form1" runat="server">
<div style = "margin-top:0px;">
	<div style ="margin-left:8px">
        <div style = "border:1px solid #999; height:30px; width:222px; background-color:#F0F0F0">
		<p style="color:#039; font-weight:bold; margin-top:7px; font-size:12px">■日历</p>
	    </div>
        <asp:Calendar ID="Calendar1" runat="server" Width ="225px" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
	<!--<iframe src = "日历.html" frameborder = "0" scrolling="no" width="250px" height="260px"></iframe>--->
    </div>
	<div>
    	<iframe src = "信息快速搜索.aspx" frameborder = "0" scrolling="no" style = "margin-left:-5px;"></iframe>
    </div>
</div>
</form>
</body>
</html>

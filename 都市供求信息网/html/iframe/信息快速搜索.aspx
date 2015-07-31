<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="信息快速搜索.aspx.cs" Inherits="都市供求信息网.html.iframe.信息快速搜索" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style>
	#div{
		background-image:url(leftS.jpg);	
		background-repeat:no-repeat;
		background-position:right;
		height:120px;
		width:230px;
		}
        .auto-style1 {
            height: 35px;
        }
        .auto-style2 {
            width: 53px;
        }
        .auto-style3 {
            height: 35px;
            width: 53px;
        }
        .auto-style4 {
            height: 31px;
            width: 53px;
        }
        .auto-style5 {
            height: 31px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div style = "border:1px solid #999; height:30px; width:222px; background-color:#F0F0F0; margin-left:5px;">
	<p style="color:#039; font-weight:bold; font-size:12px; margin-top:7px">■信息快速搜索</p>
    </div>
	<div id = "div">
        <table style="font-size:12px; margin-top:10px; margin-left:10px; padding-top:10px; margin-top:2px;" border="0">
        	<tr>
            	<td class="auto-style4">&nbsp;关键字:</td>
                <td width="165" class="auto-style5">
                    <asp:TextBox ID="txtKey" runat="server" Width="135px" Height="21px"></asp:TextBox>
                </td>
            </tr>
            <tr>
            	<td class="auto-style3">&nbsp;条&nbsp;件:</td>
                <td class="auto-style1" aria-checked="false">
                	<asp:DropDownList ID="ddlType" runat="server" Height="21px" Width="93px">
                        <asp:ListItem Value="info_title" Selected="True">信息标题</asp:ListItem>
                        <asp:ListItem Value="info_content">信息内容</asp:ListItem>
                        <asp:ListItem Value="info_phone">联系电话</asp:ListItem>
                        <asp:ListItem Value="info_email">E-mail</asp:ListItem>
                        <asp:ListItem Value="tb_info.id">ID值</asp:ListItem>
                        <asp:ListItem Value="info_linkman">联系人</asp:ListItem>
                    </asp:DropDownList>
                    <a href ="首页关键字检索.aspx?index=1" target ="main"><asp:Button ID="btnSearch" runat="server" Text="搜索" Width="40px" OnClick="btnSearch_Click" /></a>
                </td>
            </tr>
            <tr>
            	<td class="auto-style2">搜索类型:</td>
                <td aria-checked="true">
                	<asp:RadioButton ID="rdoType0" runat="server" Text="全字匹配" GroupName="searchType" />
<asp:RadioButton ID="rdoType1" runat="server" Text="模糊搜索" Checked="True" GroupName="searchType" />
                </td>
            </tr>
        </table>
</div>
    </form>
</body>
</html>

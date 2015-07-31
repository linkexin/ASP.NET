<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="管理员.aspx.cs" Inherits="都市供求信息网.html.iframe.管理员" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

<style>
	body{
		background:#E7ECEF;
		}
	p{
		font-size:12px;
		font-family:"宋体";
		}
	#main{
		margin: 150px auto;
		height:500px;
		width:545px;
		}
	#middle{
		background-image:url(image/logon_middle.gif);
		width:545px;
		height:200px;
        margin-top:-5px;
		}
	.button{
		font-size:13px;
		font-family:"宋体";
		}
	.a{
		font-size:12px;
		font-family:"宋体";
		}
    .auto-style1 {
        height: 25px;
    }
</style>


</head>
<body>
    <form id="form1" runat="server">
    <div id = "main">
	<div>
    	<img src="image/logon_top.gif" />
    </div>
	
    <div id = "middle">
        <table cellpadding="0.1px">
            <tr style ="height:30px">
            </tr>
        	<tr>
            	<td width="135px"></td>
            	<td><p>用户名：&nbsp;</p></td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
	            <td></td>
            	<td><p>密&nbsp;码：&nbsp;</p></td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
            	<td class="auto-style1"></td>
				<td class="auto-style1"></td>
                <td class="auto-style1">
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="登录" />
                    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="重置" />
                    &nbsp;<a href="../都市供求信息网.aspx" class = "a">[返回首页]</a></td>
                
            </tr>

            <tr height ="30px">
                <td></td>
                <td colspan ="2" align ="center">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text ="" ></asp:Label>
                </td>
            </tr>
        </table>
    </div>


	<div>
    	<img src="image/logon_end.gif" />
    </div>
</div>
    </form>
</body>
</html>

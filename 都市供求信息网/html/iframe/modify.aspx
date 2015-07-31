<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modify.aspx.cs" Inherits="都市供求信息网.html.iframe.modify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

<script type ="text/javascript">
    function check(fieldName, UseName, RemName, len) {
        if (fieldName.value.length > len) {
            fieldName.value = (fieldName.value).substring(0, len);
            alert("最多只能输入" + len + "个字符");
            return false;
        }
        else {
            UseName.value = eval(fieldName.value.length);
            RemName.value = len - UseName.value;
            return true;
        }
    }
    </script>

<style>
td {
	font-size: 9pt;	color: #000000;
}

a:hover {
	font-size: 9pt;	color: #FF0000;
	text-decoration:underline
}
a {
	font-size: 9pt;	text-decoration: none;	color: black;
	noline:expression(this.onfocus=this.blur);
}
input{
	font-family: "宋体";
	font-size: 9pt;
	color: #333333;
        margin-left: 0px;
    }
body {
	margin-left: 0px;
	margin-top: 10px;
	margin-right: 0px;
	margin-bottom: 0px;
	
}
    .auto-style1 {
        width: 683px;
    }
    .auto-style2 {
        width: 244px;
    }
    .auto-style3 {
        height: 23px;
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" height="100%" style="width: 631px">
		<tr height="20px"><td class="auto-style1"><img src="image/default_t.jpg"></td></tr>
		<tr style ="margin-top:-5px">
			<td background="image/default_m.jpg" valign="top" align="center" class="auto-style1">
				<input type="hidden" name="addType" value="add"/>
				<table border="0" height="300" rules="all" cellspacing="0" style="width: 517px">
					<tr height="30"><td style="text-indent:10"><font color="#004790"><b>■发布信息<asp:HiddenField ID="hfId" runat="server" />
                        </b></font></td></tr>
					<tr>
						<td align="center">
							<table border="0" rules="all" cellspacing="8" style="width: 651px; margin-right: 0px">                    
								<tr>
									<td width="20%" style="text-indent:10">信息类别：</td>
									<td>
										&nbsp;<asp:DropDownList ID="ddlTbType" runat="server">
                                        </asp:DropDownList>
										
									</td>
									<td align="right" class="auto-style2"><font color="#7F7F7F">[信息标题最多不得超过 40 个字符]&nbsp;&nbsp;</font></td>
								</tr>
								<tr><td colspan="3" class="auto-style3"></td></tr>
								<tr>
									<td style="text-indent:10">信息标题：</td>
									<td colspan="2">
                                        <asp:TextBox ID="txtTitle" runat="server" Width="445px"></asp:TextBox>
                                    </td>                        
								</tr>
								<tr><td colspan="3"></td></tr>
								<tr>
									<td style="text-indent:10">信息内容：</td> 
									<td>
										<font color="#7F7F7F">
											已用：<input type="text" name="ContentUse" value="0" size="4" disabled style="text-align:center;border:0;"> 个&nbsp;&nbsp;
											剩余：<input type="text" name="ContentRem" value="500" size="4" disabled style="text-align:center;border:0;"> 个 
										</font>
									</td>
									<td align="right" class="auto-style2"><font color="#7F7F7F">[信息内容最多不得超过 500 个字符]&nbsp;&nbsp;</font></td>
								</tr>
								<tr><td colspan="3"></td></tr>
								<tr><td colspan="3" align="center">
                                    <asp:TextBox ID="txtContent" runat="server" onKeyDown="check(txtContent,ContentUse,ContentRem,500)" onKeyUp="check(txtContent,ContentUse,ContentRem,500)" onChange="check(txtContent,ContentUse,ContentRem,500)" Height="144px" TextMode="MultiLine" Width="638px"></asp:TextBox>
                                    </td></tr>
								<tr>
									<td style="text-indent:10">联系电话：</td>
									<td colspan="2">
                                        <asp:TextBox ID="txtPhone" runat="server" Width="300px"></asp:TextBox>
                                        <font color="gray">&nbsp;[多个电话以逗号分隔！]</font></td>
								</tr>
								<tr><td colspan="3"></td></tr>
								<tr>
									<td style="text-indent:10">联 系 人：</td>
									<td colspan="2">
                                        <asp:TextBox ID="txtContact" runat="server" Width="300px"></asp:TextBox>
                                    </td>
								</tr>
								<tr><td colspan="3"></td></tr>
								<tr>
									<td style="text-indent:10">E - mail：</td>
									<td colspan="2">
                                        <asp:TextBox ID="txtEmail" runat="server" Width="300px"></asp:TextBox>
                                    </td>                    
								</tr>
								<tr><td colspan="3">&nbsp;</td></tr>                        
							</table>                
						</td>
					</tr>
					<tr align="center" height="50">
						<td>
							<asp:Button ID="btnOk" runat="server" Text="确定" OnClick="btnOk_Click" />
                            &nbsp;
							<input type="reset" value="&#37325;&#22635;"/>
            

						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr height="26"><td class="auto-style1">
            <img src="image/default_e.jpg"></td></tr>        
	</table>
        <asp:Label ID="lblMessage" runat="server" Width="36px" align ="center" Height="10px"></asp:Label>
    </form>
</body>
</html>

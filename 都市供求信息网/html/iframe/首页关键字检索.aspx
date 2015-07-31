<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="首页关键字检索.aspx.cs" Inherits="都市供求信息网.html.iframe.首页关键字检索" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

<script type ="text/javascript">
    function deleteInfo(id)
    {
        if (confirm("确定要删除此条信息吗？"))
            location.href = "deleteInfo.aspx?index=" + id;
    }
</script>

<style type="text/css">
	#div_main{
		width:680px;
		height:1000px;
		overflow:hidden;
		margin-top:17px;
		}
	#div_header{
		border:1px solid #999;
		height:30px;
		width:678px;
		background-color:#F0F0F0;
		}
	#p_header{
		color:#039;
		font-weight:bold;
		margin-top:7px;
		font-size:12px;
		}
	#div_table{
		width:680px;
        font-size:12px;
		}
	#table{
		width:680px;
		font-size:12px;
		font-family:"宋体";
		border:#D4D0C8 1px solid;
		}
	#td_font{
		font-weight:bold;
		text-align:center;
		background-color:#CCC;
		}
	tr{
		height:28px;
		}
</style>

</head>
<body>
    <form id="form1" runat="server">
    <div id = "div_main">
	<div id = "div_header">
		<p id = "p_header">&nbsp;■查询结果&nbsp;&nbsp;
            <asp:DropDownList ID="ddlType" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;
            关键字：<asp:TextBox ID="txtKey" runat="server"></asp:TextBox>&nbsp;
            <asp:Button ID="btnSearch" runat="server" Text="搜索" OnClick="btnSearch_Click" />
        </p>
	</div>
    <div id = "div_table">
        <asp:GridView ID="gdvInfo" runat="server" CellPadding="3" EnableModelValidation="True" Width="680px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" HorizontalAlign="Center" style="margin-bottom: 0px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="序号" />
                <asp:TemplateField HeaderText="信息类型">
                    <ItemTemplate>
                        <%#Eval("TBType.TypeIntro") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="InfoTitle" HeaderText="信息标题" />
                <asp:BoundField DataField="InfoDate" HeaderText="发布时间" />
                <asp:BoundField DataField="InfoContact" HeaderText="联系人" />
                <asp:TemplateField HeaderText="编辑">
                    <ItemTemplate>
                        <a href = 'modify.aspx?index=<%#Eval("Id")%>'>修改</a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="删除">
                    <ItemTemplate>
                        <a href ='javascript:deleteInfo(<%#Eval("Id")%>)'>删除</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" HorizontalAlign="Center"/>
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>
</div>
    </form>
</body>
</html>

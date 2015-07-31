<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="详细信息.aspx.cs" Inherits="都市供求信息网.html.iframe.详细信息" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 13%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- 查看详细信息 -->
        
        <table width="670" border="0" cellspacing="0" cellpadding="0" style="margin-top:5">
        
            <tr height="30"><td style="text-indent:5" valign="bottom"><font color="#004790"><b>■查看详细信息</b></font></td></tr>            
            <tr height="1"><td></td></tr>
            <tr bgcolor="#FAFCF5">
                <td style="border:1 solid">
                    <table border="0" width="100%" cellspacing="0" cellpadding="2">
                        
                        
                            <tr height="40">
                                <td style="text-indent:20" class="auto-style1">信息类别：</td>
                                <td>
                                    <asp:Label ID="lblType" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr height="40">
                                <td style="text-indent:20" class="auto-style1">发布时间：</td>
                                <td>
                                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr height="40">
                                <td style="text-indent:20" class="auto-style1">信息标题：</td>
                                <td>
                                    <asp:Label ID="lblTitle" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr height="40"><td colspan="2" style="text-indent:20">信息内容：</td></tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <table border="1" width="630" cellspacing="0" cellpadding="10" rules="none" frame="below" style="word-break:break-all" bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">
                                        <tr height="200" bgcolor="white"><td colspan="3" valign="top" style="border:1 solid">
                                            <!--<asp:Label ID="lblContent" runat="server"></asp:Label>-->
                                            <asp:TextBox ID="aa" runat="server" Height="126px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                            </td></tr>
                                        <tr height="20" align="center">
                                            <td>联系电话：<asp:Label ID="lblPhone" runat="server"></asp:Label>
                                            </td>
                                            <td>联系人：<asp:Label ID="lblContact" runat="server"></asp:Label>
                                            </td>
                                            <td>E-mail：<asp:Label ID="lblEmail" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>                      
                                </td>
                            </tr>
                            <tr height="63"><td align="center" colspan="2"><a href="javascript:window.history.back(-1)">返回</a></td></tr>                              
                        
                    </table>
                </td>
            </tr>
        </table>
        <br>
</td>
            </tr>
           
        </table>

    </form>
</body>
</html>

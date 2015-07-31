<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="都市供求信息网.aspx.cs" Inherits="都市供求信息网.html.都市供求信息网" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type = "text/css">

	#a1_top{
		color:#999; 
		text-decoration:none;
		font-size:15px;
		float:left;
		}	
	#a2_top{
		color:#999; 
		text-decoration:none;
		font-size:15px;
		float:right;
		}

	#div_header{
		background-image:url(iframe/image/menu.gif);
		}
	#div_logo{
		float:left;
		background-image:url(iframe/image/logo.gif);
		width:222px;
		height:56px;
		}
	#div_menu{
		float:left;
		background-image:url(iframe/image/menu.gif);
		height:56px;
        width:700px;
		}
	#li_menu{
		list-style:none; 
		width:110px; 
		float:left; 
		}
	#a_menu{
		color:#FFF; 
		text-decoration:none;
		font-size:15px;
			}
			
		/**/
	#div_top{
		margin:0 auto;
		width:930px;
		height:200px;
		}
	#div_main{
		margin:0 auto;
		width:940px;
		height:700px;
		overflow:hidden;
		}
	
	#div_content{
		float:right;
		overflow:hidden;
		height:1100px;
		width:700px;
		
		}
	#img_footer{
		margin:0 auto;
		width:930px;
		height:53px;
		}
</style>

</head>
<body>
    <form id="form1" runat="server">
   <div style = "height:180px;">
	<div style="width:922px; margin:0px auto;">
    	<div style = "float: left;">
			<a href="iframe/发布信息.aspx" id = "a1_top" target="main">[发布信息]</a>
        	<a href="iframe/管理员.aspx" id = "a1_top" target="_top">[进入后台]</a>
   		</div>
        
        <div style = "float: right;">
        	<a href="" id = "a2_top">联系我们</a>
            <a href="" id = "a2_top">收藏本页-</a>
            <a href="" id = "a2_top">设为本页-</a> 
        </div>
        <br/>
    </div>
    
	<div style="height:56px; width:922px; margin:0px auto;">
    	<div id = "div_logo"></div>
        <div id = "div_menu">
        	<ul>
            	<li id = "li_menu">
                	<a href="iframe/首页main.aspx" id="a_menu" target="main">首页</a>
                </li>
                <asp:Repeater ID="rptTBType" runat="server">
                    <ItemTemplate>
                        <li id ="li_menu">
                            <a id ="a_menu" target ="main" href ="iframe/首页导航检索main.aspx?typeId=<%#Eval("Id") %>">
                                <%#Eval("TypeIntro") %>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
                
            </ul>
        </div>
    </div>
    <div style="height:15px; width:922px; margin:0px auto;">
    	<img src = "iframe/image/pcard1.jpg"/>
    </div>
</div>

    <!--main-->
    <div id = "div_main">
    	<div style = "float:left; margin-left:-6px;">
    		<iframe src = "iframe/首页左侧.aspx" frameborder = "0" scrolling="no" width="240px" height="500px"></iframe>
  		</div>
        
   	 	<div id = "div_content">
        	<iframe name = "main" src = "iframe/首页main.aspx" frameborder = "0" scrolling="no" width="690px" height="1100px" style = "margin-right:-50px;"></iframe>
        </div>
	</div>
          
	<div style = "margin:0 auto; background-image:url(iframe/image/end.jpg); height:53px; width:920px;"></div>

    </form>
</body>
</html>

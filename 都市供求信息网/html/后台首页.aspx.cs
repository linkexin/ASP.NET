using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 都市供求信息网.model;

namespace 都市供求信息网.html.后台
{
    public partial class 后台首页 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Users"] == null)
            {
                Response.Redirect("../前台/iframe/管理员登录/管理员登录.aspx");
            }
            else
            {
                Users user = (Users)Session["Users"];
            }
        }
    }
}
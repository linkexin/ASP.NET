using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 都市供求信息网.dao;

namespace 都市供求信息网.html.iframe
{
    public partial class deleteInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 0;
            if (!Page.IsPostBack)
            {
                string str = Request.QueryString["index"];
                if (str != "" && str != null)
                {
                    try
                    {
                        id = Convert.ToInt32(str);
                    }
                    catch
                    {
                        id = -1;
                    }
                }
                TBInfoService infoService = new TBInfoService();
                int ok = infoService.deleteInfo(id);
                if (ok > 0)
                    Response.Redirect("首页关键字检索.aspx");
                else
                    Response.Write("删除失败");
            }
        }
    }
}
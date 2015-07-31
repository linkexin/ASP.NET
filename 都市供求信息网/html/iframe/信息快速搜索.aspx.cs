using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 都市供求信息网.dao;
using 都市供求信息网.model;
using System.Collections;

namespace 都市供求信息网.html.iframe
{
    public partial class 信息快速搜索 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            TBInfoService infoService = new TBInfoService(); 
            string key = txtKey.Text;
            string typeId = ddlType.SelectedValue;
            ArrayList list = new ArrayList();
            if (rdoType0.Checked == true)
                list = infoService.SearchInfo(key, typeId, 0);
            else
                list = infoService.SearchInfo(key, typeId, 1);
            Session["data"] = list;
            Response.Write("<script language='javascript'>window.open(\"首页关键字检索.aspx?index=1\", \"main\");</script>");
        }
    }
}
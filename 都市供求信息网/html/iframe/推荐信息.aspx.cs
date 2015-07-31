using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using 都市供求信息网.model;
using 都市供求信息网.dao;

namespace 都市供求信息网.html.iframe
{
    public partial class 推荐信息 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            showInfo();
        }

        private void showInfo()
        {
            TBInfoService infoService = new TBInfoService();
            ArrayList list = infoService.getPayforInfo();
            
            ArrayList list1 = new ArrayList();
            ArrayList list2 = new ArrayList();
            
            for (int i = 0; i < list.Count && i < 4; i++)
                list1.Add(list[i]);
            for (int j = 4; j < list.Count && j < 8; j++)
                list2.Add(list[j]);
             
            rptInfoLeft.DataSource = list1;
            rptInfoLeft.DataBind();
            rptInfoRight.DataSource = list2;
            rptInfoRight.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using 都市供求信息网.dao;
using 都市供求信息网.model;

namespace 都市供求信息网.html.iframe
{
    public partial class 最新信息 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            showData();
        }

        private void showData()
        {
            TBInfoService infoService = new TBInfoService();
            ArrayList list1 = infoService.getFreeInfo(2);
            ArrayList list2 = infoService.getFreeInfo(7);

            rptLeft.DataSource = list1;
            rptLeft.DataBind();

            rptRight.DataSource = list2;
            rptRight.DataBind();
        }
    }
}
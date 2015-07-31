using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 都市供求信息网.dao;
using 都市供求信息网.model;
using System.Collections;

namespace 都市供求信息网.html
{
    public partial class 都市供求信息网 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            showTbType();
        }

        private void showTbType()
        {
            TBTypeService typeService = new TBTypeService();
            ArrayList list = typeService.GetTbTypeList();
            rptTBType.DataSource = list;
            rptTBType.DataBind();//数据源绑定
        }
      
    }
}
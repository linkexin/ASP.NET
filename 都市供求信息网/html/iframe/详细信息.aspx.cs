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
    public partial class 详细信息 : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
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
               
            }
            showData();
        }

        private void showData()
        {
            TBInfoService infoService = new TBInfoService();
            TbInfo tb = infoService.getInfoById(id);
            lblType.Text = tb.Tbtype.TypeIntro;
            lblTitle.Text = tb.InfoTitle;
            //lblContent.Text = tb.InfoContent;
            lblContact.Text = tb.InfoContact;
            lblDate.Text = tb.InfoDate;
            lblEmail.Text = tb.InfoEmail;
            lblPhone.Text = tb.InfoPhone;
            aa.Text = tb.InfoContent;
        }
    }
}
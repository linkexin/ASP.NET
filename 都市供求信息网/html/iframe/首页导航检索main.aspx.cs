using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 都市供求信息网.model;
using 都市供求信息网.dao;

namespace 都市供求信息网.html.iframe
{
    public partial class 首页导航检索main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string idStr = Request.QueryString["typeId"];
            int typeId = 0;
            if (idStr != null && idStr != "")
            {
                try
                {
                    typeId = Convert.ToInt32(idStr);
                }
                catch
                {
                    typeId = -1;
                }
            }
            showData(typeId);
        }

        /// <summary>
        /// 显示信息
        /// </summary>
        /// <param name="typeId"></param>
        private void showData(int typeId)
        {
            TBInfoService infoService = new TBInfoService();
            TbInfo info = infoService.getLatestInfo(1, typeId);
            if (info != null)
            {
                lblTitle1.Text = info.InfoTitle;
                lblDate1.Text = string.Format("{0:yyyy-MM-dd HH:mm:ss}", Convert.ToDateTime(info.InfoDate));
                lblContent1.Text = info.InfoContent;
                lblContact1.Text = info.InfoContact;
                lblPhone1.Text = info.InfoPhone.Substring(0, 7) + "****";
                lblEmail1.Text = info.InfoEmail;
                lblTop1.Text = "推荐" + info.Tbtype.TypeIntro + "『缴费专区』";
            }
            else
            {
                lblContent1.Text = "暂无信息";
                lblPhone1.Text = "00000000000";
            }

            info = infoService.getLatestInfo(0, typeId);
            if (info != null)
            {
                lblTitle0.Text = info.InfoTitle;
                lblDate0.Text = string.Format("{0:yyyy-MM-dd HH:mm:ss}", Convert.ToDateTime(info.InfoDate));
                lblContent0.Text = info.InfoContent;
                lblContact0.Text = info.InfoContact;
                lblPhone0.Text = info.InfoPhone.Substring(0, 7) + "****";
                lblEmail0.Text = info.InfoEmail;
                lblTop0.Text = "最新" + info.Tbtype.TypeIntro + "『免费专区』";
            }
            else
            {
                lblContent0.Text = "暂无信息";
                lblPhone0.Text = "00000000000";
            }
        }
    }
}
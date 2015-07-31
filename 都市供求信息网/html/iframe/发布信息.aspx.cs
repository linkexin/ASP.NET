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
    public partial class 发布信息 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
                showTypeList();
        }
        private void showTypeList()
        {
            TBTypeService tbService = new TBTypeService();
            ArrayList list = tbService.GetTbTypeList();
            ddlTbType.DataSource = list;
            ddlTbType.DataTextField = "TypeIntro";
            ddlTbType.DataValueField = "Id";
            ddlTbType.DataBind();
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            string typeId = ddlTbType.SelectedValue;
            string title = txtTitle.Text;
            string infoConntent = txtContent.Text;
            string phone = txtPhone.Text;
            string contact = txtContact.Text;
            string email = txtEmail.Text;

            TbInfo info = new TbInfo();
            info.InfoType = Convert.ToInt32(typeId);
            info.InfoTitle = title;
            info.InfoContact = contact;
            info.InfoContent = infoConntent;
            info.InfoPhone = phone;
            info.InfoEmail = email;
            info.InfoDate = string.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now);
            info.InfoState = 1;
            info.InfoPayFor = 0;

            TBInfoService infoService = new TBInfoService();
            int ok = infoService.AddTbInfo(info);
            if (ok > 0)
                lblMessage.Text = "<script> alert('发布成功'); </script>";
            else
                lblMessage.Text = "<script> alert('发布失败'); </script>";
        }
    }
}
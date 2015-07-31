using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 都市供求信息网.dao;
using 都市供求信息网.model;

namespace 都市供求信息网.html.iframe
{
    public partial class modify : System.Web.UI.Page
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
                hfId.Value = id.ToString();
                showInfoList();
                showUserData();
            }
        }

        private void showInfoList()
        {
            TBTypeService tbService = new TBTypeService();
            ArrayList list = tbService.GetTbTypeList();
            ddlTbType.DataSource = list;
            ddlTbType.DataTextField = "TypeIntro";
            ddlTbType.DataValueField = "Id";
            ddlTbType.DataBind();
        }

        private void showUserData()
        {
            TBInfoService infoService = new TBInfoService();
            TbInfo tb = infoService.getInfoById(id);
            ddlTbType.SelectedValue = tb.Id.ToString();
            txtTitle.Text = tb.InfoTitle;
            txtContent.Text = tb.InfoContent;
            txtContact.Text = tb.InfoContact;
            txtPhone.Text = tb.InfoPhone;
            txtEmail.Text = tb.InfoEmail;
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            
            string typeId = ddlTbType.SelectedValue;
            string title = txtTitle.Text;
            string infoContent = txtContent.Text;
            string phone = txtPhone.Text;
            string contact = txtContact.Text;
            string email = txtEmail.Text;

            TbInfo info = new TbInfo();
            info.InfoType = Convert.ToInt32(typeId);
            info.InfoTitle = title;
            info.InfoContact = contact;
            info.InfoContent = infoContent;
            info.InfoPhone = phone;
            info.InfoEmail = email;
            info.Id = Convert.ToInt32(hfId.Value);

            TBInfoService infoService = new TBInfoService();
            int ok = infoService.updateInfo(info);
            if (ok > 0)
                lblMessage.Text = "<script> alert('修改成功');location.href = '首页关键字检索.aspx'; </script>";
            else
                lblMessage.Text = "<script> alert('修改失败'); </script>";
        }
    }
}
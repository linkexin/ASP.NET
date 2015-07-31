using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 都市供求信息网.model;
using 都市供求信息网.dao;
using System.Collections;

namespace 都市供求信息网.html.iframe
{
    public partial class 首页关键字检索 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = 0;
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

                gdvInfo.AutoGenerateColumns = false;
                fillInfoType();
                if (id == 0)
                    showData();
                else
                    getDataSource();            
            }
        }


        /// <summary>
        /// 获取并设置DropDownList的数据源
        /// </summary>
        private void fillInfoType()
        {
            TBTypeService typeService = new TBTypeService();
            ArrayList list = typeService.GetTbTypeList();
            //Response.Write(list.Count);
            TBType temp = new TBType();
            temp.Id = 0;
            temp.TypeIntro = "全部信息";
            list.Insert(0, temp);

            ddlType.DataSource = list;
            ddlType.DataTextField = "TypeIntro";
            ddlType.DataValueField = "Id";
            ddlType.DataBind();
        }


        /// <summary>
        /// 由信息快速搜索跳转过来时，获取数据源
        /// </summary>
        private void getDataSource()
        {
            ArrayList list = (ArrayList)Session["data"];
            gdvInfo.DataSource = list;
            gdvInfo.DataBind();
        }

        private void showData()
        {
            string key = txtKey.Text.Trim();
            int typeId = Convert.ToInt32(ddlType.SelectedValue);

            TBInfoService infoService = new TBInfoService();
            ArrayList list = infoService.getSearchInfo(typeId, key);
            gdvInfo.DataSource = list;
            gdvInfo.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            showData();
        }
    }
}
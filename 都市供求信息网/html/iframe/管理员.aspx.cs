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
    public partial class 管理员 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string pwd = txtPwd.Text;

            Users user = new Users();
            user.LoginName = name;
            user.Password = pwd;

            UsersService concate = new UsersService();
            user = concate.CheckLogin(user);

            if (user == null)
                lblMessage.Text = "用户名或登录错误，登录失败";
            else
            {
                Session["Users"] = user;
                lblMessage.Text = "登录成功";
                Response.Redirect("后台欢迎登录.aspx");//页面跳转
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtPwd.Text = "";
        }
    }
}
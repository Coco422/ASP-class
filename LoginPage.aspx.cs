using MySql.Data.MySqlClient;
using Org.BouncyCastle.Ocsp;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Configuration.Provider;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C002
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ButtonSignup_Click(object sender, EventArgs e)
        {

            Response.Redirect("Default.aspx");

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string name = txtUserName.Text;
            string pwd = txtPwd.Text;
            if (name != null || pwd != null)
            {
                string sql = "select count(*) from users where username='" + name + "' and password='" + pwd + "'";//获取数据中的信息
                
                //连接远程数据库
                string connStr = "server=120.78.188.133;port=3306;uid=ray;pwd=ray123!@#;database=ray_asp_class";
                MySqlConnection conn = new MySqlConnection(connStr);
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);

                string obj = cmd.ExecuteScalar().ToString();
                conn.Close();

                if (Convert.ToInt32(obj) > 0)
                {
                    //Response.Write("登录成功");
                    Response.Write("<script>alert('登录成功！'); window.location.href = \"StudentPage.aspx\";</script>");

                }
                else
                {
                    //Response.Write("登录失败");
                    Response.Write("<script>alert('用户名或密码错误，请重新输入！');</script>");
                }
            }
            else
            {
                return;
            }

        }
    }
}
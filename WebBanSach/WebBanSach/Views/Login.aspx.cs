using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanSach.Views
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
        }
        public static string Uname = "";
        public static int User;
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if (UnameTb.Value == "" || PasswordTb.Value == "")
            {
                Thongbao.Text = "Sai thông tin đăng nhập!!!";
            }
            else if (UnameTb.Value == "admin" && PasswordTb.Value == "123456")
            {
                Response.Redirect("Admin/NhanVien.aspx");
            }
            else
            {
                string Query = "Select * from loginNV Where tknv='{0}' and mknv='{1}'";
                Query = string.Format(Query, UnameTb.Value, PasswordTb.Value);
                DataTable dt = Con.GetData(Query);
                if (dt.Rows.Count == 0)
                {
                    Response.Redirect("Admin/NhanVien.aspx");
                }
                else
                {
                    Uname = UnameTb.Value;
                    User = Convert.ToInt32(dt.Rows[0][0].ToString());
                    Response.Redirect("NhanVien/Sach.aspx");

                }
            }
        }
    }
}
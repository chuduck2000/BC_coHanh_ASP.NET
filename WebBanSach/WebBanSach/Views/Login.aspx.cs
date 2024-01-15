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
            //Admin

            else if (UnameTb.Value == "admin" && PasswordTb.Value == "123456")
            {
                Response.Redirect("Admin/NhanVien.aspx");
            }
            else
            {
                //NV
                string Query = "Select * from loginNV Where tknv='{0}' and mknv='{1}'";
                Query = string.Format(Query, UnameTb.Value, PasswordTb.Value);
                DataTable dtNV = Con.GetData(Query);

                //KH
                Query = "Select * from loginKH Where tkkh='{0}' and mkkh='{1}'";
                Query = string.Format(Query, UnameTb.Value, PasswordTb.Value);
                DataTable dtKH = Con.GetData(Query);

                if (dtNV.Rows.Count > 0)
                {
                    Uname = UnameTb.Value;
                    User = Convert.ToInt32(dtNV.Rows[0][0].ToString());
                    Response.Redirect("NhanVien/Sach.aspx");
                }
                else if (dtKH.Rows.Count > 0)
                {
                    Uname = UnameTb.Value;
                    User = Convert.ToInt32(dtKH.Rows[0][0].ToString());
                    Response.Redirect("KhachHang/Home.aspx");
                }
                else
                {
                    Thongbao.Text = "Sai thông tin đăng nhập!!!";
                }
            }
        }
    }
}
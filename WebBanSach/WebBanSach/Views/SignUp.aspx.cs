using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanSach.Views
{
    public partial class SignUp : System.Web.UI.Page
    {
        Models.Functions Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
        }


        protected void SignUpBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (tenkhTb.Value == "" || tkkhTb.Value == "" || mkkhTb.Value == "")
                {
                    Thongbao.Text = "Không có Khách hàng!!!";
                }
                else
                {
                    string tenkh = tenkhTb.Value;
                    string tkkh = tkkhTb.Value;
                    string mkkh = mkkhTb.Value;

                    string Query = "insert into loginKH values('{0}','{1}','{2}')";
                    Query = string.Format(Query, tenkh, tkkh, mkkh);
                    Con.SetData(Query);
                    Thongbao.Text = "Thêm thông tin thành công!!!";
                    tenkhTb.Value = "";
                    tkkhTb.Value = "";
                    mkkhTb.Value = "";

                }
            }
            catch (Exception Ex)
            {
                Thongbao.Text = Ex.Message;
            }

        }
    }
}
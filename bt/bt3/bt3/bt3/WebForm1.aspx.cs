using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            lblThongBao.Text = "Bạn đã đăng ký thành công!!";

            this.lblThongBao.Text += "<br> Họ tên: " + this.txtHoTen.Text;
            this.lblThongBao.Text += "<br> Cơ quan: " + this.txtCoQuan.Text;
            this.lblThongBao.Text += "<br> E-mail: " + this.txtEmail.Text;
            this.lblThongBao.Text += "<br> Mật khẩu: " + this.txtMatKhau.Text;
            this.lblThongBao.Text += "<br> Ngày check-in: " + this.txtCheckin.Text;
            this.lblThongBao.Text += "<br> Ngày ở: " + this.txtSoNgay.Text;
            this.lblThongBao.Text += "<br> Loại phòng: " + this.ddlLoaiPhong.Text;
        }
    }
}
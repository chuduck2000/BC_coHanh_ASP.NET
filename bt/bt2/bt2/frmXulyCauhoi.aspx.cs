using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt2
{
    public partial class frmXulyCauhoi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string tieude = Request["txtCauhoi"];
            string lienhe = Request["txtLienhe"];
            string email = Request["txtEmail"];
            string chitiet = Request["txtChitiet"];
            string chuyenmuc = Request["ddlChuyenmuc"];
            string tinhthanh = Request["ddlTinhthanh"];
            string quanhuyen = Request["ddlQuanhuyen"];

            Response.Write("Tiêu đề câu hỏi: " + tieude);
            Response.Write("<br>Tên liên hệ: " + lienhe);
            Response.Write("<br>Email: " + email);
            Response.Write("<br>Chi tiết câu hỏi: " + chitiet);
            Response.Write("<br>Phân loại chuyên mục: " + chuyenmuc);
            Response.Write("<br>Tỉnh/thành phố: " + tinhthanh);
            Response.Write("<br>Quận/huyện: " + quanhuyen);
        }
    }
}
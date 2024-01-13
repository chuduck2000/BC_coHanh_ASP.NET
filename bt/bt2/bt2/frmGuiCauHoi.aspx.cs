using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt2
{
    public partial class frmGuiCauHoi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         

        }

        protected void btnGui_Click(object sender, EventArgs e)
        {

        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            this.txtCauhoi.Text = "";
            this.txtChitiet.Text = "";
            this.txtEmail.Text = "";
            this.txtLienhe.Text = "";
            this.ddlChuyenmuc.Text = "";
            this.ddlQuanhuyen.Text = "";
            this.ddlTinhthanh.Text = "";
        }
    }
}
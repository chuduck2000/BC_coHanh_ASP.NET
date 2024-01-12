using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class PageFlow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblInfo.Text += "Gọi lần 2";
            lblInfo.Text += "Page.Load được nạp.<br/>";

            if (Page.IsPostBack)
            {
                lblInfo.Text += "<b>Sau khi kích hoạt một sự kiện.</b><br/>";
            }
        }
        private void Page_Init(object sender, EventArgs e)
        {
            lblInfo.Text += "Gọi lần 1";
            lblInfo.Text += "Page.Init được nạp.<br/>";
        }
        private void Page_PreRender(object sender, EventArgs e)
        {
            lblInfo.Text += "Gọi lần 3";
            lblInfo.Text += "Page.PreRender được nạp.<br/>";
        }
        private void Page_Unload(object sender, EventArgs e)
        {
            lblInfo.Text += "Page.Unload được nạp.<br/>";
        }
        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            lblInfo.Text += "Button1_Click được nạp.<br/>";
        }
    }
}
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void button_Click(object sender, EventArgs e)
        {
            
        }
        protected void ReadComment()
        {
            string stempt = "";
            string sfile = "D://ASP//bt2//data.txt";
            using (StreamReader reader = new StreamReader(sfile))
            {
                string snoidung = reader.ReadToEnd();
                string[] delimeter = { "#END" };
                string[] sArr = snoidung.Split(delimeter, StringSplitOptions.RemoveEmptyEntries);
                foreach (string s in sArr)
                {
                    stempt = stempt + s + "</br>";
                }
            }
            EntryComment.InnerHtml = "Nội dung" + stempt;
        }

        protected void Btn_GoiND_Click(object sender, EventArgs e)
        {
            string sfile = "D://ASP//bt2//data.txt";
            using (StreamWriter writer = new StreamWriter(sfile, true))
            {
                writer.WriteLine(txtTieuDe.Text);
                writer.WriteLine(txtHoTen.Text);
                writer.WriteLine(txtEmail.Text);
                writer.WriteLine(txtNoidung.Text);
                writer.WriteLine("#END");
                writer.Close();
            }
            EntryComment.InnerHtml = "Bạn đã gửi thành công";
        }
    }
}
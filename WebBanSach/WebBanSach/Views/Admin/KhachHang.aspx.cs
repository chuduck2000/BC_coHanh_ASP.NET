using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBanSach.Views.NhanVien;

namespace WebBanSach.Views.Admin
{
    public partial class KhachHang : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowdsKhachHang();
        }
        private void ShowdsKhachHang()
        {
            string Query = "Select * from loginKH";
            dsKhachHang.DataSource = Con.GetData(Query);
            dsKhachHang.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
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
                    ShowdsKhachHang();
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
        int Key = 0;

        protected void dsKhachHang_SelectedIndexChanged(object sender, EventArgs e)
        {
            tenkhTb.Value = dsKhachHang.SelectedRow.Cells[1].Text;
            tkkhTb.Value = dsKhachHang.SelectedRow.Cells[2].Text;
            mkkhTb.Value = dsKhachHang.SelectedRow.Cells[3].Text;

            if (tenkhTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(dsKhachHang.SelectedRow.Cells[0].ID);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
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

                    string Query = " Update loginKH set tenkh = '{1}',tkkh= '{2}',mkkh='{3}' where makh = '{0}'";
                    Query = string.Format(Query, tenkh, tkkh, mkkh, dsKhachHang.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowdsKhachHang();
                    Thongbao.Text = "Cập nhật thông tin thành công!!!";
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

        protected void DeleteBtn_Click(object sender, EventArgs e)
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

                    string Query = " delete from loginKH where makh = '{0}'";
                    Query = string.Format(Query, dsKhachHang.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowdsKhachHang();
                    Thongbao.Text = "Xóa thông tin thành công!!!";
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
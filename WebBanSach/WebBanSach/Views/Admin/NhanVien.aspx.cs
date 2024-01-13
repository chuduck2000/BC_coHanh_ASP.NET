using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanSach.Views.Admin
{
    public partial class NhanVien : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowdsNhanVien();
        }
        private void ShowdsNhanVien()
        {
            string Query = "Select * from loginNV";
            dsNhanVien.DataSource = Con.GetData(Query);
            dsNhanVien.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (manvTb.Value == "" || tennvTb.Value == "" || tknvTb.Value == "" || mknvTb.Value == "")
                {
                    Thongbao.Text = "Không có Nhân viên!!!";
                }
                else
                {
                    string manv = manvTb.Value;
                    string tennv = tennvTb.Value;
                    string tknv = tknvTb.Value;
                    string mknv = mknvTb.Value;

                    string Query = "insert into loginNV values('{0}','{1}','{2}', '{3}')";
                    Query = string.Format(Query, manv, tennv, tknv, mknv);
                    Con.SetData(Query);
                    ShowdsNhanVien();
                    Thongbao.Text = "Thêm thông tin thành công!!!";
                    manvTb.Value = "";
                    tennvTb.Value = "";
                    tknvTb.Value = "";
                    mknvTb.Value = "";

                }
            }
            catch (Exception Ex)
            {
                Thongbao.Text = Ex.Message;
            }
        }
        int Key = 0;
        protected void dsNhanVien_SelectedIndexChanged1(object sender, EventArgs e)
        {
            manvTb.Value = dsNhanVien.SelectedRow.Cells[1].Text;
            tennvTb.Value = dsNhanVien.SelectedRow.Cells[2].Text;
            tknvTb.Value = dsNhanVien.SelectedRow.Cells[3].Text;
            mknvTb.Value = dsNhanVien.SelectedRow.Cells[4].Text;

            if (manvTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(dsNhanVien.SelectedRow.Cells[0].ID);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (manvTb.Value == "" || tennvTb.Value == "" || tknvTb.Value == "" || mknvTb.Value == "")
                {
                    Thongbao.Text = "Không có Nhân viên!!!";
                }
                else
                {
                    string manv = manvTb.Value;
                    string tennv = tennvTb.Value;
                    string tknv = tknvTb.Value;
                    string mknv = mknvTb.Value;

                    string Query = " Update loginNV set tennv = '{1}',tknv= '{2}',mknv='{3}' where manv = '{0}'";
                    Query = string.Format(Query, manv, tennv, tknv, mknv, dsNhanVien.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowdsNhanVien();
                    Thongbao.Text = "Cập nhật thông tin thành công!!!";
                    manvTb.Value = "";
                    tennvTb.Value = "";
                    tknvTb.Value = "";
                    mknvTb.Value = "";

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
                if (manvTb.Value == "" || tennvTb.Value == "" || tknvTb.Value == "" || mknvTb.Value == "")
                {
                    Thongbao.Text = "Không có Nhân viên!!!";
                }
                else
                {
                    string manv = manvTb.Value;
                    string tennv = tennvTb.Value;
                    string tknv = tknvTb.Value;
                    string mknv = mknvTb.Value;

                    string Query = " delete from loginNV where manv = '{0}'";
                    Query = string.Format(Query, dsNhanVien.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowdsNhanVien();
                    Thongbao.Text = "Xóa thông tin thành công!!!";
                    manvTb.Value = "";
                    tennvTb.Value = "";
                    tknvTb.Value = "";
                    mknvTb.Value = "";

                }
            }
            catch (Exception Ex)
            {
                Thongbao.Text = Ex.Message;
            }
        }
    }
}
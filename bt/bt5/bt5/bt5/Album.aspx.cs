using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt5
{
    public partial class Album : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                FillGridView();
        }

        private void FillGridView()
        {
            if (Session["selectedSongs"] == null)
            {
                lblStatus.Text = "<a href=\"default.aspx\">Chưa chọn bài hát</a>";
                btnCreateAlbum.Enabled = false;
                return;
            }
            ArrayList selectedSongs = (ArrayList)Session["selectedSongs"];
            if (selectedSongs.Count < 1)
            {
                lblStatus.Text = "<a href=\"Default.aspx\">Chưa chọn bài hát</a>";
                btnCreateAlbum.Enabled = false;
                return;
            }
            string songIDs = "";
            foreach (int id in selectedSongs)
                songIDs += id + ",";
            songIDs = songIDs.TrimEnd(',');
            string scnn = ConfigurationManager.AppSettings["ConnectionString"].ToString();
            SqlConnection cnn = new SqlConnection(scnn);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "Select*from song s, Genres g, Artist a where s.artistid=a.artistID and s.genreid=g.genreid and songid in(" + songIDs + ")";
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            gvAlbum.DataSource = dt.DefaultView;
            gvAlbum.DataBind();
        }

        private void FillDataGrid()
        {
            
        }

        protected void gvAlbum_IndexChanged (object sender, EventArgs e)
        {
            int songID = (int)gvAlbum.SelectedDataKey.Values["songID"];
            ArrayList selectedSongs = (ArrayList)Session["selectedSongs"];
            if (selectedSongs.Contains(songID))
            {
                selectedSongs.Remove(songID);
                Session["selectedSongs"] = selectedSongs;
                FillDataGrid();
            }
        }

        protected void gvAlbum_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCreateAlbum_Click(object sender, EventArgs e)
        {
            if (!IsValid) return;
            string AlbumName = txtAlbumName.Text.Trim();
            int AlbumID = 0;

            string scnn = ConfigurationManager.AppSettings["ConnectionString"];
            SqlConnection cnn = new SqlConnection(scnn); 
            SqlCommand cmd =  new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "Insert into Album values(10,@albumname,@createDate)";


            cmd.Parameters.Add("@albumname", SqlDbType.VarChar);
            cmd.Parameters["@albumname"].Value = AlbumName;

            cmd.Parameters.Add("@createDate", SqlDbType.SmallDateTime);
            cmd.Parameters["@createDate"].Value = DateTime.Now;

            try
            {
                        cnn.Open();
                        cmd.ExecuteNonQuery();
                        cmd.CommandText = "select MAX(AlbumID) from albums";
                        if (AlbumID > 0)
                            lblStatus.Text = "Thêm album thành công!";
                    
                
            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                cnn.Close();
            }

            cmd.CommandText = "INSERT INTO AlbumSong values(@AlbumID, @songID)";
            cmd.Parameters.Add("@AlbumID", SqlDbType.Int);
            cmd.Parameters["@albumID"].Value = AlbumID;
            cmd.Parameters.Add("@songID", SqlDbType.Int);
            ArrayList SelectedSongs = (ArrayList)Session["SelectedSongs"];
            try
            {
                cnn.Open();
                foreach (int id in SelectedSongs)
                {
                    cmd.Parameters["@songID"].Value = id;
                    cmd.ExecuteNonQuery();
                }
            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }
            finally { cnn.Close(); }

            SelectedSongs.Clear();
            Session["SelectedSongs"] = SelectedSongs;
            gvAlbum.DataSource = null;
            gvAlbum.DataBind();
            FillGridView();
        }
    }
}
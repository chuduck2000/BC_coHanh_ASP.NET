using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace Lab4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlSearchBy.SelectedIndex = 0;
                FillSearchOption();
            }

        }
        protected void ddlSearchBy_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillSearchOption();
        }
        private void FillSearchOption()
        {
            String scnn = ConfigurationManager.AppSettings["ConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(scnn);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            switch (ddlSearchBy.SelectedIndex)
            {
                case 0:
                    cmd.CommandText = "SELECT * FROM artist";
                    break;
                case 1:
                    cmd.CommandText = "SELECT * FROM genres";
                    break;
                case 2:
                    cmd.CommandText = "SELECT * FROM album";
                    break;
            }
            try
            {
                da.Fill(dt);
            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }
            ddlSearchOption.DataSource = dt.DefaultView;
            ddlSearchOption.DataTextField = dt.Columns[1].ColumnName;
            ddlSearchOption.DataValueField = dt.Columns[0].ColumnName;
            ddlSearchOption.DataBind();
        }
        private void FillGridView()
        {
            string scnn = ConfigurationManager.AppSettings["ConnectionString"].ToString();
            SqlConnection cnn = new SqlConnection(scnn);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            string value = ddlSearchOption.SelectedValue;
            switch (ddlSearchBy.SelectedIndex)
            {
                case 0:
                    cmd.CommandText = "SELECT*FROM Song WHERE ArtistID=" + value;
                    break;
                case 1:
                    cmd.CommandText = "SELECT*FROM Song WHERE GenreID=" + value;
                    break;
                case 2:
                    cmd.CommandText = "SELECT*FROM Song WHERE SongID in (SELECT SongID FROM AlbumSong WHERE AlbumID=" + value + ")";
                    break;
            }
            try
            {
                da.Fill(dt);
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
            gvSongs.DataSource = dt.DefaultView;
            gvSongs.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            FillGridView();
        }

        protected void gvSongs_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            int index = gvSongs.SelectedIndex;
            int songID = (int)gvSongs.SelectedDataKey.Values["SongID"];
            if (Session["selectedSongs"] != null)
            {
                ArrayList selectedSongs = (ArrayList)Session["selectedSongs"];
                if (!selectedSongs.Contains(songID))
                    selectedSongs.Add(songID);
            }
            else
            {
                ArrayList selectedSongs = new ArrayList();
                selectedSongs.Add(songID);
                Session["selectedSongs"] = selectedSongs;
            }
            lbStus.Text = "Số bài hát được chọn" + ((ArrayList)Session["selectedSongs"]).Count;
        }

        protected void btnCreateAlbum_Click(object sender, EventArgs e)
        {
            Response.Redirect("album.aspx");
        }
    }

    
}
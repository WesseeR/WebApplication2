using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack == false)
            {
                
                SqlCommand komut = new SqlCommand("Select Y.YorumAdSoyad, Y.YorumMail, Y.Yorumicerik, YE.YemekAd FROM Tbl_Yorumlar AS Y JOIN Tbl_Yemekler AS YE ON Y.Yemekid = YE.Yemekid where Y.Yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtAd.Text = dr[0].ToString();
                    TxtMail.Text = dr[1].ToString();
                    Txticerik.Text = dr[2].ToString();
                    TxtYemek.Text = dr[3].ToString();

                }
                bgl.baglanti().Close();
            }
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update tbl_yorumlar set yorumicerik=@p1,yorumonay=@p2 where yorumid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Txticerik.Text);
            komut.Parameters.AddWithValue("@p2", 1);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }

}
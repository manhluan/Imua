﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI.Admin
{
    public partial class ThemQuaTang : System.Web.UI.Page
    {
        string strCon = @"Data Source=DESKTOP-8G2JK7B\SQLEXPRESS;Initial Catalog=imua1;Integrated Security=True";
        SqlConnection conn = null;
        SqlDataAdapter da = null;
        DataTable dt = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Session["TrangThai"].Equals("roi"))
            {
                Response.Redirect("/Admin/login.aspx");
            }
            conn = new SqlConnection(strCon);
            conn.Open();
            
        }

        protected void SaveFileUpload()
        {
            string strFilePath;
            if (UpAnh.FileName != "")
            {
                strFilePath = Server.MapPath("~/images/QuaTang/" + UpAnh.FileName);
                UpAnh.PostedFile.SaveAs(strFilePath);
            }
        }

        protected void btThem_Click1(object sender, EventArgs e)
        {
            string sTenQT = txtTenQT.Text;
            string sMieuTa = txtMieuTa.Text;
            string sGia = txtGiaQT.Text;
            string sAnh = UpAnh.FileName;

            string strCmd = "insert into QuaTang(tenQuaTang,mieuTa,hinhAnhQua,giaQua) values('" + sTenQT + "','" + sMieuTa + "','" + "~/images/products/" + sAnh + "','" + sGia + "')";
            SaveFileUpload();
            cmd = new SqlCommand(strCmd, conn);
            cmd.ExecuteNonQuery();
        }

        protected void btNhaplai_Click1(object sender, EventArgs e)
        {
            txtTenQT.Text = "";
            txtMieuTa.Text = "";
            txtGiaQT.Text = "";
        }
    }
}
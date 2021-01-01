﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
namespace GUI.webForm
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        TinTucBUS aBUL = new TinTucBUS();
        SanPham_BUS spBUL = new SanPham_BUS();
        
        protected void Page_Load(object sender, EventArgs e)
        {

            List<GioHangDetailDTO> giohang = Session["giohang"] as List<GioHangDetailDTO>;
            DataList1.DataSource = giohang;
            DataList1.DataBind();
            
            //Top 2 sale lớn nhất
            dtlst1.DataSource = spBUL.Top2SPSale();
            dtlst1.DataBind();

            //Top sản phẩm bán chạy
            dtlSPBanChay.DataSource = spBUL.ShowSPBanChay();
            dtlSPBanChay.DataBind();

            // Top tin tức xem nhiều nhất
            DataTable dt2 = aBUL.showTopTinTuc();
            dtlstTin.DataSource = dt2;
            dtlstTin.DataBind();
        }

        protected void btnTim_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Tim-Kiem.aspx?TimKiem=" + txtTim.Text);
        }
    }
}
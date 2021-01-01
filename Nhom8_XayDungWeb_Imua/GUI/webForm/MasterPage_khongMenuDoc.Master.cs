using BUS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
namespace GUI.webForm
{
    public partial class MasterPage_khongMenuDoc : System.Web.UI.MasterPage
    {
        SanPham_BUS spBUL = new SanPham_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<GioHangDetailDTO> giohang = Session["giohang"] as List<GioHangDetailDTO>;
            DataList1.DataSource = giohang;
            DataList1.DataBind();
           

            dtlst1.DataSource = spBUL.Top2SPSale();
            dtlst1.DataBind();
        }

        protected void btnTim_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Tim-Kiem.aspx?TimKiem=" + txtTim.Text);
        }
    }
}
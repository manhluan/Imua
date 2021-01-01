using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BUS;
namespace GUI
{
    public partial class kho_qua_tang : System.Web.UI.Page
    {
        KhoQuaTang aBUS = new KhoQuaTang();
        protected void Page_Load(object sender, EventArgs e)
        {

            DataList1.DataSource = aBUS.showKhoQuaTang();
            DataList1.DataBind();
        }


        SqlDataAdapter da = null;
        DataSet dset;
        PagedDataSource adsource;
        
        int pos;
        
        public void databind()
        {
           
            dset = new DataSet();
            adsource = new PagedDataSource();
            da.Fill(dset);
            adsource.DataSource = dset.Tables[0].DefaultView;
            adsource.PageSize = 4;
            adsource.AllowPaging = true;
            adsource.CurrentPageIndex = pos;
            bt1.Enabled = !adsource.IsFirstPage;
            bt2.Enabled = !adsource.IsFirstPage;
            bt4.Enabled = !adsource.IsLastPage;
            bt3.Enabled = !adsource.IsLastPage;
            DataList1.DataSource = adsource;
            DataList1.DataBind();
        }

        

        protected void bt1_Click1(object sender, EventArgs e)
        {
           
        }

        protected void bt2_Click1(object sender, EventArgs e)
        {
            
        }

        protected void bt3_Click1(object sender, EventArgs e)
        {
        }

        protected void bt4_Click1(object sender, EventArgs e)
        {
            
        }
    }
}

    




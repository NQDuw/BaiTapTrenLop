using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTap2
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Khởi tạo  cho ddlLoaiBanh
                ddlLoaiBanh.Items.Add(new ListItem("Bánh Cam","01"));
                ddlLoaiBanh.Items.Add(new ListItem("Bánh Tiêu", "02"));
                ddlLoaiBanh.Items.Add(new ListItem("Bánh Bò","03"));
        }
    }

        protected void btLuu_Click(object sender, EventArgs e)
        {
            string data = $"{ddlLoaiBanh.SelectedItem.Text}({txtSoLuong.Text})";
            lbBanh.Items.Add(data);
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            /*int index = lbBanh.SelectedIndex;
            lbBanh.Items.RemoveAt(index);*/
            for(int i = lbBanh.Items.Count - 1; i >= 0; i--)
            {
                if (lbBanh.Items[i].Selected)
                {
                    lbBanh.Items.RemoveAt(i); 
                }
            }
        }
    }
}
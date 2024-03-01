<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="BaiTap2.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="w-50 m-auto border border-success">
            <div class="col-md-12 text-center bg-success-subtle"> <h2>ĐƠN ĐẶT HÀNG</h2></div>
            
            <div class="border-success border-top border-bottom">
            <div class="row ">
                <div class="col-2">
                    Khách hàng
                </div>
                <div class="col-10">
                    <asp:TextBox ID="txtKhachHang" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
             </div>
             <div class="row">
                <div class="col-2">
                    Địa Chỉ
                </div>
                <div class="col-10">
                    <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                 <div class="row">
                <div class="col-2">
                    Mã Số Thuế
                </div>
                <div class="col-10">
                    <asp:TextBox ID="txtMaSoThue" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                </div> 
            </div> 
            </div>
            <div class="row border-success">
                <div class="col-6 border-success">
                    <h4>Chọn các loại bánh sau</h4>
                    <asp:DropDownList ID="ddlLoaiBanh" runat="server" CssClass="form-control" ></asp:DropDownList>
                    <div class="text-center mt-2 ">
                        Số Lượng: 
                       <asp:TextBox ID="txtSoLuong"  runat="server" CssClass="form-sm"></asp:TextBox> Cái
                    </div>
                    <div class="text-center mt-2"><asp:Button ID="btnLuu" runat="server" CssClass="btn btn-outline-primary" Text=">" OnClick="btLuu_Click"/></div>
                    
                </div>
                <div class="col-6 ">
                    <h4>Chọn các loại bánh sau</h4>
                    <asp:ListBox ID="lbBanh" SelectionMode="Multiple" runat="server"></asp:ListBox>
                    <div class="text-center ">
                    <asp:Button ID="btnXoa" runat="server"  CssClass="btn btn-outline-primary" Text="Xóa" OnClick="btnXoa_Click" />
                </div>
                </div>
                <div class="text-center border border-success">
                    <asp:Button ID="btnInDon" runat="server" Text="In Đơn Đặt Hàng" class="text-bg-success btn btn-outline-success "/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

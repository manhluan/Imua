<%@ Page Title="" Language="C#" MasterPageFile="~/webForm/MasterPage.Master" AutoEventWireup="true" CodeBehind="kho-qua-tang.aspx.cs" Inherits="GUI.kho_qua_tang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="view-type pull-left">
                  <a href="#" class=
                  "grid-view active"></a>
                </div>
                <div class="pull-left headerLine">
                  <a href="#" title=
                  "Kho quà tặng">Kho quà tặng</a>
                </div>
              </div>
    
    <asp:DataList ID="DataList1" runat="server" >
        <ItemTemplate>
            <table class="nav-justified">
        <tr>
            <td rowspan="5" style="border-style:none; border-width:1px">
                <asp:HyperLink ID="HyperLink1" runat="server" class="img" align="left"  Height="334px" Width="280px"
                                NavigateUrl='<%# "Chi_Tiet_QT.aspx?maQuaTang=" + Eval("maQuaTang").ToString() %>'
                                ImageUrl='<%# Eval("hinhAnhQua") %>'
                                ToolTip="Xem chi tiết...">
                            </asp:HyperLink>
            </td>
            <td style="height:5px">
                <asp:HyperLink ID="HyperLink3" runat="server" class="img" align="left" Font-Bold="true" Font-Size="Medium"
                                NavigateUrl='<%# "Chi_Tiet_QT.aspx?maQuaTang=" + Eval("maQuaTang").ToString() %>'
                                Text='<%# Eval("tenQuaTang") %>'
                                ToolTip="Xem chi tiết...">
                            </asp:HyperLink>
            </td>
        </tr>
        <tr  style="height:5px">
            <td  style="font-weight:bold; font-size:15px;color:red" >
                <asp:Literal ID="Literal1" runat="server" 
                                Text='<%# Eval("giaQua") %>' />
                            Đ
            </td>
        </tr>
        <tr style="height:5px">
            <td>
                <asp:Label ID="HyperLink2" runat="server"
                                Text='<%# Eval("mieuTa") %>'
                                ToolTip="Xem chi tiết...">                   
                            </asp:Label>
            </td>
        </tr>
        <tr >
            <td style="height:5px;font-weight:bold; font-size:15px;color:blue">
                <img src="/images/ChiTay.png" alt="chọn sản phẩm" class="w29">
                            Chọn ngay sản phẩm để nhận quà tặng này
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" colspan="2" RepeatColumns="3">
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td style="height:153px; width:128px;align-content:center">
                                    <asp:HyperLink ID="HyperLink3" runat="server" class="img" align="left" 
                                        NavigateUrl='<%# "Chi_Tiet_QT.aspx?maQuaTang=" + Eval("maQuaTang").ToString() %>'
                                        ImageUrl='<%# Eval("hinhAnh") %>'
                                        ToolTip="Xem chi tiết...">
                                    </asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight:bold; font-size:15px;color:red;text-align:center">
                                    <asp:Label ID="giaLabel" runat="server" Text='<%# Eval("gia") %>' />Đ
                                </td>
                            </tr>
                        </table>
                       
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
             <hr />
        </ItemTemplate>

    </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:imua1ConnectionString31 %>" 
            SelectCommand="SELECT top 2 * FROM [SanPham]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [SanPham] WHERE [maSP] = @original_maSP AND (([tenSP] = @original_tenSP) OR ([tenSP] IS NULL AND @original_tenSP IS NULL)) AND (([mieuTa] = @original_mieuTa) OR ([mieuTa] IS NULL AND @original_mieuTa IS NULL)) AND (([hinhAnh] = @original_hinhAnh) OR ([hinhAnh] IS NULL AND @original_hinhAnh IS NULL)) AND (([gia] = @original_gia) OR ([gia] IS NULL AND @original_gia IS NULL)) AND (([maQuaTang] = @original_maQuaTang) OR ([maQuaTang] IS NULL AND @original_maQuaTang IS NULL)) AND (([maDanhMuc] = @original_maDanhMuc) OR ([maDanhMuc] IS NULL AND @original_maDanhMuc IS NULL)) AND (([giamGia] = @original_giamGia) OR ([giamGia] IS NULL AND @original_giamGia IS NULL)) AND (([chiTietSP] = @original_chiTietSP) OR ([chiTietSP] IS NULL AND @original_chiTietSP IS NULL)) AND (([soLuong] = @original_soLuong) OR ([soLuong] IS NULL AND @original_soLuong IS NULL)) AND (([hinhChiTiet] = @original_hinhChiTiet) OR ([hinhChiTiet] IS NULL AND @original_hinhChiTiet IS NULL)) AND (([thanhPhan] = @original_thanhPhan) OR ([thanhPhan] IS NULL AND @original_thanhPhan IS NULL)) AND (([anhThanhPhan] = @original_anhThanhPhan) OR ([anhThanhPhan] IS NULL AND @original_anhThanhPhan IS NULL)) AND (([cachSuDung] = @original_cachSuDung) OR ([cachSuDung] IS NULL AND @original_cachSuDung IS NULL)) AND (([hinhAnhSuDung] = @original_hinhAnhSuDung) OR ([hinhAnhSuDung] IS NULL AND @original_hinhAnhSuDung IS NULL))" InsertCommand="INSERT INTO [SanPham] ([tenSP], [mieuTa], [hinhAnh], [gia], [maQuaTang], [maDanhMuc], [giamGia], [chiTietSP], [soLuong], [hinhChiTiet], [thanhPhan], [anhThanhPhan], [cachSuDung], [hinhAnhSuDung]) VALUES (@tenSP, @mieuTa, @hinhAnh, @gia, @maQuaTang, @maDanhMuc, @giamGia, @chiTietSP, @soLuong, @hinhChiTiet, @thanhPhan, @anhThanhPhan, @cachSuDung, @hinhAnhSuDung)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [SanPham] SET [tenSP] = @tenSP, [mieuTa] = @mieuTa, [hinhAnh] = @hinhAnh, [gia] = @gia, [maQuaTang] = @maQuaTang, [maDanhMuc] = @maDanhMuc, [giamGia] = @giamGia, [chiTietSP] = @chiTietSP, [soLuong] = @soLuong, [hinhChiTiet] = @hinhChiTiet, [thanhPhan] = @thanhPhan, [anhThanhPhan] = @anhThanhPhan, [cachSuDung] = @cachSuDung, [hinhAnhSuDung] = @hinhAnhSuDung WHERE [maSP] = @original_maSP AND (([tenSP] = @original_tenSP) OR ([tenSP] IS NULL AND @original_tenSP IS NULL)) AND (([mieuTa] = @original_mieuTa) OR ([mieuTa] IS NULL AND @original_mieuTa IS NULL)) AND (([hinhAnh] = @original_hinhAnh) OR ([hinhAnh] IS NULL AND @original_hinhAnh IS NULL)) AND (([gia] = @original_gia) OR ([gia] IS NULL AND @original_gia IS NULL)) AND (([maQuaTang] = @original_maQuaTang) OR ([maQuaTang] IS NULL AND @original_maQuaTang IS NULL)) AND (([maDanhMuc] = @original_maDanhMuc) OR ([maDanhMuc] IS NULL AND @original_maDanhMuc IS NULL)) AND (([giamGia] = @original_giamGia) OR ([giamGia] IS NULL AND @original_giamGia IS NULL)) AND (([chiTietSP] = @original_chiTietSP) OR ([chiTietSP] IS NULL AND @original_chiTietSP IS NULL)) AND (([soLuong] = @original_soLuong) OR ([soLuong] IS NULL AND @original_soLuong IS NULL)) AND (([hinhChiTiet] = @original_hinhChiTiet) OR ([hinhChiTiet] IS NULL AND @original_hinhChiTiet IS NULL)) AND (([thanhPhan] = @original_thanhPhan) OR ([thanhPhan] IS NULL AND @original_thanhPhan IS NULL)) AND (([anhThanhPhan] = @original_anhThanhPhan) OR ([anhThanhPhan] IS NULL AND @original_anhThanhPhan IS NULL)) AND (([cachSuDung] = @original_cachSuDung) OR ([cachSuDung] IS NULL AND @original_cachSuDung IS NULL)) AND (([hinhAnhSuDung] = @original_hinhAnhSuDung) OR ([hinhAnhSuDung] IS NULL AND @original_hinhAnhSuDung IS NULL))" >
            <DeleteParameters>
                <asp:Parameter Name="original_maSP" Type="Int32" />
                <asp:Parameter Name="original_tenSP" Type="String" />
                <asp:Parameter Name="original_mieuTa" Type="String" />
                <asp:Parameter Name="original_hinhAnh" Type="String" />
                <asp:Parameter Name="original_gia" Type="Double" />
                <asp:Parameter Name="original_maQuaTang" Type="Int32" />
                <asp:Parameter Name="original_maDanhMuc" Type="Int32" />
                <asp:Parameter Name="original_giamGia" Type="Double" />
                <asp:Parameter Name="original_chiTietSP" Type="String" />
                <asp:Parameter Name="original_soLuong" Type="Int32" />
                <asp:Parameter Name="original_hinhChiTiet" Type="String" />
                <asp:Parameter Name="original_thanhPhan" Type="String" />
                <asp:Parameter Name="original_anhThanhPhan" Type="String" />
                <asp:Parameter Name="original_cachSuDung" Type="String" />
                <asp:Parameter Name="original_hinhAnhSuDung" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tenSP" Type="String" />
                <asp:Parameter Name="mieuTa" Type="String" />
                <asp:Parameter Name="hinhAnh" Type="String" />
                <asp:Parameter Name="gia" Type="Double" />
                <asp:Parameter Name="maQuaTang" Type="Int32" />
                <asp:Parameter Name="maDanhMuc" Type="Int32" />
                <asp:Parameter Name="giamGia" Type="Double" />
                <asp:Parameter Name="chiTietSP" Type="String" />
                <asp:Parameter Name="soLuong" Type="Int32" />
                <asp:Parameter Name="hinhChiTiet" Type="String" />
                <asp:Parameter Name="thanhPhan" Type="String" />
                <asp:Parameter Name="anhThanhPhan" Type="String" />
                <asp:Parameter Name="cachSuDung" Type="String" />
                <asp:Parameter Name="hinhAnhSuDung" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tenSP" Type="String" />
                <asp:Parameter Name="mieuTa" Type="String" />
                <asp:Parameter Name="hinhAnh" Type="String" />
                <asp:Parameter Name="gia" Type="Double" />
                <asp:Parameter Name="maQuaTang" Type="Int32" />
                <asp:Parameter Name="maDanhMuc" Type="Int32" />
                <asp:Parameter Name="giamGia" Type="Double" />
                <asp:Parameter Name="chiTietSP" Type="String" />
                <asp:Parameter Name="soLuong" Type="Int32" />
                <asp:Parameter Name="hinhChiTiet" Type="String" />
                <asp:Parameter Name="thanhPhan" Type="String" />
                <asp:Parameter Name="anhThanhPhan" Type="String" />
                <asp:Parameter Name="cachSuDung" Type="String" />
                <asp:Parameter Name="hinhAnhSuDung" Type="String" />
                <asp:Parameter Name="original_maSP" Type="Int32" />
                <asp:Parameter Name="original_tenSP" Type="String" />
                <asp:Parameter Name="original_mieuTa" Type="String" />
                <asp:Parameter Name="original_hinhAnh" Type="String" />
                <asp:Parameter Name="original_gia" Type="Double" />
                <asp:Parameter Name="original_maQuaTang" Type="Int32" />
                <asp:Parameter Name="original_maDanhMuc" Type="Int32" />
                <asp:Parameter Name="original_giamGia" Type="Double" />
                <asp:Parameter Name="original_chiTietSP" Type="String" />
                <asp:Parameter Name="original_soLuong" Type="Int32" />
                <asp:Parameter Name="original_hinhChiTiet" Type="String" />
                <asp:Parameter Name="original_thanhPhan" Type="String" />
                <asp:Parameter Name="original_anhThanhPhan" Type="String" />
                <asp:Parameter Name="original_cachSuDung" Type="String" />
                <asp:Parameter Name="original_hinhAnhSuDung" Type="String" />
            </UpdateParameters>
    </asp:SqlDataSource>

    
    <div style="text-align:center">

        <asp:Button ID="bt1" runat="server" Text="&lt;&lt; &lt;&lt;" OnClick="bt1_Click1" />
        <asp:Button ID="bt2" runat="server" Text="&lt;&lt;" OnClick="bt2_Click1" />
        
        <asp:Button ID="bt3" runat="server" Text="&gt;&gt;" OnClick="bt3_Click1" />
        <asp:Button ID="bt4" runat="server" Text="&gt;&gt; &gt;&gt;" OnClick="bt4_Click1" />

    </div>
    

    
</asp:Content>



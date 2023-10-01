<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioHangTinhTien.aspx.cs" Inherits="Lab1.GioHangTinhTien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Giỏ Hàng</title>
    <script type="text/JavaScript">
        function Calculate() {
            var dg = parseFloat(document.getElementById("gb").value);

            var sl = parseFloat(document.getElementById("sl").value);
            window.document.getElementById("tp").value = sl * dg
            window.document.getElementById("tc").value = sl * dg
        }
        
    </script>
    <style type="text/css">
        body{
            width:100%;
            height:100%;
            background-color:lightgrey;
            padding-left:5%;
            padding-right:5%;
            vertical-align:central;

        }
        #thongtinsp{
            border:groove;
            border-radius:8px;
            padding:5px;
            width:60%;
            text-align:center;
            font-size:20px;
            background-color:white;
            height:130px;
            vertical-align:top;

        }
        table{
            display:inline-table;
            padding-left:5%;
        }
        #giabansp{
            border:groove;
            border-radius:8px;
            padding:5px;
            width:20%;
            height:300px;
            text-align:center;
            font-size:20px;
            background-color:white;
            
        }
        td input{
            border-radius:8px;
            text-align:center;
        }
        #dathang{
            border-radius:8px;
        }
        #dh{
            font-size:20px;
            padding:0 20%;
            background-color:blue;
            color:white;
            border-color:blue;
        }
        #mgg{
            font-size:18px;
            padding:10px;
            padding-left:10px;
            border:1px solid whitesmoke;
            text-align:left;
        }
        #adung{
            font-size:18px;
            padding:10px;
            margin-left:-50px;
        }
        #luuy{
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="thongtinsp">
                <tr>
                    <td>
                        Hình ảnh <br />
                        <img id="product" src="https://shopdunk.com/images/thumbs/0020317_iphone-15-plus-128gb_80.webp" />
                    </td>
                    <td>
                        Tên Sản Phẩm <br /> <input type="text" id="tsp" name="nhap" />

                    </td>
                    <td>
                         Giá bán:<br /> <input type="number" id="gb" name="nhap" />
                    </td>
                    <td>

                       Số lượng:<br /> <input type="number" id="sl" name="sl" onchange="Calculate();"/>
                        
                    </td>
                </tr>
                

            </table>
            <table id="giabansp">
                <tr >
                   <td><input type="text" id="mgg" maxlength="10" placeholder="Mã giảm giá" /> <input type="button" id="adung" value="Áp dụng" /> </td> 
                </tr>
                <tr>
                   <td>Tổng phụ: <input type="number" id="tp" name="tp" /><br /></td> 
                </tr>
                <tr>
                   <td>Tổng cộng: <input type="number" id="tc" name="tc" /><br /></td> 
                </tr>
                <tr>
                   <td><input type="checkbox" id="cb" name="cb" /> Tôi đã đọc và đồng ý với <a href="#">điều khoản và điều kiện </a> của website </td> 
                </tr>
                <tr id="dathang">
                   <td><input type="submit" id="dh" value="Tiến hành đặt hàng" onclick="Calculate();"/></td> 
                </tr>
                <tr>
                   <td id="luuy">(*) Phí phụ thu sẽ được tính khi bạn tiến hành thanh toán.</td> 
                </tr>
            </table>

        </div>
    </form>
</body>
</html>

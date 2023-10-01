<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRegister.aspx.cs" Inherits="Lab1.NewRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký nhận tin từ Shopdunk</title>
    <style ="text/css">
        form{
            width:100%;
            height:250px;
            background-color:lightgrey;
        }
        div{
            vertical-align:middle;
            text-align:center;
            padding:6px;
            font-family:Arial;
        }
        h1{
            font-size:25px;
        }
        #email{
            width: 400px;
            padding-left:10px;
            border:1px solid whitesmoke;
        }
        #email, #Register{
            height:40px;
            border-radius:20px;
        }
        #Register{
        width:100px;
        border:1px solid royalblue;
        background-color:royalblue;
        color:white;
        margin-left:-50px;

    }
        
    </style>
</head>
<body>
    <form id="NewRegister" runat="server">
        <div>
            <h1>Đăng ký nhận tin từ ShopDunk</h1>
            <p>Thông tin sản phẩm mới nhất và chương trình khuyến mãi</p>
            <input type="email" id="email"maxlength="300" placeholder="Email của bạn" />
            <input type="button" id="Register" value="Đăng ký" />
        </div>
    </form>
</body>
</html>

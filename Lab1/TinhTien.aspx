<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhTien.aspx.cs" Inherits="Lab1.TinhTien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/JavaScript">
        function Calculate() {
            var dg = parseFloat(document.getElementById("gb").value);

            var sl = parseFloat(document.getElementById("sl").value);
            window.document.getElementById("tp").value=sl*dg

        }       
    </script>
    <style type="text/css">
        #form1{
            height:100%;
            background-color: white;
            display:inline;
            text-align:center;  
        }
            #product{
            width:60%;
            height:100px;
            background-color:whitesmoke;
            border:groove;
            border-radius:8px; 
            
            
        }
        #giatien{
            width:40%;  
            height:100px;
            background-color:whitesmoke;
            border:groove;
            border-radius:8px;
            vertical-align:central;
        }
    </style>
</head>
<body>
    <h1>Giỏ hàng</h1><br />
    <form id="form1" runat="server" method="post">
        <div id="product">
        </div>
        <div id="giatien">
            Giá bán: <input type="number" id="gb" name="gb" /><br />
            Số lượng: <input type="number" id="sl" name="sl" 
                <%--onkeyup="tp.value=parseFloat(sl.value)*parseFloat(gb.value)"--%>
                onkeyup="Calculate();"
                /><br />
            Tổng phụ: <input type="number" id="tp" name="tp" /><br />
            </div>
            
        
        
    </form>
</body>
</html>

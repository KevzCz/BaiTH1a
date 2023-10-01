

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        #form1{
            border:groove;
            padding:4px;
            width:25%;
        }
        #dangky{
        vertical-align:central;
        text-align:center;
        }
        </style>

    <title>Register</title>

</head>
<body>
  <center><form id="form1" runat="server">
        <div id="dangky">
          <h1>Đăng ký</h1>
          <input type="email" id="email" maxlength="300" placeholder="Email của bạn" /><br />
            <input type="password" id="password" maxlength="20" placeholder="password" /><br />
          <input type="button" id="Register" value="Đăng ký" />
        </div>
    </form>
      </center>  
</body>
</html>

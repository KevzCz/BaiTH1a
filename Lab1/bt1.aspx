<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bt1.aspx.cs" Inherits="Lab1.bt1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>baitap1</title>
    <script type="text/JavaScript">
 function getValue(id) {
 return document.getElementById(id).value.trim();
 }
 // Hiển thị lỗi
 function showError(key, mess) {
 document.getElementById(key + '_error').innerHTML = mess;
 }
 // kiểm tra lỗi
 function validate() {
 var flag = true;
 // masv
 var masv = getValue('masv');
 if (masv == '' || masv.length != 10 || !/^[a-zA-Z0-9]+$/.test(masv)) {
 flag = false;
 showError('masv', 'Vui lòng kiểm tra lại masv');
 }
 // name
 var name = getValue('name');
 if (name == '' || name.length > 30) {
 flag = false;
 showError('name', 'Vui lòng kiểm tra lại tên');
 }
 // tuoi
     var age = getValue('age');
     if (age == '' || age <= 0) {
     flag = false;
     showError('tuổi', 'Vui lòng kiểm tra lại tuổi');
 }
 return flag;
        }
        function cnChanged(obj) {
            var message = document.getElementById('show_message');
            var value = obj.value;
            if (value === '') {
                message.innerHTML = "Bạn chưa chọn chuyên ngành";
            }
            else if (value === 'ht') {
                message.innerHTML = "Phân tích & Thiết kế";
            }
            else if (value === 'pm') {
                message.innerHTML = "Lập trình";
            }
            else if (value === 'mmt') {
                message.innerHTML = "Quản lý mạng";
            }
        }
    </script>
    <style type="text/css">
        #mssv{
         
        }

        #ngoaingu{
            vertical-align:central;
            text-align:center;
        }
        #thongtin #masv, #name, #age {
            float: right;
            border-radius: 4px;
        }
        #thongtin{
            
        }
        #chuyennganh #cn{
            text-align:center;
            vertical-align:central;
        }
        #chuyennganh{
            text-align:center;
vertical-align:central;
        }
        #inline{
            display:inline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                  <td id="thongtin">
                          
                    Mã số sinh viên: <input id="masv" type="text" name="masv" value=" " /><br /><span id="masv_error"></span><br />
                    Họ và Tên:      <input id="name" type="text" name="name" value=" " /><br /><span id="name_error"></span><br />
                    Tuổi:         <input id="age" type="text" name="age" value=" " /><br /><span id="age_error"></span>
                  </td>
                </tr>
                <tr id="ngoaingu">
                    <td>
                    Anh <input id="cb" type="checkbox" name="cb" value="Anh"   />
                    Pháp<input id="cb" type="checkbox" name="cb" value="Pháp" />
                    Nhật<input id="cb" type="checkbox" name="cb" value="Nhật" />
                     </td>
                </tr>
                <tr id="chuyenng">
                    <td id="chuyennganh">
                         <select id="cn" onchange="cnChanged(this)">
                         <option value=""> -- Chọn -- </option>
                         <option value="ht">Hệ thống</option>
                         <option value="pm"> Phần mềm </option>
                         <option value="mmt"> Mạng máy tính </option>
                         </select>
                    </td>
                </tr>
                <tr id="inline">
                    <td> Sở trường:</td>
                    <td id="sotruong"><p style="color: red" id="show_message"></p></td>
                </tr>
                <tr>
                    <td> <input type="submit" onclick="validate();" id="btn" name="btn"value="Đăng ký" /> </td>
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<form action="KetQua.php" method="post">
<div>ĐIỀN CÁC THÔNG TIN VÀO BẢNG DƯỚI ĐÂY:<br/>
</div>
<table width="523" height="349" border="1">
  <tr>
    <td width="253">Tên đang nhập:</td>
    <td width="254">
      <input type="text" name="txtUser" value="Lê Hữu Phước"></td>
  </tr>
  <tr>
    <td>Mật khẩu:</td>
    <td><input type="password" name="txtPass" value="123456"></td>
  </tr>
  <tr>
    <td height="37">Nhập lại:</td>
    <td><input type="password" name="txtNhapLai" value="123456"></td>
  </tr>
  <tr>
    <td>Email:</td>
    <td><input type="text" name="txtEmail" value="lehuuphuoc0196@gmail.com"></td>
  </tr>
  <tr>
    <td>Giới tính:</td>
    <td><p>
      <input type="radio" name="rdGioiTinh" value="rdNam" checked>
        Nam<br>
       <input type="radio" name="rdGioiTinh" value="rdNu">
        Nữ
      <br>
    </p></td>
  </tr>
  <tr>
    <td>Ngày sinh:</td>
    <td>
      <select name="day">
      	<option selected = "Ngày"> Ngày </option>
        <?php
			for($i = 1; $i<= 31; $i++)
			echo "<option value = " . $i . ">" . $i . " </option>"
		?>
      </select>
      <select name="month">
      	<option selected = "Tháng"> Tháng </option>
        <?php
			for($i = 1; $i<= 12; $i++)
			echo "<option value = " . $i . ">" . $i . " </option>"
		?>
      </select>
      <select name="year">
      <option selected = "Năm"> Năm </option>
      <?php
			for($i = 1890; $i<= 2000; $i++)
			echo "<option value = " . $i . ">" . $i . " </option>"
		?>
      </select>
   </td>
  </tr>
  <tr>
    <td>Sở thích:</td>
    <td>
        <input type="checkbox" name="chkDocSach" value="chkDocSach" id="chkSoThich_0">
        Đọc sách
        <input type="checkbox" name="chkXemPhim" value="chkXemPhim" id="chkSoThich_1">
        Xem phim <br>
        <input type="checkbox" name="chkNgheNhac" value="chkNgheNhac" id="chkSoThich_2">
        Nghe nhạc
      
        <input type="checkbox" name="chkChoiGame" value="chkChoiGame" id="chkSoThich_3">
        Chơi game
    </td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input name="DangKy" type="submit"value="Đăng ký">
      <input name="HuyBo" type="submit" value="Hủy bỏ">
    </div></td>
    </tr>
</table>


</form>
</body>
</html>
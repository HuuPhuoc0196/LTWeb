
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<?php
		$temp = 0;
		if($_POST['txtUser'] == '')
		{
			echo "<font color='#FF0000'> Tên đăng nhập không được rỗng! <br /> </font>";
			$temp = 1;
		}
		if($_POST['txtPass'] == '')
		{
			echo "<font color='#FF0000'> Mật khẩu không được rỗng! <br /> </font>";
			$temp = 1;
		}
		if($_POST['txtPass'] != $_POST['txtNhapLai'])
		{
			echo "<font color='#FF0000'> Mật khẩu không trùng khớp! <br /> </font>";
			$temp = 1;
		}
		if($_POST['txtEmail'] == '')
		{
			echo "<font color='#FF0000'> Email không được rỗng! <br /> </font>";
			$temp = 1;
		}
		if($temp == 0) 
		{
			echo "<font color='#0000FF'> Tên đăng nhập: " . $_POST['txtUser'] . "<br/></font>";
			echo "<font color='#0000FF'>Mật khẩu: " . $_POST['txtPass'] . "<br/></font>";
			echo "<font color='#0000FF'>Email: " . $_POST['txtEmail'] . "<br/></font>";
			echo "<font color='#0000FF'>Giới tính: ";
			if(isset($_POST['rdGioiTinh']))
			{
				if($_POST['rdGioiTinh'] == 'rdNam')
					echo "Nam";
				else
					echo "Nữ";
			}
			else
				echo "Chưa chọn";
			echo "<br/></font>";
			echo "<font color='#0000FF'>Ngày sinh: ";
			if($_POST['day'] == 'Ngày' || $_POST['month'] == 'Tháng' || $_POST['year'] == 'Năm')
				echo "Chưa chọn";
			else
				echo $_POST['day'] . "/" . $_POST['month'] . "/" . $_POST['year'];
			echo "<br/></font>";
			echo "<font color='#0000FF'>Sở thích: ";
			$sothich = "";
			if(isset($_POST['chkDocSach']))
				$sothich .= "Đọc sách";
			if(isset($_POST['chkXemPhim']))
				$sothich .= ", xem phim";
			if(isset($_POST['chkNgheNhac']))
				$sothich .= ", nghe nahc5";
			if(isset($_POST['chkChoiGame']))
				$sothich .= ", chơi game";
			if($sothich == "")
				$sothich = "Chưa chọn";
			echo $sothich . "<br/></font>";
		}
    ?>
</body>
</html>
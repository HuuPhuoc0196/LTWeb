
<html>
<head>
<title></title>
</head>
<body>
<form method="post" action="#">
<?php
	session_start();
	$num1 = isset($_POST['num1']) ? $_POST['num1'] : null;
	$num2 = isset($_POST['num2']) ? $_POST['num2'] : null;
?>

  <table width="513" height="263" border="1">
    <tr>
      <td colspan="2"><div align="center"><strong>Phep toan cong</strong></div></td>
    </tr>
    <tr>
      <td width="178"><strong>So thu 1:</strong></td>
      <td width="319"><label for="textfield"></label>
        <label for="num1"></label>
      <input type="text" name="num1" id="num1" 
		  <?php 
                echo "value = '" . $num1 . "'";
          ?> ></td>
    </tr>
    <tr>
      <td><strong>So thu 2</strong></td>
      <td><input type="text" name="num2" id="num2" 
		  <?php 
                echo "value = '" . $num2 . "'";
          ?> ></td>
    </tr>
    <tr>
      <td>Chon phep toan</td>
      <td><p>
        <input type="radio" name="rdGroup" id="rdGroup" value="Cong" <?php 
			if(isset($_POST['rdGroup']) == 'Cong')
				echo "checked ='true'";
		?> >
        Cong <br>
          <input type="radio" name="rdGroup" id="rdGroup2" value="Tru" <?php 
			if(isset($_POST['rdGroup']) == 'Tru')
				echo "checked ='true'";
		?> >
          Tru<br>
          <input type="radio" name="rdGroup" id="rdGroup3" value="Nhan" <?php 
			if(isset($_POST['rdGroup']) == 'Nhan')
				echo "checked ='true'";
		?> >
          Nhan<br>
          <input type="radio" name="rdGroup" id="rdGroup4" value="Chia" <?php 
			if(isset($_POST['rdGroup']) == 'Chia')
				echo "checked ='true'";
		?> >
      Chia</p> </td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Ok" id="Ok" value="Tinh">
           <input type="reset" name="cancel" id="cancel" value="Huy">
      </div></td>
    </tr>
    <tr>
      <td><strong>Ket qua:</strong></td>
      <td><input type="text" name="num3" id="num3" 
		  <?php 
                $num3;
				if(isset($_POST['Ok']) && isset($_POST['rdGroup']))
				{
					switch($_POST['rdGroup'])
					{
						case 'Cong': $num3 = $num1 + $num2; break;
						case 'Tru': $num3 = $num1 - $num2; break;
						case 'Nhan': $num3 = $num1 * $num2; break;
						case 'Chia': if($num2 != 0) $num3 = $num1 / $num2;
							else $num3 = 0;
						break;
					}
					echo "value = '" . $num3 . "'";
				}
				else
					echo "value = ''";
          ?> ></td>
    </tr>
  </table>
</form>
</body>
</html>
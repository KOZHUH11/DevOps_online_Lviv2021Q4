<?php
session_start();

$conn = mysqli_connect(
  'db',
  'devuser',
  'devpass',
  'php_mysql_crud'
) or die(mysqli_error($mysqli));

?>

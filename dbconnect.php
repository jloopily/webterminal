<?php
  $db_link=mysqli_connect("localhost",  //MYSQL��������ַ
                          "root",       //MYSQL��¼�û���
                          "root",           //MYSQL��¼����
                          "hotel001");   //��Ҫ�������ݿ���
  
  if(!$db_link)
  {
    die("���ݿ����Ӵ���: " . mysqli_connect_error());
  }
  
  //�������ݿ����
  mysqli_query($db_link,"SET NAMES 'utf8'"); 
 
?>


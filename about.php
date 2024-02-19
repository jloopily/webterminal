<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<meta content="宾馆管理" name="keywords"/>
<meta content="宾馆展示" name="description"/>
<link href="css/font-awesome.css" rel="stylesheet" type="text/css"/>
<link href="css/styles.css" rel="stylesheet" type="text/css"/>
<link href="css/index.css" rel="stylesheet" type="text/css"/>

<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
$("#main-menu #nav_35").addClass("active");
});
</script>


<title>关于我们</title>
<style>
    .internal-page-title{
        background-image: url(images/banner.jpg);
    }
    .page-content{
        text-align: center;
    }
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
    #dituContent{
    width:887px;
    height:400px;
    border:#ccc solid 1px;
    margin: 40px 0 0 250px;
    }
    @media screen and (max-width: 900px) {
   #dituContent{
       width: 100%;
       height: 300px;
        margin-left: 0;
        margin-bottom: 50px;
    }
}
.location{
        color:#C5A46D;
        font-weight: bold;
        text-align: center;
    }
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
</head>

<body class="homepage trans-header sticky white-datepicker">

<div id="page-body-wrap">
<?php
require("head.html");
?>
<div class="internal-page-title about-page">
<h1>关于我们</h1>
<ol class="breadcrumb">
	<li><i class="fa fa-map-marker"></i> &nbsp;<span>当前位置： <a href="index.php">网站首页</a> &gt <a href="about.php">关于我们</a></span></li>
</ol>
</div>

<div class="page-container" id="innerpage-wrap">
<div class="container">
<div class="row">

<div class="main col-md-12 inner-left" role="main">


<div class="about-page-wrap">
<div class="com-cnt page-content">
<strong><span style="color:#C5A46D;font-size:18px;">越努力越幸运</span></strong><br />
<br />
走自己的道路，人生，越努力越幸运！<br />
					
</div>
<hr>
<div id="contact-wrap">
<h3 class="msg-title location">给我们留言</h3>
<form class="add-msg-form" method="post" action="insert.php" name="msgform" id="contact-form">
<div class="row">
    <div class="cf-column col-md-6"><input required name="title" id="subject" type="text" placeholder="主题" validate="minlength:2, maxlength:50, required:true"></div>
    <div class="cf-column col-md-6"><input required name="name" id="username" type="text" placeholder="名字" validate="minlength:2, maxlength:50, required:true"></div>
    <div class="cf-column col-md-6"><input required name="mailbox" id="mail" type="text" placeholder="邮箱" validate="maxlength:40, required:true, email:true"></div>
    <div class="cf-column col-md-6"><input required name="phone" id="telephone" type="text" placeholder="手机" validate="minlength:6,maxlength:40, required:true"></div>
    <div class="cf-column col-md-12 cf-tarea"><textarea required name="content" id="comment" placeholder="留言内容" validate="minlength:2, maxlength:200, required:true"></textarea></div>
    <div class="cf-column col-md-12 submit-column">
    <input type="hidden" name="action" value="message">
    <button type="submit" onclick="return validate()" id="submit-btn" class="submit-button">立即提交</button></div>
</div>
<script>
  // 表单提交事件判断
  function validate(){
    var name = $("input[name='name']");
    var namecheck = /^[\u4e00-\u9fa5]{2,4}$/;
    var mailbox = $("input[name='mailbox']");
    var mailboxcheck =/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
    var phone = $("input[name='phone']");
    var phonecheck =  /^(((1[3456789][0-9]{1})|(15[0-9]{1}))+\d{8})$/;
    if(!namecheck.test(name.val())){
       alert('姓名填写有误');
       name.val('');
       name.focus();
       return false;
    }
    if(!mailboxcheck.test(mailbox.val())){
       alert('邮箱填写有误');
       mailbox.val('');
       mailbox.focus();
       return false;
    }
    if(!phonecheck.test(phone.val())){
       alert('手机号填写有误');
       phone.val('');
       phone.focus();
       return false;
    }
    return true;
  }
</script>
</form>
</div>
</div>


</div>


</div>
</div>
<hr>
<h3 class='location'>关于我们</h3>


    <div class="for-bottom-padding"><video src="./images/shipin.mp4" controls></video></div>


<?php
require("footer.html");
?>

</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<meta charset="utf-8" />
<head>
<title>Awesome Login Form Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css\bootstrap.min.css">
<link rel="stylesheet" href="css\a.css">
<link rel="stylesheet" href="css\font.css">
        <script src="js\bootstrap.js"></script>
        <script src="js\bootstrap.min.js"></script>
        <script type="text/javascript"></script>
 
<style>
*{margin:0; padding:0}
body{background-image: url("images/ddd.png"); font-family: 'Source Sans Pro', sans-serif}
.form{width:400px; margin:50px auto; background:#1C2B4A}
.header{height:44px; background:#17233B}
.header h2{height:44px; line-height:44px; color:#fff; text-align:center}
.login{padding:0 20px}
.login span.un{width:10%; text-align:center; color:#0C6; border-radius:3px 0 0 3px}
.text{background:#12192C; width:90%; border-radius:0 3px 3px 0; border:none; outline:none; color:#999; font-family: 'Source Sans Pro', sans-serif} 
.text,.login span.un{display:inline-block; vertical-align:top; height:40px; line-height:40px; background:#12192C;}

.btn{height:40px; border:none; background:#0C6; width:100%; outline:none; font-family: 'Source Sans Pro', sans-serif; font-size:20px; font-weight:bold; color:#eee; border-bottom:solid 3px #093; border-radius:3px; cursor:pointer}
ul li{height:40px; margin:15px 0; list-style:none}
.span{display:table; width:100%; font-size:14px;}
.ch{display:inline-block; width:50%; color:#CCC}
.ch a{color:#CCC; text-decoration:none}
.ch:nth-child(2){text-align:right}
/*social*/
.social{height:30px; line-height:30px; display:table; width:100%}
.social div{display:inline-block; width:42%; color:#eee; font-size:12px; text-align:center; border-radius:3px}
.social div i.fa{font-size:16px; line-height:30px}
.fb{background:#3B5A9A; border-bottom:solid 3px #036} .tw{background:#2CA8D2; margin-left:16%; border-bottom:solid 3px #3399CC}
/*bottom*/
.sign{width:90%; padding:0 5%; height:50px; display:table; background:#17233B}
.sign div{display:inline-block; width:50%; line-height:50px; color:#ccc; font-size:14px}
.up{text-align:right}
.up a{display:block; background:#096; text-align:center; height:35px; line-height:35px; width:50%; font-size:16px; text-decoration:none; color:#eee; border-bottom:solid 3px #006633; border-radius:3px; font-weight:bold; margin-left:50%}
@media(max-width:480px){ .form{width:100%}}
.backto{background:#09C}
.backto>a{padding:16px; margin-bottom:10px; display:block; text-align:center; text-decoration:none; font-size:16px; color:#fff}
#powered{padding:10px; font-size:14px; text-align:center; color:#eee}
#powered a{text-decoration:none; color:#fff}
</style>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<div class="form">
<div class="header"><h2>Sign In</h2></div>
<div class="login">
<form name="frm" method="post" action="ActionController">
<ul>
<li>
<span class="un"><i class="fa fa-user fa-2x"></i></span><input type="text" required class="text" name="uname" placeholder="User Email"/></li>
<li>
<span class="un"><i class="fa fa-lock fa-2x"></i></span><input type="password" required class="text" name="pass" placeholder="User Password"/></li>
<li>
<input type="submit" value="Login" name="action" class="btn">
</li>
<li><div class="span"><span class="ch"><input type="checkbox" id="r"> <label for="r">Remember Me</label> </span> <span class="ch"><a href="forgot.jsp">Forgot Password?</a></span></div></li>
</ul>
</form>
<div class="social">
<a href="https://www.facebook.com/login.php"><div class="fb"><i class="fa fa-facebook-f"></i> &nbsp; Login With Facebook</div></a>
<a href="https://www.twitter.com/login/"><div class="tw"><i class="fa fa-twitter"></i> &nbsp;  Login With Twitter</div></a>
</div>
</div><br/>
<div class="sign">
<div class="need">Need new account ?</div>
<div class="up"><a href="Registration.jsp">Sign Up</a></div>
</div>
	
</div>
</body>
</html>
<!DOCTYPE HTML>
<html>
<head>
<title>Make My Day</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Academy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- css files -->
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/team.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- /css files -->
<!-- fonts -->
<link href='//fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Nunito:400,300,700' rel='stylesheet' type='text/css'>
<!-- /fonts -->
<!-- js files -->
<script src="../js/modernizr.js"></script>
<!-- /js files -->
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<!-- navigation -->
<div class="navbar-wrapper">
    <div class="container">
		<nav class="navbar navbar-inverse navbar-static-top cl-effect-1">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand navbar-left" href="index.jsp"><h1>MAKE MY DAY</h1></a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
					<% if (session.getAttribute("name") != null)
					{
					String nname= (String)session.getAttribute("name");
						%>
						  <li>welcome <%=nname %></li>
						 <%
						 }
					%>
						<li class="active"><a href="#" style="color: red">Home</a></li>
						<li><a href="#about"style="color: red" >About</a></li>
						<li><a href="#service" style="color: red">Service</a></li>
						<li><a href="#gallery" style="color: red">Gallery</a></li>
						<li><a href="#team" style="color: red">Team</a></li>
						<li><a href="#contact" style="color: red">Contact</a></li>
						<% 
						if (session.getAttribute("name") != null)
							{
						%>
							<li><a href="Logout.jsp" style="color: red">Logout</a></li>
						<%
							} 
						else
						 	{
						 %>
							<li><a href="Login.jsp" style="color: red">Login</a></li>
						<%
							}
						%>
					</ul>
				</div>
			</div>
        </nav>
	</div>
</div>
<!-- /navigation -->
<!-- banner section -->
<section class="banner">
	<div class="cover-slider__wrap">
		<ul class="cover-slider">
			<li class="cover-slider__slide">
				<span class="hide">Alt Tag</span>
			</li>
			<li class="cover-slider__slide">
				<span class="hide">Alt Tag</span>
			</li>
			<li class="cover-slider__slide">
				<span class="hide">Alt Tag</span>
			</li>
			<li class="cover-slider__slide">
				<span class="hide">Alt Tag</span>
			</li>
		</ul>
	</div>
</section>	
<!-- /banner section -->
<!-- About Section -->
<section class="about-us" id="about">
	<div class="container-fluid">
		<div class="row">	
			
			
				<div class="about-details">
					<h2>Description</h2>
					<p>MAke MY DAY is a division of Excellent Event Planners Pvt. Ltd. MAKE MY DAY is a team of qualified professionals full of zeal and fervour to make an event of yours an extravagant affair to remember for an entire era. Our motto is simply to certify enchantment for all the services we provide to our clients as we have an supernatural ability to convert ideas to things, and eventually a reality, which is the backbone to success!
Our team at the MAKE MY DAY will cater to all your needs no matter how unimportant it is. We believe each action of ours is crucial as it is not enough to take steps which may lead to a goal; each step must be a goal in itself.
Passion, enthusiasm and dedication of our team ensures that we share good vibes with you by providing end to end solutions totally on the basis of sheer hard work and ability to convert your dreams into a reality.</p>
				<br>
				<center><button type="submit" name="btn">Make Payment</button></center>
				
				</div>
					
			</div>
		</div>
</section>
<!-- /About Section -->
<!-- Service Section -->
<section  id="service" style="background-image: url('../images/b15.jpeg');" >
	<form class="form-horizontal" method="post" action="ActionController"   name="myForm" onsubmit="return(validate());">
         <div class="container" style="margin-top:50px;">
          <fieldset>
          <div id="edit_farmer" style="display:none"></div>
          <div class="row">
            <div class="col-md-2 panel panel-heading">Custom Form</div>
            <div class="col-md-4 panel panel-heading" style="display:none; color:red" id="contact_error"></div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 control-label" for="user_name">Name</label>  
            <div class="col-md-5">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
              <input id="first_name" name="name" placeholder="" class="form-control input-md ac_uname" type="text" required="">
            </div></div>
          </div>

	
          <div class="row form-group">
            <label class="col-md-3 control-label" for="contact">Contact No.</label>
            <div class="col-md-3">
    <div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-phone"></i>
			</span>
              <input id="contact" maxlength="10" name="contact" placeholder="xxxxxxxxxxxx" required="" class="form-control input-md ac_mobile" type="number" >
            </div>
			</div>
			</div>
			
	
		<div class="row form-group">
            <label class="col-md-3 control-label" for="email">Email ID</label>
            <div class="col-md-3">
    <div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-envelope"></i>
			</span>
              <input name="email" placeholder="" class="form-control input-md ac_email" type="email"  required="" >
            </div>
			</div>
			</div>
           
     
       

 
      <div class="row form-group">
   <label class="col-md-1 control-label" for="city">Guest</label>
            <div class="col-md-3">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>
              <select id="guest" name="guest" class="form-control input-md">
               <option value="-1"> </option>
                <option value="10-30">10-30</option>
                <option value="30-60">30-60</option>
                <option value="60-100">60-100</option>
                <option value="OVER 100">OVER 100</option>
              </select>
            </div>
		</div>
  
 <div class="row form-group">
   <label class="col-md-1 control-label" for="state">Prefferd Time</label>
            <div class="col-md-3">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>
              <select id="time" name="time" class="form-control input-md">
               <option value="-1"> </option>
                <option value="morning">Morning</option>
                <option value="afternoon">Afternoon</option>
                <option value="evening">Evening</option>
                <option value="night">Night</option>
              </select>
            </div>
		</div>
  
  <div class="row form-group">
   <label class="col-md-1 control-label" for="country">Packages</label>
       <div class="col-md-3">
		<div class="input-group">
				<span class="input-group-addon">
					<i class="glyphicon glyphicon-list"></i>
				</span>
              	<select id="pac" name="pac" class="form-control input-md">
               		<option value="-1"> </option>
                	<option value="low">Low</option>
                	<option value="medium">Medium</option>
                	<option value="high">High</option>
              </select>
           </div>
		</div>
  	</div>
</div>         
	 <div class="row form-group">
           <label class="col-md-3 control-label" for="pincode">Date</label>  
            <div class="col-md-2">
              <input id="pincode" name="pincode" placeholder="" class="form-control input-md" required="" type="date">
            </div>
	  </div>
          
        <div class="row form-group">
         	 <label class="col-md-3 control-label" for="password" >captcha	</label>
          	<div class="col-md-5">
          		<img id="captcha" width="150" hight="50" src="../captchaServlet.jpg"/> 
         <!--   <td><p id="err"></td>-->
           </div>
           </div>
           <div class="row form-group">
           <label class="col-md-3 control-label" for="password" >Enter the captcha here	</label>     
          <div class="col-md-5">
          <div class="input-group">
          <span class="input-group-addon">
			<i class="glyphicon glyphicon-password"></i>
			</span>
              <input id="captcha" name="captcha" placeholder="" class="form-control input-md" required="" type="text">
          </div>
          </div>
          </div> 
          
          <div class="form-group row">
            <div class="col-md-8 text-center">
              <button  type="submit" name="action" value="Submit" class="btn btn-large btn-success"> Submit</button>
            </div>
          </div>
          </fieldset>
          </div>
        </form>
</section>
<!-- /Service Section -->
<!-- Footer Section -->
<section class="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="links">
					<a href="index.html">Home</a>
					<a href="#about">About</a>
					<a href="#service">Services</a>
					<a href="#gallery">Gallery</a>
					<a href="#team">Team</a>
					<a href="#contact">Contact</a>
					<% 
						if (session.getAttribute("name") != null)
							{
						%>
						<a href="Logout.jsp">Logout</a>
						<%
							} 
						else
						 	{
						 %>
							<a href="Login.jsp">Login</a>
						<%
							}
						%>
				</div>
			</div>
			<div class="col-md-6">
				<div class="copyright">
					<p>&copy; 2016 Academy. All Rights Reserved | Design by <a href="http://w3layouts.com/"> W3layouts </a></p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- /Footer Section -->
<!-- js files -->
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/SmoothScroll.min.js"></script>
<!-- js for banner -->
<script src="../js/index.js"></script>
<!-- /js for banner -->
<!-- js for gallery -->
<script src="../js/darkbox.js"></script>
<!-- /js for gallery -->
<!-- js for smooth navigation -->
<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

  // Store hash
  var hash = this.hash;

  // Using jQuery's animate() method to add smooth page scroll
  // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
  $('html, body').animate({
    scrollTop: $(hash).offset().top
  }, 900, function(){

    // Add hash (#) to URL when done scrolling (default click behavior)
    window.location.hash = hash;
    });
  });
})
</script>
<!-- /js for smooth navigation -->
<!-- js for sliding animations -->
<script>
$(window).scroll(function() {
  $(".slideanim").each(function(){
    var pos = $(this).offset().top;

    var winTop = $(window).scrollTop();
    if (pos < winTop + 600) {
      $(this).addClass("slide");
    }
  });
});
</script>
<!-- /js for sliding animations -->
<!-- /js files -->
</body>
</html>
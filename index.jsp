<!DOCTYPE HTML>
<html>
<head>
<title>Make My Day</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- css files -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/team.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- /css files -->
<!-- fonts -->
<link href='//fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Nunito:400,300,700' rel='stylesheet' type='text/css'>
<!-- /fonts -->
<!-- js files -->
<script src="js/modernizr.js"></script>
<!-- /js files -->
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
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
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#service">Service</a></li>
						<li><a href="#gallery">Gallery</a></li>
						<li><a href="#team">Team</a></li>
						<li><a href="#contact">Contact</a></li>
						<% 
						if(session != null)
						{
						if (session.getAttribute("name") != null)
							{
						%>
							<li><a href="Logout.jsp">Logout</a></li>
						<%
							} 
						else
						 	{
						 %>
							<li><a href="Login.jsp">Login</a></li>
						<%
							}
						%>
						<% 
						} 
						else
						 	{
						 %>
							<li><a href="Login.jsp">Login</a></li>
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
			<div class="col-lg-6 about-info1 slideanim">
				<img src="images/about-img.jpg" alt="about" class="img-responsive">
			</div>
			<div class="col-lg-6 about-info2 slideanim">
				<div class="about-details">
					<h2>About Us</h2>
					<p>MAke MY DAY is a division of Excellent Event Planners Pvt. Ltd. MAKE MY DAY is a team of qualified professionals full of zeal and fervour to make an event of yours an extravagant affair to remember for an entire era. Our motto is simply to certify enchantment for all the services we provide to our clients as we have an supernatural ability to convert ideas to things, and eventually a reality, which is the backbone to success!
Our team at the MAKE MY DAY will cater to all your needs no matter how unimportant it is. We believe each action of ours is crucial as it is not enough to take steps which may lead to a goal; each step must be a goal in itself.
Passion, enthusiasm and dedication of our team ensures that we share good vibes with you by providing end to end solutions totally on the basis of sheer hard work and ability to convert your dreams into a reality.</p>
				</div>	
			</div>
		</div>
	</div>		
</section>
<!-- /About Section -->
<!-- Service Section -->
<section class="our-services slideanim" id="service">
	<h3 class="text-center slideanim">Our Amazing Services</h3>
	<br><br><br><br><br><br>
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-6 serv-part">
				<div class="row">
					<div class="col-xs-6 slideanim"><a href="Birthday/birthday.jsp">
						<i class="fa fa-gift" aria-hidden="true"></i></a>
					</div>
					<div class="col-xs-6 slideanim">
						<div class="serv-info">
							<h4>Birthday Party</h4>
							<p class="serv">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>	
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6 serv-part">
				<div class="row">
					<div class="col-xs-6 slideanim"><a href="Anniversary/anniversary.jsp">
						<i class="fa fa-font" aria-hidden="true"></i></a>
					</div>
					<div class="col-xs-6 slideanim">
						<div class="serv-info">
							<h4>Anniversary party</h4>
							<p class="serv">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>	
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6 serv-part">
				<div class="row">
					<div class="col-xs-6 slideanim"><a href="Theme/theme.jsp">
						<i class="fa fa-headphones" aria-hidden="true"></i></a>
					</div>
					<div class="col-xs-6 slideanim">
						<div class="serv-info">
							<h4>Theme Party</h4>
							<p class="serv">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>	
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6 serv-part">
				<div class="row">
					<div class="col-xs-6 slideanim"><a href="NewYear/newyear.jsp">
						<i class="fa fa-heart" aria-hidden="true"></i></a>
					</div>
					<div class="col-xs-6 slideanim">
						<div class="serv-info">
							<h4>NewYear</h4>
							<p class="serv">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>	
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6 serv-part">
				<div class="row">
					<div class="col-xs-6 slideanim"><a href="Social/social.jsp">
						<i class="fa fa-users" aria-hidden="true"></i></a>
					</div>
					<div class="col-xs-6 slideanim">
						<div class="serv-info">
							<h4>Social Party</h4>
							<p class="serv">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>	
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6 serv-part">
				<div class="row">
					<div class="col-xs-6 slideanim"><a href="PreWedding/prewedding.jsp">
						<i class="fa fa-glass" aria-hidden="true"></i></a>
					</div>
					<div class="col-xs-6 slideanim">
						<div class="serv-info">
							<h4>PreWedding Shoot </h4>
							<p class="serv">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>	
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- /Service Section -->
<!-- Gallery Section -->
<section class="our-gallery" id="gallery">
	<h3 class="text-center slideanim">Our Gallery</h3>
	<p class="text-center slideanim">Here are some photos which describes our work.</p>
	<div class="container">
		<img src="images/work1.jpg" data-darkbox="images/work1-1.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
        <img src="images/work2.jpg" data-darkbox="images/work2-2.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/work3.jpg" data-darkbox="images/work3-3.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/work4.jpg" data-darkbox="images/work4-4.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/work5.jpg" data-darkbox="images/work5-5.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/work6.jpg" data-darkbox="images/work6-6.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/work7.jpg" data-darkbox="images/work7-7.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/work8.jpg" data-darkbox="images/work8-8.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/work9.jpg" data-darkbox="images/work9-9.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/work10.jpg" data-darkbox="images/work10-10.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/work11.jpg" data-darkbox="images/work11-11.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/work12.jpg" data-darkbox="images/work12-12.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
	</div>
</section>	
<!-- /Gallery section -->
<!-- Team -->
<section class="our-team" id="team">
	<h3 class="text-center slideanim">Best Of The Best, Our Staff</h3>
	<p class="text-center slideanim">Our staff in which they all have great zeal towards their work.</p>
	<div class="container">
		<section class="main">
			<ul class="ch-grid">
				<li class="t1">
					<div class="ch-item slideanim">				
						<div class="ch-info">
							<div class="ch-info-front ch-img-1"></div>
							<div class="ch-info-back1">
								<ul class="social-icons">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								</ul>
							</div>	
						</div>
					</div>
					<h4 class="slideanim">Aneri Jhaveri</h4>
					<p class="team-info slideanim">Founder</p>
				</li>
				<li class="t2">
					<div class="ch-item slideanim">
						<div class="ch-info">
							<div class="ch-info-front ch-img-2"></div>
							<div class="ch-info-back2">
								<ul class="social-icons">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<h4 class="slideanim">Nidhi Trivedi</h4>
					<p class="team-info slideanim">Director</p>
				</li>
				<li class="t3">
					<div class="ch-item slideanim">
						<div class="ch-info">
							<div class="ch-info-front ch-img-3">
							<img alt="HELLO" src="">
							</div>
							<div class="ch-info-back3">
								<ul class="social-icons">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<h4 class="slideanim">Radha Desai</h4>
					<p class="team-info slideanim">admin</p>
				</li>
			</ul>
		</section>           
    </div>
</section>	
<!-- /Team -->
<!-- Google Map -->
<section class="map">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 slideanim">
				<iframe class="googlemaps" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d380510.6741687111!2d-88.01234121699822!3d41.83390417061058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1455598377120" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>	
		</div>
	</div>
</section>
<!-- /Google Map -->
<!-- Contact -->
<section class="contact-us slideanim" id="contact">
	<h3 class="text-center slideanim">Contact Us</h3>
	<p class="text-center slideanim"></p>
	<div class="container">		
		<div class="row">
			<div class="col-lg-5 col-md-5">
				<div class="contact-info">
					<h4>Connect With Us :-</h4>
					<p><strong>Phone :</strong> 9408915936</p>
					<p><strong>Email :</strong> <a href="mailto:makemyd15@gmail.com">makemyd15@gmail.com</a></p>
					<p class="addr"><strong>Address :</strong> 11plaza ,CG Road ,Ahmedabad,Gujarat, India.</p>
					
				</div>
			</div>
			<div class="col-lg-7 col-md-7">
				<form action="ActionController" method="post" >
					<div class="row">
						<div class="col-sm-12 form-group slideanim">
							<input class="form-control" id="name" name="cname" placeholder="Name" type="text" required>
						</div>
					</div>
					<div class="row email-bar">
						<div class="col-sm-12 form-group slideanim">
							<input class="form-control" id="email" name="cemail" placeholder="Email" type="email" required>
						</div>
					</div>
					<textarea class="form-control slideanim" id="comments" name="comments" placeholder="How can we help you?" rows="5"></textarea><br>
					<div class="row">
						<div class="col-sm-12 form-group">
							<button class="btn btn-outline1 btn-lg" value="Contact"  name="action" type="submit">Send</button>
						</div>
					</div>
				</form>			
			</div>
		</div>
	</div>
</section>
<!-- /Contact -->
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
						if(session != null)
						{
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
					<p>&copy;  2017 | All Rights Reserved | Design by Radha Aneri Nidhi  </a></p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- /Footer Section -->
<!-- js files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<!-- js for banner -->
<script src="js/index.js"></script>
<!-- /js for banner -->
<!-- js for gallery -->
<script src="js/darkbox.js"></script>
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
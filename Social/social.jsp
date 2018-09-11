<!DOCTYPE HTML>
<html>
<head>
<title>Make My Day</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- css files -->
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/team.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="../css/new css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="../css/new css/responsive.css" rel="stylesheet" type="text/css" media="all"/>
<link href="../css/new css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"/>
<!-- /css files -->

<!-- fonts -->
<link href='..///fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
<link href='..///fonts.googleapis.com/css?family=Nunito:400,300,700' rel='stylesheet' type='text/css'>
<!-- /fonts -->

<!-- js files -->
<script src="../js/modernizr.js"></script>
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
<section style="background-color: #f5f5f5">
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
					<a class="navbar-brand navbar-left" href="../index.jsp "><h1>MAKE MY DAY</h1></a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="../index.jsp" style="color: red">Home</a></li>
						<li><a href="../index.jsp#about" style="color: red">About</a></li>
						<li><a href="../index.jsp#service" style="color: red">Service</a></li>
						<li><a href="#gallery" style="color: red">Gallery</a></li>
						<li><a href="../index.jsp#contact" style="color: red">Contact</a></li>
						<% 
						if(session != null)
						{
						if (session.getAttribute("name") != null)
							{
						%>
							<li><a href="../Logout.jsp" style="color: red">Logout</a></li>
						<%
							} 
						else
						 	{
						 %>
							<li><a href="../Login.jsp" style="color: red">Login</a></li>
						<%
							}
						%>
						<% 
						} 
						else
						 	{
						 %>
							<li><a href="../Login.jsp" style="color: red">Login</a></li>
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
<section class="s">
	<br><br><br><br>
	<br><br><br><br>
	<div class="container">
	
 <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h3 class="section-title" style="color:black ">Packages</h3>
                        <div class="row">
                        <div class="product-carousel">
                        <div class="col-md-4">
                            <div class="single-product">
                            
                                <div class="product-f-image">
                                    <img src="images/s1.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="selectpackage.jsp" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Select Package</a>
                                        <a href="../Customform.jsp" class="view-details-link"><i class="fa fa-link"></i>Custom Form</a>
                                    </div>
                                </div>
                                </div>
                                
                                <h2>Low</h2>
                                
                                <div class="product-carousel-price">
                                 <h3>   <ins>Rs.5000</ins> </h3>
                                </div> 
                            </div>
                            <div class="col-md-4">
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="images/s2.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="selectpackage.jsp" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Select Package</a>
                                        <a href="../Customform.jsp" class="view-details-link"><i class="fa fa-link"></i>Custom Form</a>
                                    </div>
                                </div>
                                </div>
                                
                                <h2>Medium</h2>
                                <div class="product-carousel-price">
                                  <h3>  <ins>Rs.10000</ins> </h3>
                                </div> 
                            </div>
                            <div class="col-md-4">
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="images/s3.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="selectpackage.jsp" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Select Package</a>
                                        <a href="../Customform.jsp" class="view-details-link"><i class="fa fa-link"></i>Custom Form</a>
                                    </div>
                                </div>
                                </div>
                                
                                <h2>High</h2>

                                <div class="product-carousel-price">
                                   <h3> <ins>Rs.15000</ins></h3> <!--  <del>$425.00</del> -->
                                </div>                                 
                            </div>
                            </div>


</div>
</section>	
</section>
<!-- /banner section -->

<!-- About Section -->
<section class="about-us" id="about">
	<div class="container-fluid">
		<div class="row">	
			<div class="col-lg-12 about-info2 slideanim">
				<div class="about-details">
					<center><h2>Description</h2></center>
					<p>MAke MY DAY is a division of Excellent Event Planners Pvt. Ltd. MAKE MY DAY is a team of qualified professionals full of zeal and fervour to make an event of yours an extravagant affair to remember for an entire era. Our motto is simply to certify enchantment for all the services we provide to our clients as we have an supernatural ability to convert ideas to things, and eventually a reality, which is the backbone to success!
Our team at the MAKE MY DAY will cater to all your needs no matter how unimportant it is. We believe each action of ours is crucial as it is not enough to take steps which may lead to a goal; each step must be a goal in itself.
Passion, enthusiasm and dedication of our team ensures that we share good vibes with you by providing end to end solutions totally on the basis of sheer hard work and ability to convert your dreams into a reality.</p>
				</div>	
			</div>
		</div>
	</div>		
</section>
<!-- /About Section -->

<!-- Gallery Section -->
<section class="our-gallery" id="gallery">
	<h3 class="text-center slideanim">Our Gallery</h3>
	<p class="text-center slideanim">Here are some photos which describes our work.</p>
	<div class="container">
		<img src="images/social1.jpg" data-darkbox="images/social1-1.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
        <img src="images/social2.jpg" data-darkbox="images/social2-2.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/social3.jpg" data-darkbox="images/social3-3.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/social4.jpg" data-darkbox="images/social4-4.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/social5.jpg" data-darkbox="images/social5-5.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/social6.jpg" data-darkbox="images/social6-6.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/social7.jpg" data-darkbox="images/social7-7.jpg" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		<img src="images/social8.png" data-darkbox="images/social8-8.png" data-darkbox-description="<b>Lorem Ipsum</b><br>Lorem ipsum dolor sit amet" class="img-responsive slideanim">
		</div>
</section>	
<!-- /Gallery section -->
<!-- Footer Section -->
<section class="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="links">
					<a href="index.html">Home</a>
					<a href="../index.jsp#about">About</a>
					<a href="../index.jsp#service" >Service</a>
					<a href="#gallery">Gallery</a>
					<a href="../index.jsp#contact">Contact</a>
					<% 
						if(session != null)
						{
						if (session.getAttribute("name") != null)
							{
						%>
							<a href="../Logout.jsp">Logout</a>
						<%
							} 
						else
						 	{
						 %>
							<a href="../Login.jsp">Login</a>
						<%
							}
						%>
						<% 
						} 
						else
						 	{
						 %>
							<a href="../Login.jsp">Login</a>
						<%
							}
						%>
				</div>
			</div>
			<div class="col-md-6">
				<div class="copyright">
					<p>&copy; 2017 | All Rights Reserved | Design by Radha Aneri Nidhi </a></p>
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
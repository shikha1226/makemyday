 <html>
 <head>
 <link rel="stylesheet" href="css\bootstrap.min.css">
        <script src="js\bootstrap.js"></script>
        <script src="js\bootstrap.min.js"></script>
        <script type="text/javascript">
   
      // Form validation code will come here
      
      function validate()
      {
      	
    	  var firstpassword= document.myForm.pass.value;
    	  var secondpassword= document.myForm.pass1.value;
    	  var num=document.myForm.contact.value;
    	  if(num.lenght<10)
    		  {
    		  	alert("invalid number");
    		  	return false;
    		  }
    	  
    	  if(firstpassword != secondpassword)
    		  {
    		  	alert("password must be same");
    		  	pass1.focus;
    		  	return false;
    		  
    		  }
         if( document.myForm.name.value == "" )
         {
            alert( "Please provide your name!" );
            document.myForm.name.focus() ;
            return false;
         }
         
         if( document.myForm.email.value == "" )
         {
            alert( "Please provide your Email!" );
            document.myForm.email.focus() ;
            return false;
         }
         if( document.myForm.country.value == "-1" )
         {
            alert( "Please provide your country!" );
            return false;
         }
         return( true );
         if( document.myForm.state.value == "-1" )
         {
            alert( "Please provide your country!" );
            return false;
         }
         return( true );
         if( document.myForm.city.value == "-1" )
         {
            alert( "Please provide your country!" );
            return false;
         }
         return( true );
      }
   
</script>

<style type="text/css">
	body
	{
		background-image: url("images/b15.jpeg");
	}
</style>
 </head>
 <body>
 <%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
    <div class=pic>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.jsp"><strong><h4>Make My Day</h4></strong></a>
      
      </div>
      <div>
      <div class="collapse navbar-collapse" id="myNavbar"  >
      
      <ul class="nav navbar-nav navbar-right">
     <li><a style="color:0099FF" href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
      </ul>
      </div>
      </div></div>
    </div>
</nav> 

        <form class="form-horizontal" method="post" action="ActionController"   name="myForm" onsubmit="return(validate());">
         <div class="container" style="margin-top:50px;">
          <fieldset>
          <div id="edit_farmer" style="display:none"></div>
          <div class="row">
            <div class="col-md-2 panel panel-heading">Registration </div>
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
              <input id="contact" maxlength="10" name="contact" placeholder="xxxxxxxxxxxx"required="" class="form-control input-md ac_mobile" type="number" >
            </div>
			</div>
	
	
	 <div class="row form-group">
            <label class="col-md-2 control-label" for="email">Email ID</label>
            <div class="col-md-3">
    <div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-envelope"></i>
			</span>
              <input id="email" name="email" placeholder="" class="form-control input-md ac_email" type="email"  required="" >
            </div>
			</div>
			</div>
           
     
      <div class="row">
      <div class="row form-group">
            <div class="col-md-2 panel panel-heading">Address Information</div>
            <div class="col-md-4 panel panel-heading" style="display:none; color:red" id="address_error"></div>
       </div>
       </div>   

 
      <div class="row form-group">
   <label class="col-md-1 control-label" for="city">City</label>
            <div class="col-md-3">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>
              <select id="city" name="city" class="form-control input-md">
               <option value="-1"> </option>
                <option value="abd">Ahmedabad</option>
                <option value="surat">Surat</option>
                <option value="baroda">Baroda</option>
                <option value="bombay">Mumbai</option>
              </select>
            </div>
		</div>
  
    <div class="row form-group">
   <label class="col-md-1 control-label" for="state">State</label>
            <div class="col-md-3">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>
              <select id="state" name="state" class="form-control input-md">
               <option value="-1"> </option>
                <option value="gujarat">Gujarat</option>
                <option value="mp">MadhyaPradesh</option>
                <option value="up">UttarPradesh</option>
                <option value="mh">Maharastra</option>
              </select>
            </div>
		</div>
  
  <div class="row form-group">
   <label class="col-md-1 control-label" for="country">Country</label>
            <div class="col-md-3">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>
              <select id="country" name="country" class="form-control input-md">
               <option value="-1"> </option>
                <option value="ind">India</option>
                <option value="us">Us</option>
                <option value="canada">Canada</option>
                <option value="uk">Uk</option>
              </select>
            </div>
		</div>
  </div>
 </div>          <div class="row form-group">
            <label class="col-md-3 control-label" for="pincode">Pin Code</label>  
            <div class="col-md-2">
              <input id="pincode" name="pincode" placeholder="" class="form-control input-md" required="" type="text">
            </div>
          
            <label class="col-md-3 control-label" for="address">Address</label>
            <div class="col-md-3">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-pencil"></i>
			</span>
              <textarea class="form-control" id="address" name="address" placeholder="Addess Details..."></textarea>
            </div>
	       </div>
           </div>
           
           
          <div class="row form-group">
          <label class="col-md-3 control-label" for="password" >Enter Password</label>
          <div class="col-md-7">
          <div class="input-group">
          <span class="input-group-addon">
			<i class="glyphicon glyphicon-password"></i>
			</span>
              <input id="pass" name="pass" placeholder="" class="form-control input-md" required="" type="password">
          </div>
          </div>
          </div> 
          
          
          <div class="row form-group">
          <label class="col-md-3 control-label" for="password" >ReEnter Password</label>
          <div class="col-md-7">
          <div class="input-group">
          <span class="input-group-addon">
			<i class="glyphicon glyphicon-password"></i>
			</span>
              <input id="pass1" name="pass1" placeholder="" class="form-control input-md" required="" type="password">
          </div>
          </div>
          </div> 
          
          <div class="row form-group">
          <label class="col-md-3 control-label" for="password" >captcha	</label>
          <div class="col-md-5">
          <img id="captcha" width="150" hight="50" src="captchaServlet.jpg"/> 
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
              <button  type="submit" name="action" value="Register" class="btn btn-large btn-success"> Registration</button>
            </div>
          </div>
          </fieldset>
          </div>
        </form>
</body>
</html>


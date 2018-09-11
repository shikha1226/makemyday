<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Packges for Prewedding</title>
<style type="text/css">
#left
{ 
	width:740px;
	height: 720px;
	float:left; 
	font-size: 25px;
	font-family: Arial , helvetica , sans-serif;
}

#right
{
	width:740px;
	height: 720px;
	float:left; 
	font-size: 15px;
}


</style>
 <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" /> 
<script src="../js/bootstrap.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
</head>

<body>
<div  class="container" >
<div id="left">

<h1><strong>Low</strong></h1>
<p><strong>Rs.5000  </strong>  includes:</p>
<ul>
	<li>Cake</li>
	<li>Decoration</li>
	<li>Food</li> 
	<li>Music System</li>
</ul>
<br>

<h1><strong>Medium</strong></h1>
<p><strong>Rs.10000  </strong>  includes:</p>
<ul>
	<li>Cake</li>
	<li>Decoration</li>
	<li>Food</li> 
	<li>Music System</li>
	<li>PhotoGraphy</li>
</ul>

<br>
<h1><strong>High</strong></h1>
<p><strong>Rs.15000  </strong>  includes:</p>
<ul>
	<li>Cake</li>
	<li>Decoration</li>
	<li>Food</li> 
	<li>Music System</li>
	<li>PhotoGraphy</li>
	<li>Cartoon Characters</li>
	<li>Games</li>
</ul>






</div>





<div id="right">
<div class="well">
<form action="ActionController" method="get" name="frm" style="font-family: Arial , helvetica , sans-serif "  onsubmit="captchServlet">
<fieldset>
<h1><strong>Custom Form</strong></h1>
<hr>
<br>
<h5>* indicates required field</h5>
<br>
<table cellpadding="10" cellspacing="5" style="font-size: 20px">
	<tr>
		<td>Name:*</td>
		<td><input type="text" name="name" ></td>
	</tr>
	<tr>
		<td>Email-ID:*</td>
		<td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td>Contact Number:*</td>
		<td><input type="text" name="cno"></td>
	</tr>
	<tr>
		<td>Requested Date of Event:*</td>
		<td><input type="date" name="date" placeholder="mm-dd-yy"  max="1979-12-31"></td>
	</tr>
	<tr>
		<td>Preferred Time of Day:*</td>
		<td><input type="radio" name="ptime" value="Morning">Morning<br>
			<input type="radio" name="ptime" value="Afternoon">Afternoon<br>
			<input type="radio" name="ptime" value="Evening">Evening<br>
		</td>
	</tr>
	<tr>
		<td>Number of Guests:*</td>
		<td><input type="radio" name="nog" value="10-30">10-30<br>
			<input type="radio" name="nog" value="30-60">30-60<br>
			<input type="radio" name="nog" value="60-100">60-100<br>
			<input type="radio" name="nog" value="Over 100">Over 100<br>
		</td>
	</tr>
	<tr>
		<td>Questions or Special Requests:</td>
		<td><textarea rows="5" cols="50"></textarea></td>
	</tr>
	<tr>
					<td>captcha</td>
					<td><img id="captcha" width="150" src="captchaServlet.jpg"/> </td>
					<td> <input type="text" class="form-control" name="cap">    </td>
                    <td><p id="err"></td>
                        
				</tr>
	<tr>
		<td input colspan="5" align="center" >
		<input type="submit" class="btn btn-info" name="submit" style="color:black; background-color:pink" value="Submit Your Birthday Party Request"></td>
	</tr>
	
</table>
</fieldset>
</form>
</div>
</div>
</div>
</body>
</html>
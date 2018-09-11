<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
        
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<div class="well">
<form action="ActionController" name="frm3" method="post" style="font-family: Arial , helvetica , sans-serif ">
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
		<td><input type="text" name="contact"></td>
	</tr>
	<tr>
		<td>Requested Date of Event:*</td>
		<td><input type="date" name="rdate" placeholder="mm/dd/yyyy"></td>
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
		<td>Package:*</td>
		<td><input type="radio" name="pack" value="low">Low<br>
			<input type="radio" name="pack" value="medium">Medium<br>
			<input type="radio" name="pack" value="high">High<br>
		</td>
	</tr>
	<tr>
		<td>Questions or Special Requests:</td>
		<td><textarea rows="5" cols="50" name="sreq"></textarea></td>
	</tr>
	<tr>
		<td><img alt="" src="captchaServlet.jpg" id="captcha" width="150"></td>
	</tr>
	<tr>
		<td>Captcha Code:*</td>
		<td><input type="text" name="captcha"></td>
		<td><p id="err"></p></td>s
	</tr>
	<tr>
		<td><button type="submit" name="action" value="Submit" class="btn btn-large btn-sucess">Submit</button></td>
	</tr>
	
</table>
</fieldset>
</form>
</div>

</body>
</html>
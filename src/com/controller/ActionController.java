package com.controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.Services.CustomService;
import com.Services.Service;
import com.bean.ContactUs;
import com.bean.Custom;
import com.bean.UserReg;
import com.dao.UserDao;
import com.util.UserUtil;
@WebServlet("/ActionController")
public class ActionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String register=request.getParameter("action");
		 if(register.equalsIgnoreCase("Register"))
		 {
			 HttpSession session = request.getSession();
			 String captcha = request.getParameter("captcha");
			 String gcap = session.getAttribute("dns_security_code").toString();
			 if(captcha.equals(gcap))
			 {
			 UserReg ur=new UserReg();
			 ur.setName(request.getParameter("name"));
			 ur.setEmailid(request.getParameter("email"));
			 ur.setAddress(request.getParameter("address"));
			 ur.setCity(request.getParameter("city"));
			 ur.setState(request.getParameter("state"));
			 ur.setCountry(request.getParameter("country"));
			 ur.setContact(request.getParameter("contact"));
			 ur.setPassword(request.getParameter("pass"));
			 ur.setRepassword(request.getParameter("pass1"));
			 ur.setPincode(request.getParameter("pincode"));
			 UserDao udao=new UserDao();
			 udao.InsertUser(ur);
			 response.sendRedirect("Login.jsp");
			 }
			 else
			 {
				 response.sendRedirect("Registration.jsp");
				 
			 }
		 }
	
		 else if(register.equalsIgnoreCase("login"))
		 {
			 UserReg ur =new UserReg();
			 UserDao udao=new UserDao();
			 
			 String uname, password ;
			 uname=request.getParameter("uname");
			 password=request.getParameter("pass");
			 ur.setEmailid(uname);
			 ur.setPassword(password);
			 UserReg rs =udao.selectuser(ur);
			 String fname = rs.getName();
			 HttpSession session = request.getSession();
			 session.setAttribute("name", fname);
			 if(rs != null)
			 {
				 request.getRequestDispatcher("index.jsp").forward(request, response);
			 }
			 else
			 {
				 request.getRequestDispatcher("Login.jsp").forward(request, response);
			 }
		 }
		 
		 
		 
		 else if(register.equalsIgnoreCase("Send My Password"))
		 {
			 UserReg ur =new UserReg();
			 UserDao udao=new UserDao();
			 String inputEmail=request.getParameter("iemail");
//			 System.out.println(inputEmail);
			 ur = udao.forgetpassword(inputEmail);
//			 System.out.println(ur.getPassword());
			 if(ur!=null){
				 
			
			 Service s= new Service();
			 s.sendMail(inputEmail,ur.getId());
			 response.sendRedirect("Login.jsp");
			 }
			 else
			 {
				 request.setAttribute("message", "Email does not exists");
				 request.getRequestDispatcher("forgot.jsp").forward(request, response);
			 }
		 }
		 
		 
		 else if(register.equalsIgnoreCase("Save"))
		 {
			 UserReg ur=new UserReg();
			 UserDao udao=new UserDao();
			 int id=Integer.parseInt(request.getParameter("id"));
			 String newpassword=request.getParameter("newpass");
			 String renewpassword=request.getParameter("renewpass");
			 udao.UpdatePassword(newpassword, renewpassword,id);
			 response.sendRedirect("Login.jsp");
		 }
		 
		 else if(register.equalsIgnoreCase("Submit"))
		 {
			 HttpSession session = request.getSession();
			 String captcha = request.getParameter("captcha");
			 String gcap = session.getAttribute("dns_security_code").toString();
			 if(captcha.equals(gcap))
			 {
			 UserDao udao=new UserDao();
			 UserReg ur=new UserReg();
			 Custom c=new Custom();
			 String name=request.getParameter("name");
			 String email=request.getParameter("email");
			 String contact=request.getParameter("contact");
			 String rdate=request.getParameter("rdate");
			 String ptime=request.getParameter("ptime");
			 String nog=request.getParameter("nog");
			 String pack=request.getParameter("pack");
			 String sreq=request.getParameter("sreq");
			 c.setName(name);
			 c.setEmail(email);
			 c.setContact(contact);
			 c.setRdate(rdate);
			 c.setPtime(ptime);
			 c.setNog(nog);
			 c.setPack(pack);
			 c.setSreq(sreq);
			 udao.CustomInsert(c);
			 CustomService cs=new CustomService();
			 cs.sendMail("makemyd15@gmail.com", c);
			 request.getRequestDispatcher("index.jsp").forward(request, response);	
			 }
			 else
			 {
				 response.sendRedirect("Customform.jsp");
				 
			 }
		 }
		
		 else if(register.equalsIgnoreCase("Contact"))
		 { 
			 UserDao udao=new UserDao();
			 ContactUs cu=  new ContactUs();
			 String cname=request.getParameter("cname");
			 String cemail=request.getParameter("cemail");
			 String comments =request.getParameter("comments");
			 cu.setCemail(cemail);
			 cu.setCname(cname);
			 cu.setComments(comments);
			 udao.ContactIntsert(cu);
			 response.sendRedirect("index.jsp");
		 }
		 
		
	}
}

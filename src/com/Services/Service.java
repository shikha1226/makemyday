package com.Services;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Service {
	public void sendMail(String emailid,int id) {
		final String username = "makemyd15@gmail.com";
		final String password = "makemyd@15";

		String[] email = emailid.split(",");
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {
			for (String e : email) {

				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress(username));

				message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(e));// to
																							// mail
																							// address.
				message.setSubject("New Password Request");
				message.setText("Dear User ," + "\n\n for new  Password click here http://localhost:8081/MakeMYDay/newpassword.jsp?id="+id);
		
				Transport.send(message);
				System.out.println("Email Send To :-"+e);
			}
			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}

}
}

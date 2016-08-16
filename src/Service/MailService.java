package Service;

import java.util.*;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailService {
	

    String pass ="SERVER PASS";
    String to = "SERVER EMAIL ADDRESS";
    String host = "smtp.mail.yahoo.com";

    public String sendEmail(String from,String name,String messagetosend) {
    	
    	  Properties properties = System.getProperties();
    	
    	   properties.put("mail.smtp.starttls.enable", "true");
    	   properties.put("mail.smtp.host", host);
    	   properties.put("mail.smtp.user", to);
    	   properties.put("mail.smtp.password", pass);
    	   properties.put("mail.smtp.port", "587");
    	   properties.put("mail.smtp.auth", "true");


    	   Session session = Session.getDefaultInstance(properties);

    	   try{
 
    	      MimeMessage message = new MimeMessage(session);


    	      message.setFrom(new InternetAddress(to));


    	      message.addRecipient(Message.RecipientType.TO,
    	                               new InternetAddress(to));

 
    	      message.setSubject("Message from user " + name);


    	      message.setText("User email:" + from + "\n " + messagetosend);


    	      Transport transport = session.getTransport("smtp");
    	      transport.connect(host, to, pass);
    	      transport.sendMessage(message, message.getAllRecipients());
    	      transport.close();
    	   
    	   }catch (MessagingException mex) {
    		   
    	      mex.printStackTrace();
    	      
    	      return "Message failed to send...";
    	   }
		return "Message sent successfuly !";
    	}

	   
	

}

package action;

import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SendEmailAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email = (String)request.getSession().getAttribute("email");
		String key = makeKey();
		
		request.getSession().setAttribute("key",key);
		
		sendmail(email,key);
		return "/userpage/SendEmail.jsp";
	}
	
	public String makeKey(){
		Random ran = new Random();
		String key = "";
		for(int i=0;i<7;i++){
			key+=ran.nextInt(10);
		}
		return key;
	}

	final String username = "fksh90@gmail.com";
	final String password = "q131313!#";

	public void sendmail(String email,String key) {

		Properties props = new Properties();
		/*
		 * props.put("mail.smtp.user",username); props.put("mail.smtp.password",
		 * password);
		 */
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "25");
		props.put("mail.debug", "false");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.EnableSSL.enable", "true");
		props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.setProperty("mail.smtp.socketFactory.fallback", "false");
		props.setProperty("mail.smtp.port", "465");
		props.setProperty("mail.smtp.socketFactory.port", "465");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		System.out.println("??");
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("fksh90@gmail.com"));//
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			message.setContent("<h3>InterHash#<h3><br><hr/>인증번호는 "+key+" 입니다.<br>","text/html; charset=UTF-8;");//글내용을 html타입
			message.setSubject("InterHash#의 이메일 인증번호입니다");
			//message.setText("<html><body><a href='http://www.naver.com'>naver</a> Dear Mail Crawler," + "\n\n No spam to my email, please!</body></html>");// 내용
			System.out.println("send!!!");
			Transport.send(message);
			System.out.println("SEND");
			
			

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	

}

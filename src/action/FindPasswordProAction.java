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

public class FindPasswordProAction  implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email = request.getParameter("email");
		
		request.setAttribute("email", email);
		
		sendmail(email);
		
		return "/userpage/FindPasswordForm.jsp";
	}
	
	String result="";
	private String randomPassword(){
		//33���� ! �̰�, 122 �� z �Դϴ�.
		//�׷��Ƿ� �� ���ڴ� 90���Դϴ�.
		Random ran = new Random();
		char [] letter_arr = new char[90];
		char letter = '!';
		for(int i=0;i<90;i++){
			/*if(letter=='!'){
				System.out.println("! ��ȣ : "+(int)letter);
			}
			if(letter=='z'){
				System.out.println("z ��ȣ : "+(int)letter);
			}*/
			System.out.println(letter);
			letter_arr[i]=letter;
			letter = (char)(++letter);
		}
		
		for(int i=0;i<8;i++){
			int a =ran.nextInt(90);
			result = result+letter_arr[a];
		}
		System.out.println("�ӽú�й�ȣ : "+result);
		return result;
	}
	
	private final String username = "fksh90@gmail.com";
	private final String password = "q131313!#";

	private void sendmail(String email) {
		randomPassword();
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
			message.setContent("�ӽ� ��й�ȣ�� "+result+" �Դϴ�.","text/html; charset=UTF-8;");//�۳����� htmlŸ��
			message.setSubject("Testing Subject");
			//message.setText("<html><body><a href='http://www.naver.com'>naver</a> Dear Mail Crawler," + "\n\n No spam to my email, please!</body></html>");// ����
			System.out.println("send!!!");
			Transport.send(message);
			System.out.println("SEND");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

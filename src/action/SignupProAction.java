package action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDataBean;

public class SignupProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String email = request.getParameter("email");
		String passwd = request.getParameter("passwd");
		String age = request.getParameter("age");
		String nickname = request.getParameter("nickname");
		String hashtag = request.getParameter("hashtag");
		
		LogonDataBean member = new LogonDataBean();
		member.setEmail(email);
		member.setPasswd(passwd);
		member.setNickname(nickname);
		member.setHashtag(hashtag);
		member.setAge(age);
		member.setReg_date(new Timestamp(System.currentTimeMillis()));
		
		request.setAttribute("member", member);
		
		
		return "/userpage/SignupPro.jsp";
	}
}
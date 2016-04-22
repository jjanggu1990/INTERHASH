package action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDBBean;
import board.LogonDataBean;

public class SignupProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String email = request.getParameter("email");
		String nickname = request.getParameter("nickname");
		String passwd = request.getParameter("passwd");
		String hash = request.getParameter("hash");
		int age = Integer.parseInt(request.getParameter("age"));
		Timestamp createddate;
		Timestamp modifieddate;
		String ip = request.getRemoteAddr();
		//int distinction= Integer.parseInt(request.getParameter("distinction"));
		//int reportcount = Integer.parseInt(request.getParameter("reportcount"));
		System.out.println("ip ::: "+ip);
		LogonDataBean member = new LogonDataBean();
		member.setEmail(email);
		member.setPasswd(passwd);
		member.setNickname(nickname);
		member.setHash(hash+"#test");
		member.setAge(age);
		member.setCreateddate(new Timestamp(System.currentTimeMillis()));
		member.setModifieddate(new Timestamp(System.currentTimeMillis()));
		member.setIp(ip);
		member.setDistinction(0);
		member.setReportcount(0);
		//request.setAttribute("member", member);
		LogonDBBean dbbean = LogonDBBean.getInstance();
		dbbean.insertMember(member);
		
		return "main.jsp";
	}
}
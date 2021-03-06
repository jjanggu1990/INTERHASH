package action;

import java.sql.Timestamp;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDBBean;
import board.LogonDataBean;

public class SignupProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String nickname = request.getParameter("nickname");
		String passwd = request.getParameter("passwd");
		String[] hash = request.getParameterValues("hash");
		int age = Integer.parseInt(request.getParameter("age"));
		Timestamp createddate;
		Timestamp modifieddate;
		
		//int distinction= Integer.parseInt(request.getParameter("distinction"));
		//int reportcount = Integer.parseInt(request.getParameter("reportcount"));
		
		LogonDataBean member = new LogonDataBean();
		member.setEmail(email);
		member.setPasswd(passwd);
		member.setNickname(nickname);
		member.setHash(Arrays.toString(hash));
		member.setAge(age);
		member.setCreateddate(new Timestamp(System.currentTimeMillis()));
		member.setModifieddate(new Timestamp(System.currentTimeMillis()));
		member.setDistinction(0);
		member.setReportcount(0);
		//request.setAttribute("member", member);
		LogonDBBean dbbean = LogonDBBean.getInstance();
		dbbean.insertMember(member);
		
		/*int check = dbbean.existEmail(email);
		System.out.println(check);*/
		
		request.getSession().setAttribute("email", email);
/*		request.getSession().setAttribute("check", check);*/
		System.out.println("email::" + email);
		System.out.println("hash ::::" + Arrays.toString(hash));
		

			return "/index.jsp";
	}
}
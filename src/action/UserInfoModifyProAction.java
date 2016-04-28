package action;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.LogonDBBean;
import board.LogonDataBean;

public class UserInfoModifyProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		LogonDataBean article = new LogonDataBean();
       
        article.setEmail(request.getParameter("email"));
		article.setPasswd(request.getParameter("passwd"));
		article.setNickname(request.getParameter("nickname"));
		article.setAge(Integer.parseInt(request.getParameter("age")));
		String h = Arrays.toString(request.getParameterValues("hash"));
		article.setHash(h);
		System.out.println(h);
		System.out.println(article.getEmail());
		
		LogonDBBean manager = LogonDBBean.getInstance();
		System.out.println("Ω√¿€");
		manager.updateMember(article);
		System.out.println("≥°");
		return "/userpage/UserInfoModifyPro.jsp";
	}
	
}

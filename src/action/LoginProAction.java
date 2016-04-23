package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDBBean;
import board.LogonDataBean;

public class LoginProAction implements CommandAction {
   
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String passwd = request.getParameter("passwd");
		System.out.println("email ::: " +email+ "  passwd ::: " + passwd);
		request.setAttribute("email", email);
		request.setAttribute("passwd", passwd);
		LogonDataBean member = new LogonDataBean();
		member.setEmail(email);
		member.setPasswd(passwd);
		
		LogonDBBean manager = LogonDBBean.getInstance();
		LogonDataBean check= manager.checkId(member);
		request.setAttribute("check", check);
		if(check!=null){
			request.getSession().setAttribute("memId", email);
			request.getSession().setAttribute("nickName", check.getNickname());
		}else{
			request.getSession().setAttribute("memId", null);
		}
		
		return "/userpage/Board.jsp";
	}
	  
}

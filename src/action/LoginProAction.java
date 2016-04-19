package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDBBean;

public class LoginProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		System.out.println("id ::: " +id+ "  passwd ::: " + passwd);
		LogonDBBean manager = LogonDBBean.getInstance();
		int check = manager.userCheck(id, passwd);
		request.setAttribute("check", check);
		
		if(check==1){
			request.getSession().setAttribute("memId", id);
		}else{
			request.getSession().setAttribute("memId", null);
		}
		
		return "/userpage/LoginPro.jsp";
	}
	
}

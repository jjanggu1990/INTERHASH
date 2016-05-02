package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogoutAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String memId = (String)request.getSession().getAttribute("memId");
		request.setAttribute("memId", memId);
		request.getSession().setAttribute("memId", null);
		request.getSession().setAttribute("nickName", null);
		/*return "main.jsp"; */
		
		return "index.jsp";
	}
}

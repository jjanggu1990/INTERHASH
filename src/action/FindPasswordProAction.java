package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FindPasswordProAction  implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email = request.getParameter("email");
		
		request.setAttribute("email", email);
		return "/userpage/FindPasswordPro.jsp";
	}
}

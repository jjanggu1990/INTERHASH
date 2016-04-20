package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		request.setAttribute("id", id);
		request.setAttribute("passwd", passwd);
		
		return "/userpage/Board.jsp";
	}
	
}

package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ContentInputProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email = request.getParameter("email");
		String nickname= request.getParameter("nickname");
		String content=request.getParameter("content");		
		
		
		
		return "/userpage/Board.jsp";
	}
	
}

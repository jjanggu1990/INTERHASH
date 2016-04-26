package action;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		request.setAttribute("id", id);
		request.setAttribute("passwd", passwd);
		String hash = request.getParameter("hash");
		System.out.println("hash :::: "+hash);
		request.setAttribute("hash", hash);
		
		return "/userpage/Board.jsp";
	}
	
}

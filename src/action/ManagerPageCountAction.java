package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ManagerPageCountAction  implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("UTF-8");
		String HashName = request.getParameter("HashName");
		
		request.setAttribute("HashName", HashName);
		return "/userpage/ManagerPageCount.jsp";
	}
}
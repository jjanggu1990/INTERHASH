package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ManagerPageReportAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String nickname = request.getParameter("connickname");
		
		return "/userpage/ManagerPageReport.jsp";
	}
}
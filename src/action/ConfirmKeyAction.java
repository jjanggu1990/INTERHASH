package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ConfirmKeyAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String inputkey=request.getParameter("inputkey");
		String key = (String)request.getSession().getAttribute("key");
		
		if(inputkey.equals(key)){
			request.getSession().setAttribute("key", "success");
		}
		return "/userpage/ConfirmSuccess.jsp";
		
	}
}

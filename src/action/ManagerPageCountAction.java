package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.AdminHashDBBean;
import board.AdminHashDataBean;

public class ManagerPageCountAction  implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("UTF-8");
		/*String HashName = request.getParameter("HashName");*/
		
		AdminHashDBBean dbpro = AdminHashDBBean.getInstance();
/*		AdminHashDataBean admin = new AdminHashDataBean();*/
		ArrayList array = null;
		array = dbpro.selectHash();
		System.out.println("array¿Ã∏ß:::"+array);
		
		request.setAttribute("array",array);
		return "/userpage/ManagerPageCount.jsp";  
	}
}
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
		String HashName = request.getParameter("HashName");
		request.setAttribute("hashname", HashName);
		ArrayList array = null;
		AdminHashDBBean dbpro = AdminHashDBBean.getInstance();
		array = dbpro.selectHash();
		AdminHashDataBean bean = (AdminHashDataBean)array.get(5);
		request.setAttribute("array", array);
		System.out.println("array¿Ã∏ß:::"+array);
	
		return "/userpage/ManagerPageCount.jsp";  
	}
}
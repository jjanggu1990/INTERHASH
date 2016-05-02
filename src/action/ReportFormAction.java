package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.ContentDBBean;
import board.ContentDataBean;

public class ReportFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int connum = Integer.parseInt(request.getParameter("connum"));
		String connickname = request.getParameter("connickname");
		
		
		System.out.println("connum ::::" + connum + "connick:::::"+connickname);
		ContentDBBean dbpro = ContentDBBean.getInstance();
		ContentDataBean content = dbpro.getContent(connum);
		
		request.setAttribute("content", content);
		request.setAttribute("connickname", connickname);
		
		return "/userpage/ReportForm.jsp";
	}
	
}

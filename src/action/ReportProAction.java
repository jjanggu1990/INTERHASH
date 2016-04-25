package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDBBean;
import board.ReportDataBean;

public class ReportProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String recontent = request.getParameter("report");
		String recategory = request.getParameter("category");
		String email = (String)request.getSession().getAttribute("memId");
		char redistinction = request.getParameter("redistinction").charAt(0);
		int connum = Integer.parseInt(request.getParameter("connum"));
		
		System.out.println("recontent :: "+recontent);
		System.out.println("recategory :: "+recategory);
		System.out.println("email :: "+email);
		System.out.println("redistinction :: "+redistinction);
		System.out.println("connum :: " +connum);
		
		
		
		ReportDataBean report = new ReportDataBean();
		report.setConnum(connum);
		report.setRecategory(recategory);
		report.setRedistinction(redistinction);
		report.setEmail(email);
		report.setRecontent(recontent);
		
		LogonDBBean bean = LogonDBBean.getInstance();
		bean.sendReport(report);
		
		
		return "main.jsp";
	}
	
}

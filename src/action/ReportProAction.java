package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDataBean;
import board.ReportDBBean;
import board.ReportDataBean;

public class ReportProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		System.out.println("여기까지올까????????????????????????????????");
		request.setCharacterEncoding("UTF-8");
		String mm = request.getParameter("test");
		System.out.println("test:::::::::::" + mm);
		
		String email = (String)request.getSession().getAttribute("memId");
		/*char redistinction = request.getParameter("redistinction").charAt(0);*/
		int connum = Integer.parseInt(request.getParameter("connum"));
		/*int renum = Integer.parseInt(request.getParameter("renum"));*/
		
		
		

			
		ReportDataBean report = new ReportDataBean();
		/*report.setRenum(renum);*/
		report.setConnum(connum);
		/*report.setRedistinction(redistinction);*/
		report.setEmail(email);
		ReportDBBean bean = ReportDBBean.getInstance();
		bean.sendReport(report);
		int check = bean.reportcount(mm);
		
		System.out.println("update:::::::::::::::"+check);
		
		
		return "/userpage/ReportPro.jsp";
	}
	
}

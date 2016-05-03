package action;

import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.AdminHashDBBean;
import board.LogonDBBean;
import board.LogonDataBean;
import board.WithdrawalDataBean;

public class ManagerPageMemberProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		/*request.getParameter("delete");*/
		String check[] = request.getParameterValues("delete");
		System.out.println("delete::" + Arrays.toString(check));
		String member =  Arrays.toString(check);
		
		WithdrawalDataBean members = new WithdrawalDataBean();
		AdminHashDBBean dbpro = AdminHashDBBean.getInstance();
		members.setDrawalemail(member);
		dbpro.adminInsert(member);
		
		LogonDataBean a = new LogonDataBean();
		a.setEmail(member);
		dbpro.deleteMember(member);
		
		 
		
/*		ArrayList array = null;
		LogonDBBean dbpro = LogonDBBean.getInstance();
		array = dbpro.selectMember();
		LogonDataBean bean = (LogonDataBean)array.get(0);*/
	

		return "/userpage/ManagerPageMemberPro.jsp";
	}
}
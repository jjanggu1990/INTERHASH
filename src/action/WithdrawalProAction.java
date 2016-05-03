package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.AdminHashDBBean;
import board.LogonDBBean;
import board.LogonDataBean;
import board.WithdrawalDataBean;

public class WithdrawalProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String email = (String)request.getSession().getAttribute("memId");
		String passwd=request.getParameter("passwd");
		String cause=request.getParameter("cause");
		System.out.println("email ::" + email);
		System.out.println("passwd ::" + passwd);
		System.out.println("cause ::" + cause);
		
		WithdrawalDataBean members = new WithdrawalDataBean();
		AdminHashDBBean dbpro = AdminHashDBBean.getInstance();
		members.setDrawalemail(email);
		members.setDrawalcause(cause);
		dbpro.insertMember(members);
		
		LogonDataBean member = new LogonDataBean();
		LogonDBBean bean= LogonDBBean.getInstance();
		
		member.setEmail(email);
		member.setPasswd(passwd);
		
		int check = bean.existEmailPasswd(member);
		System.out.println(check);
		
		bean.deleteMember(member);
		
		request.setAttribute("email", email);
		request.setAttribute("passwd", passwd);
		request.setAttribute("cause", cause);
		request.setAttribute("check", check);
		
		if(check==1){
			request.getSession().invalidate();
		}
		
		return "/userpage/WithdrawalPro.jsp";
	}
}
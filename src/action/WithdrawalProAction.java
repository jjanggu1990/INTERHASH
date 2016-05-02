package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDBBean;
import board.LogonDataBean;

public class WithdrawalProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email=request.getParameter("email");
		String passwd=request.getParameter("passwd");
		
		LogonDataBean member = new LogonDataBean();
		member.setEmail(email);
		member.setPasswd(passwd);
		
		LogonDBBean bean= LogonDBBean.getInstance();
		bean.existPasswd(passwd);
		bean.deleteMember(member);
		
		return "/userpage/WithdrawalPro.jsp";
	}
}
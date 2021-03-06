package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDBBean;
import board.LogonDataBean;

public class WithdrawalFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String email = (String) request.getSession().getAttribute("memId");
		
		LogonDBBean manager = LogonDBBean.getInstance();
		LogonDataBean c = manager.getMember(email);
		
		request.setAttribute("c", c);
		
		return "/userpage/WithdrawalForm.jsp";
	}
	
}

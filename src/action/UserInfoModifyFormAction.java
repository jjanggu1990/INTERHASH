package action;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDBBean;
import board.LogonDataBean;

public class UserInfoModifyFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String email = (String) request.getSession().getAttribute("memId");
			
		LogonDBBean manager = LogonDBBean.getInstance();
		LogonDataBean c = manager.getMember(email);
		
		String gethash = c.getHash();
		gethash = gethash.substring(1, gethash.length()-1);
		
		c.setHash(gethash);		
		
		request.setAttribute("c", c);
		request.setAttribute("gethash", gethash);
		
		System.out.println("c.getHash() :: "+gethash);
		
		return "/userpage/UserInfoModifyForm.jsp";
	}
	
}

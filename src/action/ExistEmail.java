package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDBBean;

public class ExistEmail  implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email = request.getParameter("email");
		
		LogonDBBean bean = LogonDBBean.getInstance();
		int check = bean.existEmail(email);
		
		request.setAttribute("check", check);
		
		if(check==1){
			return "/userpage/FindPasswordForm.jsp";
			
		}else{
			return "SendEmail.hash";
			
		}
		
	}
}

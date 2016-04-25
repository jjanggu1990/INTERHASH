package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDBBean;

public class ConfirmEmailAction  implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email = request.getParameter("email");
		System.out.println(email+"이메일확인");
		LogonDBBean bean = LogonDBBean.getInstance();
		int check = bean.existEmail(email);
		System.out.println(check);
		
		request.setAttribute("email", email);
		request.setAttribute("check", check);
		request.getSession().setAttribute("check", check);
		
		return "/userpage/ConfirmEmail.jsp";
		/*
		if(check==1){
			return "/userpage/SignupForm.hash";
			
		}else{
			return "SendEmail.hash";
			
		}
		*/
	}
}

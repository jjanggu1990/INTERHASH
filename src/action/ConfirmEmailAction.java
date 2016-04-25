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
<<<<<<< HEAD
=======

>>>>>>> 699b7884706bad4f7a4d7562afeb298b34e62392
		System.out.println(check);
		
		request.setAttribute("email", email);
<<<<<<< HEAD
		request.setAttribute("check", check);
=======
>>>>>>> 699b7884706bad4f7a4d7562afeb298b34e62392
		
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

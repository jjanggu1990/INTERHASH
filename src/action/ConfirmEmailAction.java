package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDBBean;

public class ConfirmEmailAction  implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String email = request.getParameter("email");
		System.out.println(email+"�̸���Ȯ��");
		System.out.println(request.getParameter("age")+"�����Դϴ�");
		LogonDBBean bean = LogonDBBean.getInstance();
		int check = bean.existEmail(email);
<<<<<<< HEAD:src/action/ConfirmEmailAction.java
		System.out.println(check);
		request.setAttribute("email", email);
		request.setAttribute("check", check);
=======
		
		request.getSession().setAttribute("check", check);
>>>>>>> bbcc407f965f81a7f3eb3d56c75bd9d4e9c09f45:src/action/ExistEmail.java
		
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

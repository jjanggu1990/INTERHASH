package action;

import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.ContentDBBean;
import board.LogonDBBean;
import board.LogonDataBean;

public class LoginProAction implements CommandAction {
   
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String passwd = request.getParameter("passwd");

		System.out.println("email ::: " +email+ "  passwd ::: " + passwd);
		request.setAttribute("email", email);
		request.setAttribute("passwd", passwd);
		
		LogonDataBean member = new LogonDataBean();
		member.setEmail(email);
		member.setPasswd(passwd);
		
		LogonDBBean manager = LogonDBBean.getInstance();
		LogonDataBean check= manager.checkId(member);
		request.setAttribute("check", check);
		
		/*if(check!=null){
			request.getSession().setAttribute("memId", email);
			request.getSession().setAttribute("nbickName", check.getNickname());
		}else{
			request.getSession().setAttribute("memId", null);
		}
		ArrayList array=null;
		ContentDBBean bean = ContentDBBean.getInstance();
		array= bean.getContent();
		request.setAttribute("content", array);
		
		return "/fixpage/boardDiv.jsp";*/
		
		if(check!=null)
		{
			request.getSession().setAttribute("memId", email);
			System.out.println("°ü¸®ÀÚ email check :: " + email);
			if(email.equals("admin@admin.com")){
				return "/userpage/ManagerPage.jsp";
			}
			else {
			request.getSession().setAttribute("memId", email);
			request.getSession().setAttribute("nickName", check.getNickname());
			
			
			ArrayList array=null;
			ContentDBBean bean = ContentDBBean.getInstance();
			array= bean.getContent();
			request.setAttribute("content", array);
			
			return "/fixpage/boardDiv.jsp";
			}
	
		}
		else
		{
			request.getSession().setAttribute("memId", null);
			
			ArrayList array=null;
			ContentDBBean bean = ContentDBBean.getInstance();
			array= bean.getContent();
			request.setAttribute("content", array);
			return "/fixpage/boardDiv.jsp";
		}
	}
	  
}

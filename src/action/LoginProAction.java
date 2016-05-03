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
		
		if(check!=null)
		{
			request.getSession().setAttribute("memId", email);
			request.getSession().setAttribute("nickName", check.getNickname());
			String tmp_hash = manager.getMemberHash((String)request.getSession().getAttribute("memId"));
			String [] hash_array =tmp_hash.substring(1, tmp_hash.length()-1).trim().split(",");
			ArrayList array_hash = new ArrayList();
			for(int i = 0;i<hash_array.length;i++){
				array_hash.add(hash_array[i].replaceAll("#", "").trim());
				System.out.println(hash_array[i]);
			}
			request.getSession().setAttribute("memberHash", array_hash);
			if(email.equals("admin@admin.com")){
				ArrayList array=null;
				ContentDBBean bean = ContentDBBean.getInstance();
				array= bean.getContent();
				request.setAttribute("content", array);
				return "/userpage/ManagerPage.jsp";
			}
			
			ArrayList array=null;
			ContentDBBean bean = ContentDBBean.getInstance();
			array= bean.getContent();
			request.setAttribute("content", array);
			
			return "/fixpage/boardDiv.jsp";
	
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

package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDBBean;
import board.LogonDataBean;

public class ManagerPageMemberAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		ArrayList array = null;
		LogonDBBean dbpro = LogonDBBean.getInstance();
		array = dbpro.selectMember();
		LogonDataBean bean = (LogonDataBean)array.get(0);
		System.out.println("있나용::" + bean.getEmail());
		request.setAttribute("array", array);
		System.out.println("array이름:::"+array);
	

		return "/userpage/ManagerPageMember.jsp";
	}
}
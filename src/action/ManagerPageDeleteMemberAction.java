package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.WithdrawalDBBean;
import board.WithdrawalDataBean;

public class ManagerPageDeleteMemberAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
	
		request.setCharacterEncoding("UTF-8");
		ArrayList array = null;
		WithdrawalDBBean dbpro = WithdrawalDBBean.getInstance();
		array = dbpro.selectMember();
		WithdrawalDataBean bean = (WithdrawalDataBean)array.get(0);
		System.out.println("있나용::" + bean.getDrawalemail());
		request.setAttribute("array", array);
		System.out.println("array이름:::"+array);
	

		return "/userpage/ManagerPageDeleteMember.jsp";
	}
}
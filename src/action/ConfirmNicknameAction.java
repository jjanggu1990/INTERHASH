package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.LogonDBBean;

public class ConfirmNicknameAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String nickname = request.getParameter("nickname");
		System.out.println("닉네임확인 :: "+ nickname);
		LogonDBBean bean = LogonDBBean.getInstance();
		int check = bean.existNickname(nickname);
		System.out.println(check);
		
		request.getSession().setAttribute("nickname", nickname);
		request.getSession().setAttribute("check", check);
		
		return "/userpage/ConfirmNickname.jsp";

	}
}

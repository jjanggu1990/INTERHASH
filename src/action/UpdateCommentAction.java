package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.CommentDBBean;

public class UpdateCommentAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		CommentDBBean dbpro = CommentDBBean.getInstance();
		
		
		return "/uesrpage/UpdateComment.jsp";
	}

}

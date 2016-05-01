package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.CommentDBBean;
import board.CommentDataBean;

public class DeleteCommentAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		int comnum = Integer.parseInt(request.getParameter("comnum"));
		
		CommentDBBean comment = CommentDBBean.getInstance();
		int check = comment.deleteComment(comnum);
		
		request.setAttribute("check", check);
		return "/userpage/DeleteComment.jsp";
	}

}

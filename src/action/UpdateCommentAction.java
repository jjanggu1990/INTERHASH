package action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.CommentDBBean;
import board.CommentDataBean;

public class UpdateCommentAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		int comnum = Integer.parseInt(request.getParameter("comnum"));
		
		CommentDBBean dbpro = CommentDBBean.getInstance();
		CommentDataBean article = dbpro.getcommentone(comnum);
		
		
		request.setAttribute("article", article);
		
		
		return "/userpage/UpdateComment.jsp";
	}

}

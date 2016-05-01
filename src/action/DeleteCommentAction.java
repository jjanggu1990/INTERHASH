package action;

import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.CommentDBBean;
import board.CommentDataBean;
import board.ContentDBBean;
import board.ContentDataBean;

public class DeleteCommentAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		int comnum = Integer.parseInt(request.getParameter("comnum"));
		int connum = Integer.parseInt(request.getParameter("connum"));
		CommentDBBean comment = CommentDBBean.getInstance();
		int check = comment.deleteComment(comnum);
		
		ContentDBBean dbpro = ContentDBBean.getInstance();
		ContentDataBean content = dbpro.getContent(connum);

		
		
		request.setAttribute("content", content);
		request.setAttribute("check", check);
		request.setAttribute("connum", connum);

		return "ContentView.hash?connum="+connum;
	}

}

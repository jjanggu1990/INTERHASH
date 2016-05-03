package action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.CommentDBBean;
import board.CommentDataBean;

public class UpdateCommentProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
	
		int comnum = Integer.parseInt(request.getParameter("comnum"));
		int connum = Integer.parseInt(request.getParameter("connum"));
		Timestamp commodifieddate;

		CommentDataBean article = new CommentDataBean();

		article.setComnum(comnum);
		article.setComcontent(request.getParameter("comcontent"));
		article.setCommodifieddate(new Timestamp(System.currentTimeMillis()));

		CommentDBBean dbpro = CommentDBBean.getInstance();
		int check = dbpro.updateComment(article);
		
		request.setAttribute("connum", connum);
		request.setAttribute("check", check);

		return "/userpage/UpdateCommentPro.jsp";
	}

}

package action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.CommentDBBean;
import board.CommentDataBean;
import board.ContentDBBean;
import board.ContentDataBean;
import board.LogonDBBean;
import board.LogonDataBean;

public class ContentViewAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");

		int connum = Integer.parseInt(request.getParameter("connum"));

		SimpleDateFormat sdf = new SimpleDateFormat("YY-MM-dd HH:mm");

		ContentDBBean dbpro = ContentDBBean.getInstance();
		ContentDataBean content = dbpro.getContent(connum);

		
		String conhash = content.getConhash();

		conhash = conhash.replaceAll(",", "");
		content.setConhash(conhash);
		
		request.setAttribute("content", content);
		request.setAttribute("sdf", sdf);

		
		CommentDBBean commentdbpro = CommentDBBean.getInstance();

		ArrayList array = commentdbpro.getComment(connum);

		int count = commentdbpro.commentcount(connum);
		
		request.setAttribute("comment", array);
		request.setAttribute("conhash", conhash);
		request.setAttribute("count", count);
		
		return "/userpage/ContentView.jsp";
	}
}

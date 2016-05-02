package action;

import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.CommentDBBean;
import board.CommentDataBean;

public class InsertCommentAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		
		request.setCharacterEncoding("UTF-8");
		int connum = Integer.parseInt(request.getParameter("connum"));
		
		String comnick = (String)request.getSession().getAttribute("nickName");  
		String comcontent = request.getParameter("comcontent");
		Timestamp comcreateddate; 
		Timestamp commodifieddate;
		String comip = request.getRemoteAddr();
		String email = (String) request.getSession().getAttribute("memId");
		
		
		CommentDBBean commentdbpro = CommentDBBean.getInstance();
		CommentDataBean comment = new CommentDataBean();
		
		comment.setComnick(comnick);
		comment.setComcontent(comcontent);	
		comment.setComcreateddate(new Timestamp(System.currentTimeMillis()));
		comment.setCommodifieddate(new Timestamp(System.currentTimeMillis()));
		comment.setComip(comip);
		comment.setComreportcount(0);
		comment.setComblind("0");
		comment.setConnum(connum);
		comment.setEmail(email);
		

		commentdbpro.insertComment(comment);
		
		ArrayList array = commentdbpro.getComment();
		request.setAttribute("comments", comment);
		request.setAttribute("comment", array);
		
		return "ContentView.hash";
	}

}

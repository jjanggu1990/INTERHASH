package action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
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
		SimpleDateFormat sdf1 = new SimpleDateFormat("YY-MM-dd HH:mm");
		
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
		
		String comsdf = sdf1.format(comment.getCommodifieddate());
	
		ArrayList array = commentdbpro.getComment(connum);
		request.setAttribute("comments", comment);
		request.setAttribute("comment", array);
		request.setAttribute("comsdf", comsdf);
		
		return "ContentView.hash";
	}

}

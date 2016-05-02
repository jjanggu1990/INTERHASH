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

public class ContentViewAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int connum = 0 ;
		try{
		connum = Integer.parseInt(request.getParameter("connum"));
		}catch(Exception e){}
		SimpleDateFormat sdf = new SimpleDateFormat("YY-MM-dd HH:mm");

		ContentDBBean dbpro = ContentDBBean.getInstance();
		ContentDataBean content = dbpro.getContent(connum);
		

		request.setAttribute("content", content);
		request.setAttribute("sdf", sdf);
		CommentDBBean commentdbpro = CommentDBBean.getInstance();
		
		
/*		String comnick = (String)request.getSession().getAttribute("nickName");  
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
		*/
		ArrayList array = commentdbpro.getComment();
		/*request.setAttribute("comments", comment);*/
		request.setAttribute("comment", array);
		
		
	
		return "/userpage/ContentView.jsp";
	}

}

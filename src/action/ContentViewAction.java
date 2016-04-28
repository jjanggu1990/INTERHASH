package action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.CommentDBBean;
import board.CommentDataBean;
import board.ContentDBBean;
import board.ContentDataBean;

public class ContentViewAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		System.out.println("--------------------------------------------");
		/*int connum = Integer.parseInt(request.getParameter("connum"));*/
		System.out.println("connum");
		int connum=3;

				
	/*	String comnick = (String) request.getSession().getAttribute("nickName");  
		String comcontent = request.getParameter("comcontent");
		Timestamp comcreateddate; 
		Timestamp modifieddate;
		String comip = request.getRemoteAddr();
		String email = (String) request.getSession().getAttribute("memId");*/
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd HH:mm");
				
		
		
		ContentDBBean dbpro = ContentDBBean.getInstance();
		ContentDataBean content = dbpro.getContent(connum);

/*		CommentDataBean comment = new CommentDataBean();
		System.out.println("---------------------------------"+comnick+comcontent+connum);
		comment.setComnick(comnick);
		comment.setComcontent(comcontent);
		comment.setComcreateddate(new Timestamp(System.currentTimeMillis()));
		comment.setModifieddate(new Timestamp(System.currentTimeMillis()));
		comment.setComip(comip);
		comment.setConnum(connum);
		comment.setComreportcount(0);
		comment.setComblind("0");
		comment.setEmail(email);*/
		
		
		
		CommentDBBean commentdbpro =CommentDBBean.getInstance();
		
		/*commentdbpro.insertComment(comment);*/
		
		request.setAttribute("content", content);
		request.setAttribute("sdf", sdf);
/*		request.setAttribute("comment", comment);*/
		
		
		return "/userpage/ContentView.jsp";
	}
	
}

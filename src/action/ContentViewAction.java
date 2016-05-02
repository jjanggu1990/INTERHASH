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
/*		int connum = 0 ;
		try{*/
		int connum = Integer.parseInt(request.getParameter("connum"));
/*		}catch(Exception e){}*/
		SimpleDateFormat sdf = new SimpleDateFormat("YY-MM-dd HH:mm");

		
		ContentDBBean dbpro = ContentDBBean.getInstance();
		ContentDataBean content = dbpro.getContent(connum);
		
	
		

		request.setAttribute("content", content);
		request.setAttribute("sdf", sdf);	
		CommentDBBean commentdbpro = CommentDBBean.getInstance();

		ArrayList array = commentdbpro.getComment();
		 
		request.setAttribute("comment", array);
		
		return "/userpage/ContentView.jsp";
	}

}

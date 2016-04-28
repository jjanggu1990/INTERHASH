package action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.ContentDBBean;
import board.ContentDataBean;

public class ContentInputProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String content = request.getParameter("content");
		System.out.println("content:::" + content);
		String conhash = "#"+request.getParameter("tag");
		System.out.println("tag:::"+conhash);
		String email = (String)request.getSession().getAttribute("memId");
		String connickname =(String)request.getSession().getAttribute("nickName");
		String conphoto = "a";
		Timestamp concreateddate = new Timestamp(System.currentTimeMillis());
		Timestamp conmodifieddate=new Timestamp(System.currentTimeMillis());
		String conip = request.getRemoteAddr();
		
		ContentDataBean bean = new ContentDataBean();
		bean.setConip(conip);
		bean.setEmail(email);
		bean.setConcreateddate(concreateddate);
		bean.setConmodifieddate(conmodifieddate);
		bean.setConphoto(conphoto);
		bean.setconNickname(connickname);
		bean.setContent(content);
		bean.setConhash(conhash);
		
		
		ContentDBBean dbbean = ContentDBBean.getInstance();
		dbbean.insertContent(bean);
		
		
		
		return "Board.hash";
	}
	
}

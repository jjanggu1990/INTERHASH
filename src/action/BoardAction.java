package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.ContentDBBean;
public class BoardAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		request.setAttribute("id", id);
		request.setAttribute("passwd", passwd);
		String hash = request.getParameter("hash");
		System.out.println("hash :::: "+hash);
		
		ArrayList array=null;
		if(hash==null){		
			ContentDBBean bean = ContentDBBean.getInstance();
			array= bean.getContent();
			request.setAttribute("content", array);
		}else{
			if (hash.equals("신고")) {
				ContentDBBean bean = ContentDBBean.getInstance();
				array = bean.getReport();
				request.setAttribute("content", array);
			}
			else {
				ContentDBBean bean = ContentDBBean.getInstance();
				array = bean.getContent(hash);
				request.setAttribute("content", array);
				
			}
		}
		return "/fixpage/boardDiv.jsp";
	}
	
}

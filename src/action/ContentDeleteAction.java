package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.ContentDBBean;

public class ContentDeleteAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		/*int connum = Integer.parseInt(request.getParameter("connum"));*/
		int connum=1;
		
		ContentDBBean dbpro = ContentDBBean.getInstance();
		int check = dbpro.deleteContent(connum);
		
		return "/userpage/ContentDelete.jsp";
	}

}

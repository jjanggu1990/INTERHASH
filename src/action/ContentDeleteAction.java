package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.ContentDBBean;

public class ContentDeleteAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		int connum = Integer.parseInt(request.getParameter("connum"));
	
		System.out.println("connum:::"+connum);
		ContentDBBean dbpro = ContentDBBean.getInstance();
		int check = dbpro.deleteContent(connum);
		System.out.println("check °ª :::::"+check);
		return "/userpage/ContentDelete.jsp";
	}

}

package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.ContentDBBean;
import board.ContentDataBean;

public class ContentUpdateAction implements CommandAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int connum = Integer.parseInt(request.getParameter("connum"));
		
		ContentDBBean dbpro = ContentDBBean.getInstance();
/*		ContentDataBean article = dbpro.co*/
		
		return "ContentView.hash";
	}

}

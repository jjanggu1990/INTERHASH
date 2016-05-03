package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.ContentDBBean;
import board.LogonDBBean;
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
			if (hash.equals("½Å°í")) {
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
		LogonDBBean manager = LogonDBBean.getInstance();
		String tmp_hash = manager.getMemberHash((String)request.getSession().getAttribute("memId"));
		String [] hash_array =tmp_hash.substring(1, tmp_hash.length()-1).trim().split(",");
		ArrayList array_hash = new ArrayList();
		for(int i = 0;i<hash_array.length;i++){
			array_hash.add(hash_array[i].replaceAll("#", "").trim());
			System.out.println(hash_array[i]);
		}
		request.getSession().setAttribute("memberHash", array_hash);
		return "/fixpage/boardDiv.jsp";
	}
	
}

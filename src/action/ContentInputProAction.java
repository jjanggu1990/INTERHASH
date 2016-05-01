package action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.ContentDBBean;
import board.ContentDataBean;

public class ContentInputProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		MultipartRequest multi = null;
		int sizeLimit = 10 * 1025 * 1024;
		String savePath = request.getRealPath("/upload");
		try {
			multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		} catch (Exception e) {
			e.printStackTrace();
		}
		String content = request.getParameter("content");
		System.out.println("content:::" + content);
		String conhash = "#"+request.getParameter("tag");
		System.out.println("tag:::"+conhash);
		String email = (String)request.getSession().getAttribute("memId");
		String connickname =(String)request.getSession().getAttribute("nickName");
<<<<<<< HEAD
		String conphoto = multi.getFilesystemName(request.getParameter("conphoto"));
=======
		String conphoto = multi.getFilesystemName("conphoto");
>>>>>>> 032180113b85b43339ecff57163ee08a90e87cd8
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

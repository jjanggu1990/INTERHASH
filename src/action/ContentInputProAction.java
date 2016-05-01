package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.ContentDataBean;

public class ContentInputProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		 request.setCharacterEncoding("UTF-8");
		 
		    // 10Mbyte 제한
		    int maxSize  = 1024*1024*10;        
		 
		    // 웹서버 컨테이너 경로
		    String root = request.getSession().getServletContext().getRealPath("/");
		 
		    // 파일 저장 경로(ex : /home/tour/web/ROOT/upload)
		    String savePath = root + "upload";
		 
		    // 업로드 파일명
		    String uploadFile = "";
		 
		    // 실제 저장할 파일명
		    String newFileName = "";
		 
		 
		 
		    int read = 0;
		    byte[] buf = new byte[1024];
		    FileInputStream fin = null;
		    FileOutputStream fout = null;
		    long currentTime = System.currentTimeMillis();  
		    SimpleDateFormat simDf = new SimpleDateFormat("yyyyMMddHHmmss");  
		    String content="";
		    String conhash="";
		    
		    try{
		 
		        MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		         
		        // 전송받은 parameter의 한글깨짐 방지
		        content = multi.getParameter("content");
		        System.out.println("사진 content:: " + content);
		        content = new String(content.getBytes("8859_1"), "UTF-8");
		        conhash = multi.getParameter("tag");
		        System.out.println("사진 conhash:: "+conhash);
		        conhash = new String(conhash.getBytes("8859_1"), "UTF-8");
		        // 파일업로드
		        uploadFile = multi.getFilesystemName("conphoto");
		        System.out.println("파일업로드 성공? "+uploadFile);
		        // 실제 저장할 파일명(ex : 20140819151221.zip)
		        newFileName = simDf.format(new Date(currentTime)) +"."+ uploadFile.substring(uploadFile.lastIndexOf(".")+1);
		 
		         
		        // 업로드된 파일 객체 생성
		        File oldFile = new File(savePath + uploadFile);
		 
		         
		        // 실제 저장될 파일 객체 생성
		        File newFile = new File(savePath + newFileName);
		         
		 
		        // 파일명 rename
		        if(!oldFile.renameTo(newFile)){
		 
		            // rename이 되지 않을경우 강제로 파일을 복사하고 기존파일은 삭제
		 
		            buf = new byte[1024];
		            fin = new FileInputStream(oldFile);
		            fout = new FileOutputStream(newFile);
		            read = 0;
		            while((read=fin.read(buf,0,buf.length))!=-1){
		                fout.write(buf, 0, read);
		            }
		             
		            fin.close();
		            fout.close();
		            oldFile.delete();
		        }   
		 
		    }catch(Exception e){
		        e.printStackTrace();
		    }
		ContentDataBean bean = new ContentDataBean();
		bean.setConhash(conhash);
		bean.setContent(content);
		bean.setConphoto(uploadFile);
		
		
		
		return "Board.hash";
	}
	
}

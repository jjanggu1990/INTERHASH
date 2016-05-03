package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.ContentDBBean;
import board.ContentDataBean;
import board.PhotoDataBean;

public class ContentInputProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		 request.setCharacterEncoding("UTF-8");
		 
		    // 10Mbyte ����
		    int maxSize  = 1024*1024*10;        
		 
		    // ������ �����̳� ���
		    String root = request.getSession().getServletContext().getRealPath("/");
		    String root1 = "F:\\git_test\\INTERHASH\\WebContent\\";
		    // ���� ���� ���(ex : /home/tour/web/ROOT/upload)
		    String savePath = "upload"+"\\";
		 
		    // ���ε� ���ϸ�
		    String uploadFile = "";
		 
		    // ���� ������ ���ϸ�
		    String newFileName = "";
		 
		 
		 
		    int read = 0;
		    byte[] buf = new byte[1024];
		    FileInputStream fin = null;
		    FileOutputStream fout = null;
		    long currentTime = System.currentTimeMillis();  
		    SimpleDateFormat simDf = new SimpleDateFormat("yyyyMMddHHmmss");  
		    String content="";
		    String conhash="";
		    String nickname="";
		    String email="";
		    String ip="";
		    try{
		 
		        MultipartRequest multi = new MultipartRequest(request, root+savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		         System.out.println("������ : " +root+ savePath);
		        // ���۹��� parameter�� �ѱ۱��� ����
		        content = multi.getParameter("content");
		      //  content = new String(content.getBytes("8859_1"), "UTF-8");
		        System.out.println("���� content:: " + content);
		        conhash = multi.getParameter("tag");
		       // conhash = new String(conhash.getBytes("8859_1"), "UTF-8");
		        System.out.println("���� conhash:: "+conhash);
		        
		        nickname=(String)request.getSession().getAttribute("nickName");
		        //nickname=new String(nickname.getBytes("8859_1"),"UTF-8");
		        
		        email=(String)request.getSession().getAttribute("memId");
		       // email=new String(email.getBytes("8859_1"),"UTF-8");
		        
		        
		        // ���Ͼ��ε�
		       
		        uploadFile = multi.getFilesystemName("conphoto");
		        System.out.println("���Ͼ��ε� ����? "+multi.getFilesystemName("conphoto"));
		        // ���� ������ ���ϸ�(ex : 20140819151221.zip)
		        //newFileName = simDf.format(new Date(currentTime)) +"."+ uploadFile.substring(uploadFile.lastIndexOf(".")+1);
		 
		         
		        // ���ε�� ���� ��ü ����
		        File oldFile = new File(root+savePath + uploadFile);
		 
		         
		        // ���� ����� ���� ��ü ����
		        File newFile = new File(root1+savePath + uploadFile);
		         
		 
		        // ���ϸ� rename
		        //if(!oldFile.renameTo(newFile)){
		 
		            // rename�� ���� ������� ������ ������ �����ϰ� ���������� ����
		 
		            buf = new byte[1024];
		            fin = new FileInputStream(oldFile);
		            fout = new FileOutputStream(newFile);
		            read = 0;
		            while((read=fin.read(buf,0,buf.length))!=-1){
		                fout.write(buf, 0, read);
		            }
		            fin.close();
		            fout.close();
		            //oldFile.delete();
		       // }   
		            
		           ContentDataBean content_obj = new ContentDataBean();
		           content_obj.setContent(content);
		           content_obj.setConip(request.getRemoteAddr());
		           content_obj.setConnickname(nickname);
		           content_obj.setEmail(email);
		           content_obj.setConhash(conhash);
		           content_obj.setConcreateddate(new Timestamp(System.currentTimeMillis()));
		           content_obj.setConmodifieddate(new Timestamp(System.currentTimeMillis()));
		           
		           
		           PhotoDataBean photo_obj = new PhotoDataBean();
		           
		           photo_obj.setEmail((String)request.getSession().getAttribute("memId"));
		           photo_obj.setPhotoname(uploadFile);
		           photo_obj.setRealpath(root1+savePath + uploadFile);
		           photo_obj.setServerpath(savePath + uploadFile);
		           System.out.println("Path:::"+newFile.getAbsolutePath());
		           photo_obj.setPhotosize(newFile.length()+"");
		           System.out.println("���� �뷮 :: "+newFile.length());
		           
		           ContentDBBean bean =  ContentDBBean.getInstance();
		           bean.insertContent(content_obj, photo_obj);
		 
		    }catch(Exception e){
		        e.printStackTrace();
		    }
		
		
		return "Board.hash";
	}
	
}

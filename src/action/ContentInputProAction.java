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
		 
		    // 10Mbyte ����
		    int maxSize  = 1024*1024*10;        
		 
		    // ������ �����̳� ���
		    String root = request.getSession().getServletContext().getRealPath("/");
		 
		    // ���� ���� ���(ex : /home/tour/web/ROOT/upload)
		    String savePath = root + "upload";
		 
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
		    
		    try{
		 
		        MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		         
		        // ���۹��� parameter�� �ѱ۱��� ����
		        content = multi.getParameter("content");
		        System.out.println("���� content:: " + content);
		        content = new String(content.getBytes("8859_1"), "UTF-8");
		        conhash = multi.getParameter("tag");
		        System.out.println("���� conhash:: "+conhash);
		        conhash = new String(conhash.getBytes("8859_1"), "UTF-8");
		        // ���Ͼ��ε�
		        uploadFile = multi.getFilesystemName("conphoto");
		        System.out.println("���Ͼ��ε� ����? "+uploadFile);
		        // ���� ������ ���ϸ�(ex : 20140819151221.zip)
		        newFileName = simDf.format(new Date(currentTime)) +"."+ uploadFile.substring(uploadFile.lastIndexOf(".")+1);
		 
		         
		        // ���ε�� ���� ��ü ����
		        File oldFile = new File(savePath + uploadFile);
		 
		         
		        // ���� ����� ���� ��ü ����
		        File newFile = new File(savePath + newFileName);
		         
		 
		        // ���ϸ� rename
		        if(!oldFile.renameTo(newFile)){
		 
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

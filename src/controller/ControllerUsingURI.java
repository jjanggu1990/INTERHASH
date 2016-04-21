package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
  
public class ControllerUsingURI extends HttpServlet {
   
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map commandMap = new HashMap();//��ɾ�� ��ɾ� ó�� Ŭ������ ������ ����

    //��ɾ�� ó��Ŭ������ ���εǾ� �ִ� properties ������ �о Map��ü�� commandMap�� ����
    //��ɾ�� ó��Ŭ������ ���εǾ� �ִ� properties ������ Command.properties����
    @Override
    public void init(ServletConfig config) throws ServletException {
    	System.out.println("init() ����");
        String props = config.getInitParameter("propertyConfig");//web.xml���� propertyConfig�� �ش��ϴ� init-param �� ���� �о��
        System.out.println("props :: "+props);
        String uri = config.getServletContext().getRealPath(props);
        System.out.println("uri:::"+uri);
        Properties pr = new Properties();//��ɾ�� ó��Ŭ������ ���������� ������ Properties��ü ����
        FileInputStream f = null;
        try {
            f = new FileInputStream(uri); //Command.properties������ ������ �о��
            pr.load(f);//Command.properties������ ������  Properties��ü�� ����
        } catch (IOException e) {
            throw new ServletException(e);
        } finally {
            if (f != null) try { f.close(); } catch(IOException ex) {}
        }
        Iterator keyIter = pr.keySet().iterator();//Iterator��ü�� Enumeration��ü�� Ȯ���Ų ������ ��ü
        while( keyIter.hasNext() ) {//��ü�� �ϳ��� ������ �� ��ü������ Properties��ü�� ����� ��ü�� ����
            String command = (String)keyIter.next();
            String className = pr.getProperty(command);
            System.out.println("className:::"+className);
            try {
                Class commandClass = Class.forName(className);//�ش� ���ڿ��� Ŭ������ �����.
                Object commandInstance = commandClass.newInstance();//�ش�Ŭ������ ��ü�� ����
                commandMap.put(command, commandInstance);// Map��ü�� commandMap�� ��ü ����
            } catch (ClassNotFoundException e) {
                throw new ServletException(e);
            } catch (InstantiationException e) {
                throw new ServletException(e);
            } catch (IllegalAccessException e) {
                throw new ServletException(e);
            }
        }
    }
    @Override
    public void doGet(//get����� ���� �޼ҵ�
        HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        requestPro(request, response);
    }
    @Override
    protected void doPost(//post����� ���� �޼ҵ�
        HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        requestPro(request, response);
    }

    //�ÿ����� ��û�� �м��ؼ� �ش� �۾��� ó��
    private void requestPro(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
	String view = null;
    CommandAction com=null;
	try {
            String command = request.getRequestURI();
            System.out.println("command:::"+command);
            if (command.indexOf(request.getContextPath()) == 0) {
               command = command.substring(request.getContextPath().length());
            }
            System.out.println("�ٲ� command: "+command);
            com = (CommandAction)commandMap.get(command); 
            view = com.requestPro(request, response);
            System.out.println("view::: "+view);
        } catch(Throwable e) {
            throw new ServletException(e);
        }  
        RequestDispatcher dispatcher =request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}
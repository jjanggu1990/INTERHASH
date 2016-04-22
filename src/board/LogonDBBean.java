package board;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class LogonDBBean {
	
private static LogonDBBean instance = new LogonDBBean();
	
	public static LogonDBBean getInstance(){
		return instance;
	}
	private LogonDBBean(){}
	
	private static SqlSessionFactory getFactory() throws Exception{
		String res = "mybatis/config.xml";
		InputStream is =null;
		SqlSessionFactory factory = null;
		try {
		  	is = Resources.getResourceAsStream(res);
			
			factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			//SqlSession session = factory.openSession();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return factory;
	}
	
	public void insertMember(LogonDataBean member) throws Exception{
		SqlSessionFactory factory = null;
		SqlSession session = null;
		try{
			factory = getFactory();
			session = factory.openSession();
			session.insert("userinfo.signup", member);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(session != null) try{session.close();}catch(Exception ex){}
		}
	}
	
	

}

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
	
	private SqlSession getSession() throws SQLException{
		String res = "config.xml";
		InputStream is=null;
		SqlSessionFactory factory=null;
		SqlSession session=null;
		try {
			is = Resources.getResourceAsStream(res);
			
			factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			session = factory.openSession();
		}catch(Exception e){
			throw new SQLException();
		}
		return session;
	}
	private static LogonDBBean instance = new LogonDBBean();
	
	public static LogonDBBean getInstance(){
		return instance;
	}
	private LogonDBBean(){}
	
	private Connection getConnection() throws Exception{
		String jdbcDriver = "jdbc:apache:commons:dbcp:/pool";
		return DriverManager.getConnection(jdbcDriver);
	}
	
	

}

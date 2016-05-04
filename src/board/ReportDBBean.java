package board;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ReportDBBean {
	private static ReportDBBean instance = new ReportDBBean();

	public static ReportDBBean getInstance() {
		return instance;
	}

	private ReportDBBean() {
	}

	private static SqlSessionFactory getFactory() throws Exception {
		String res = "mybatis/config.xml";
		InputStream is = null;
		SqlSessionFactory factory = null;
		try {
			is = Resources.getResourceAsStream(res);

			factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			// SqlSession session = factory.openSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return factory;
	}
	
	public void sendReport(ReportDataBean report) throws Exception{
		SqlSessionFactory factory=null;
		SqlSession session = null;
		try{
			factory = getFactory();
			session = factory.openSession();
			session.delete("report.sendreport", report);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if (session != null){
				try {
					session.close();
				} catch (Exception ex) {
				}
			}
		}
	}
	
	public int reportcount(String email) throws Exception{
		SqlSessionFactory factory=null;
		SqlSession session = null;
		int check = -1;
		try{
			factory = getFactory();
			session = factory.openSession();
			check = session.update("report.update", email);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if (session != null){
				try {
					session.close();
				} catch (Exception ex) {
				}
			}
		}
		return check;
	}
	
	
}

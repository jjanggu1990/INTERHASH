package board;

import java.io.InputStream;
import java.sql.Timestamp;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ContentDBBean {
	
	private static ContentDBBean instance = new ContentDBBean();

	public static ContentDBBean getInstance() {
		return instance;
	}

	private ContentDBBean() {
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
	
	public ContentDataBean getContent(int connum)throws Exception{
		SqlSessionFactory factory = null;
		SqlSession session = null;
		ContentDataBean content = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			content = session.selectOne("comment.content", connum);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				try {
					session.close();
				} catch (Exception ex) {
				}
		}
		return content;
	}
	
	public int deleteContent(int connum)throws Exception{
		SqlSessionFactory factory = null;
		SqlSession session = null;
		int check = -1;
		try {
			factory = getFactory();
			session = factory.openSession();
			check = session.delete("comment.contentdelete", connum);
			
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				try {
					session.close();
				} catch (Exception ex) {
				}
		}
		return check;
	}
	
	
	
	}
	
	


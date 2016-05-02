package board;

import java.io.InputStream;
import java.util.ArrayList;

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

	public void insertContent(ContentDataBean bean,PhotoDataBean photo) throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			session.insert("writecontent.insertContent" , bean);
			session.insert("writecontent.insertPhoto" , photo);
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
	}
	public ArrayList getContent() throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		ArrayList array = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			array = (ArrayList) session.selectList("writecontent.getContent");
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
		return array;
	}
	public ArrayList getContent(String hash) throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		ArrayList array = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			array = (ArrayList) session.selectList("writecontent.getContentByHash",hash);
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
		return array;
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

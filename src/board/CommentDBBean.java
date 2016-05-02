package board;

import java.io.InputStream;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.CommandAction;

public class CommentDBBean {
	private static CommentDBBean instance = new CommentDBBean();

	public static CommentDBBean getInstance() {
		return instance;
	}

	private CommentDBBean() {
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
	
	public void insertComment(CommentDataBean comment) throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		ArrayList array = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			session.insert("comment.insertcomment",comment);
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
	
	public ArrayList getComment()throws Exception{
		SqlSessionFactory factory = null;
		SqlSession session = null;
		ArrayList array = null;		
		
		try {
			factory = getFactory();
			session = factory.openSession();
			array = (ArrayList) session.selectList("comment.getComment");
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
	
	public int deleteComment(int comnum) throws Exception{
		SqlSessionFactory factory = null;
		SqlSession session = null;
		int check = -1;
		try {
			factory = getFactory();
			session = factory.openSession();
			check = session.delete("comment.deleteComment", comnum);
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
	
	public CommentDataBean getcommentone(int comnum) throws Exception{
		SqlSessionFactory factory = null;
		SqlSession session = null;
		CommentDataBean article = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			article = session.selectOne("comment.commentone", comnum);	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				try {
					session.close();
				} catch (Exception ex) {
				}
		}
		return article;
	}
	
	}


package board;

import java.io.InputStream;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class PhotoDBBean {

	private static PhotoDBBean instance = new PhotoDBBean();

	public static PhotoDBBean getInstance() {
		return instance;
	}

	private PhotoDBBean() {
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

	public ArrayList selectPhoto(String connum) throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		ArrayList array=null;
		try {
			factory = getFactory();
			session = factory.openSession();
			array=(ArrayList)session.selectList("photo.selectPhoto", connum);
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
}

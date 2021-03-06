package board;

import java.io.InputStream;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class AdminHashDBBean{

	private static AdminHashDBBean instance = new AdminHashDBBean();

	public static AdminHashDBBean getInstance() {
		return instance;
	}

	private AdminHashDBBean() {
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
	public ArrayList selectHash() throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		ArrayList array = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			array = (ArrayList)session.selectList("admin.admincount");

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
	public void deleteMember(String value) throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		String [] tmp = value.substring(1, value.length()-1).trim().split(",");
		try {
			factory = getFactory();
			session = factory.openSession();
			for (int i = 0 ; i < tmp.length;i++){
			
				session.delete("admin.deleteMember",tmp[i]);
			}
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
	
	public void adminInsert(String value) throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		String [] tmp = value.substring(1, value.length()-1).trim().split(",");
		try {
			factory = getFactory();
			session = factory.openSession();
			for (int i = 0 ; i < tmp.length;i++){
				
				session.insert("admin.admininsert",tmp[i]);
			}
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
	
	public void insertMember(WithdrawalDataBean members) throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			session.insert("admin.withinsert", members);
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
	
	

}

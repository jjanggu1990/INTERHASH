package board;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class LogonDBBean {

	private static LogonDBBean instance = new LogonDBBean();

	public static LogonDBBean getInstance() {
		return instance;
	}

	private LogonDBBean() {
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

	public void insertMember(LogonDataBean member) throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			session.insert("userinfo.signup", member);
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
	public int existEmail(String email) throws Exception{
		int check = -1;
		SqlSessionFactory factory = null;
		SqlSession session = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			check = session.selectOne("userinfo.existEmail", email);
			System.out.println("이메일 존재여부 1이 출력되야 함 : "+check);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		} finally {
			if (session != null) {
				try {
					session.close();
				} catch (Exception e) {
				}
			}
		}
		return check;
	}
	public String getMemberHash(String email) throws Exception{
		SqlSessionFactory factory = null;
		SqlSession session = null;
		String hash="";
		try {
			factory = getFactory();
			session = factory.openSession();
			hash = session.selectOne("userinfo.memberHash",email);
		}catch(Exception e){
			e.printStackTrace();
		} finally {
			if (session != null) {
				try {
					session.close();
				} catch (Exception e) {
				}
			}
		}
		
		return hash;
	}
	public int existNickname(String nickname) throws Exception{
		int check = -1;
		SqlSessionFactory factory = null;
		SqlSession session = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			check = session.selectOne("userinfo.existNickname", nickname);
			System.out.println("닉네임 존재여부 1이 출력되야 함 : "+check);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		} finally {
			if (session != null) {
				try {
					session.close();
				} catch (Exception e) {
				}
			}
		}
		return check;
	}
	public LogonDataBean checkId(LogonDataBean member) throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			LogonDataBean result = session.selectOne("userinfo.checkId", member);
			
			System.out.println(result.getEmail() + ", " + result.getNickname());
			
			session.commit();
			if (result.getEmail().equals(member.getEmail())) {
				return result;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				try {
					session.close();
				} catch (Exception e) {
				}
			}
		}
		return null;
	}

	public void setTempPasswd(TempPasswd temp) {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			session.update("userinfo.tempPasswd", temp);
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
	public LogonDataBean getMember(String email) throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		LogonDataBean aritcle = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			aritcle = session.selectOne("userinfo.getInfo", email);
			
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
		return aritcle;
	}
	public void deleteMember(LogonDataBean member) throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			session.delete("userinfo.withdrawal", member);
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

	public void updateMember(LogonDataBean article) throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			int x = session.update("userinfo.updateMember", article);
			session.commit();
			System.out.println("x::"+x);
			System.out.println();
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
	public ArrayList selectMember() throws Exception {
		SqlSessionFactory factory = null;
		SqlSession session = null;
		ArrayList array = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			array = (ArrayList)session.selectList("userinfo.getMember");

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
	public int existEmailPasswd(LogonDataBean member) throws Exception{
		int check = -1;
		SqlSessionFactory factory = null;
		SqlSession session = null;
		try {
			factory = getFactory();
			session = factory.openSession();
			check = session.selectOne("userinfo.existEmailPasswd", member);
			System.out.println("비밀번호가존재하면 1이 출력되야 함 : "+check);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
		} finally {
			if (session != null) {
				try {
					session.close();
				} catch (Exception e) {
				}
			}
		}
		return check;
	}
	
	
	


}

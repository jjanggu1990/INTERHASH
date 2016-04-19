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
	
	public int insertMember(LogonDataBean member) throws Exception{
		SqlSession sess = null;
		int result=-1;
		try{
			sess = getSession();

			result = sess.insert("logon.add",member);
			
			sess.commit();
			return result;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
		}
		return result;
	}
	
	public int userCheck(String id, String passwd) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt= null;
		ResultSet rs = null;
		String dbpasswd="";
		int x = -1;
		
		try{
			conn = getConnection();
			
			pstmt = conn.prepareStatement("select passwd from MEMBERS where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dbpasswd= rs.getString("passwd");
				if(dbpasswd.equals(passwd)){
					x= 1;
				}else{
					x= 0;
				}
			}else{
				x = -1;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs !=null) try{rs.close();} catch(SQLException ex){}
			if(pstmt !=null) try{pstmt.close();} catch(SQLException ex){}
			if(conn !=null) try{conn.close();} catch(SQLException ex){}
		}
		
		return x;
	}
	public int confirmId(String id) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = -1;
		
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement("select id from MEMBERS where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				x =1;
			}else{
				x = -1;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs != null) try{rs.close();}catch(SQLException ex){}
			if(pstmt != null) try{pstmt.close();} catch(SQLException ex){}
			if(conn != null) try{conn.close();} catch(SQLException ex){}
		}
		return x;
	}
	public LogonDataBean getMember(String id) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LogonDataBean member = null;
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from MEMBERS where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				member = new LogonDataBean();
				member.setId(rs.getString("id"));
				member.setPasswd(rs.getString("passwd"));
				member.setName(rs.getString("name"));
				member.setJumin1(rs.getString("jumin1"));
				member.setJumin2(rs.getString("jumin2"));
				member.setEmail(rs.getString("email"));
				member.setBlog(rs.getString("blog"));
				member.setZipcode(rs.getString("zipcode"));
				member.setAddress(rs.getString("address"));
				member.setReg_date(rs.getTimestamp("reg_date"));
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return member;
	}
	
	public void updateMember(LogonDataBean member) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		try{
			conn = getConnection();
			
			pstmt = conn.prepareStatement("update members set passwd = ?, name =?, email=?, blog = ?,address=? where id =?");
			pstmt.setString(1,member.getPasswd());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getEmail());
			pstmt.setString(4, member.getBlog());
			pstmt.setString(5, member.getAddress());
			pstmt.setString(6, member.getId());
			
			pstmt.executeQuery();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
	}
	
	public int deleteMember(String id, String passwd) throws Exception{
		Connection conn =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd = "";
		int x= -1;
		
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement("select passwd from members where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				dbpasswd= rs.getString("passwd");
				if(dbpasswd.equals(passwd)){
					pstmt = conn.prepareStatement("delete from members where id=?");
					pstmt.setString(1, id);
					pstmt.executeUpdate();
					x=1;
					
				}else{
					x = 0;
				}
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
		
		return x;
	}
	
	public Vector zipcodeRead(String area4){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Vector vecList = new  Vector();
		
		try{
			con = getConnection();
			String strQuery = "select * from zipcode where area4 like '"+area4 + "%'";
			pstmt = con.prepareStatement(strQuery);
			rs = pstmt.executeQuery();
			
			/*while(rs.next()){
				ZipcodeBean tempZipcode = new ZipcodeBean();
				tempZipcode.setZipcode(rs.getString("zipcode"));
				tempZipcode.setArea1(rs.getString("area1"));
				tempZipcode.setArea2(rs.getString("area2"));
				tempZipcode.setArea3(rs.getString("area3"));
				tempZipcode.setArea4(rs.getString("area4"));
				vecList.addElement(tempZipcode);
			}*/
			
		}catch(Exception e){
			System.out.println("Exception" + e);
		}finally{
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (con != null) try { con.close(); } catch(SQLException ex) {}
		}
		return vecList;
	}

}

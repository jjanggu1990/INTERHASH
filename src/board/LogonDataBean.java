package board;

import java.sql.Timestamp;

public class LogonDataBean {
	private String email;
	private String nickname;
	private String passwd;
	private String hash;
	private int age;
	private Timestamp createddate;
	private Timestamp modifieddate;
	private int distinction;
	private int reportcount;
	
	


	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getHash() {
		return hash;
	}
	public void setHash(String hash) {
		this.hash = hash;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Timestamp getModifieddate() {
		return modifieddate;
	}
	public void setModifieddate(Timestamp modifieddate) {
		this.modifieddate = modifieddate;
	}

	public int getDistinction() {
		return distinction;
	}
	public void setDistinction(int distinction) {
		this.distinction = distinction;
	}
	public int getReportcount() {
		return reportcount;
	}
	public void setReportcount(int reportcount) {
		this.reportcount = reportcount;
	}
	public Timestamp getCreateddate() {
		return createddate;
	}
	public void setCreateddate(Timestamp createddate) {
		this.createddate = createddate;
	}

	
	
}

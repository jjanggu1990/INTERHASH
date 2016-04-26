package board;

import java.sql.Timestamp;

public class ContentDataBean {
	private String blind;
	private String content;
	private String conphoth;
	private String conhash;
	private Timestamp concreatedate;
	private Timestamp conmodifieddate;
	private String conup;
	private int conreportcount;
	private char CONBLIND;
	private String email;
	public String getBlind() {
		return blind;
	}
	public void setBlind(String blind) {
		this.blind = blind;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getConphoth() {
		return conphoth;
	}
	public void setConphoth(String conphoth) {
		this.conphoth = conphoth;
	}
	public String getConhash() {
		return conhash;
	}
	public void setConhash(String conhash) {
		this.conhash = conhash;
	}
	public Timestamp getConcreatedate() {
		return concreatedate;
	}
	public void setConcreatedate(Timestamp concreatedate) {
		this.concreatedate = concreatedate;
	}
	public Timestamp getConmodifieddate() {
		return conmodifieddate;
	}
	public void setConmodifieddate(Timestamp conmodifieddate) {
		this.conmodifieddate = conmodifieddate;
	}
	public String getConup() {
		return conup;
	}
	public void setConup(String conup) {
		this.conup = conup;
	}
	public int getConreportcount() {
		return conreportcount;
	}
	public void setConreportcount(int conreportcount) {
		this.conreportcount = conreportcount;
	}
	public char getCONBLIND() {
		return CONBLIND;
	}
	public void setCONBLIND(char cONBLIND) {
		CONBLIND = cONBLIND;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}

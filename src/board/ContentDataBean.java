package board;

import java.sql.Timestamp;

public class ContentDataBean {
	int connum;
	String content;
	String conphoto;
	String conhash;
	Timestamp concreateddate;
	Timestamp modifieddate;
	String conip;
	int conreportcount;
	char conblind;
	String email;
	
	public ContentDataBean(){}

	public int getConnum() {
		return connum;
	}

	public void setConnum(int connum) {
		this.connum = connum;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getConphoto() {
		return conphoto;
	}

	public void setConphoto(String conphoto) {
		this.conphoto = conphoto;
	}

	public String getConhash() {
		return conhash;
	}

	public void setConhash(String conhash) {
		this.conhash = conhash;
	}


	public Timestamp getConcreateddate() {
		return concreateddate;
	}

	public void setConcreateddate(Timestamp concreateddate) {
		this.concreateddate = concreateddate;
	}

	public Timestamp getModifieddate() {
		return modifieddate;
	}

	public void setModifieddate(Timestamp modifieddate) {
		this.modifieddate = modifieddate;
	}

	public String getConip() {
		return conip;
	}

	public void setConip(String conip) {
		this.conip = conip;
	}

	public int getConreportcount() {
		return conreportcount;
	}

	public void setConreportcount(int conreportcount) {
		this.conreportcount = conreportcount;
	}

	public char getConblind() {
		return conblind;
	}

	public void setConblind(char conblind) {
		this.conblind = conblind;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}

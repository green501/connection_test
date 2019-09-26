package wdson.me.domain;

import java.util.Date;

public class QuestionVO {
	
	Date q_d;
	String q_q;
	String q_a;
	String q_i;
	
	public QuestionVO() {
	}
	
	public QuestionVO(Date q_d, String q_q, String q_a, String q_i) {
		super();
		this.q_d = q_d;
		this.q_q = q_q;
		this.q_a = q_a;
		this.q_i = q_i;
	}

	public Date getQ_d() {
		return q_d;
	}

	public void setQ_d(Date q_d) {
		this.q_d = q_d;
	}

	public String getQ_q() {
		return q_q;
	}

	public void setQ_q(String q_q) {
		this.q_q = q_q;
	}

	public String getQ_a() {
		return q_a;
	}

	public void setQ_a(String q_a) {
		this.q_a = q_a;
	}

	public String getQ_i() {
		return q_i;
	}

	public void setQ_i(String q_i) {
		this.q_i = q_i;
	}
	
	
}



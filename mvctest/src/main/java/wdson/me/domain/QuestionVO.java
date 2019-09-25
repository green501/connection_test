package wdson.me.domain;

import java.util.Date;

public class QuestionVO {
	
	Date q_d;
	String q_q;
	int q_a;
	
	public QuestionVO() {
	}
	
	public QuestionVO(Date q_d, String q_q, int q_a) {
		this.q_d = q_d;
		this.q_q = q_q;
		this.q_a = q_a;
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

	public int getQ_a() {
		return q_a;
	}

	public void setQ_a(int q_a) {
		this.q_a = q_a;
	}
	
}



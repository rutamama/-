package com.sesoc.projectTwo.vo;

public class prMember {
	private String prid;
	private String prpw;
	private String prnn;
	private String prem;
	private String pryear;
	private String prmonth;
	private String prgen;
	
	/*jsp = ��Ʈ�ѷ���
			
	��Ʈ���� �Ķ���Ͷ� vo */
	
	public prMember()
	{
		
	}

	public prMember(String prid)
	{
		this.prid = prid;
	}
	
	public prMember(String prid, String prpw)
	{
		this.prid = prid;
		this.prpw = prpw;
	}

	public prMember(String prid, String prpw, String prnn, String prem, String pryear, String prmonth, String orgen) {
		this.prid = prid;
		this.prpw = prpw;
		this.prnn = prnn;
		this.prem = prem;
		this.pryear = pryear;
		this.prmonth = prmonth;
		this.prgen = prgen;
	}

	public String getPrid() {
		return prid;
	}

	public void setPrid(String prid) {
		this.prid = prid;
	}

	public String getPrpw() {
		return prpw;
	}

	public void setPrpw(String prpw) {
		this.prpw = prpw;
	}

	public String getPrnn() {
		return prnn;
	}

	public void setPrnn(String prnn) {
		this.prnn = prnn;
	}

	public String getPrem() {
		return prem;
	}

	public void setPrem(String prem) {
		this.prem = prem;
	}

	public String getPryear() {
		return pryear;
	}

	public void setPryear(String pryear) {
		this.pryear = pryear;
	}

	public String getPrmonth() {
		return prmonth;
	}

	public void setPrmonth(String prmonth) {
		this.prmonth = prmonth;
	}

	public String getPrgen() {
		return prgen;
	}

	public void setPrgen(String prgen) {
		this.prgen = prgen;
	}

	@Override
	public String toString() {
		return "prMember [prid=" + prid + ", prpw=" + prpw + ", prnn=" + prnn + ", prem=" + prem + ", pryear=" + pryear
				+ ", prmonth=" + prmonth + ", prgen=" + prgen + "]";
	}
	
	
}

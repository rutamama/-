package com.sesoc.projectTwo.vo;

public class prMessege {
	private String mnum;
	private String mid;
	private String mcontents;
	private String minputdate;
	
	public prMessege(){
		
	}

	public prMessege(String mid, String mcontents)
	{
		this.mid = mid;
		this.mcontents = mcontents;
	}

	public prMessege(String mnum, String mid, String mcontents, String minputdate) {
		this.mnum = mnum;
		this.mid = mid;
		this.mcontents = mcontents;
		this.minputdate = minputdate;
	}

	public String getMnum() {
		return mnum;
	}

	public void setMnum(String mnum) {
		this.mnum = mnum;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMcontents() {
		return mcontents;
	}

	public void setMcontents(String mcontents) {
		this.mcontents = mcontents;
	}

	public String getMinputdate() {
		return minputdate;
	}

	public void setMinputdate(String minputdate) {
		this.minputdate = minputdate;
	}

	@Override
	public String toString() {
		return "prMessege [mnum=" + mnum + ", mid=" + mid + ", mcontents=" + mcontents + ", minputdate=" + minputdate
				+ "]";
	}
	
	
	
	
	
}
package com.sesoc.projectTwo.dao;

import java.util.ArrayList;

import com.sesoc.projectTwo.vo.prGroup;
import com.sesoc.projectTwo.vo.prMember;
import com.sesoc.projectTwo.vo.prMessege;


public interface PrJoinMapper {
	public int prJoin(prMember m);
	public prMember getMember(String id);
	public prMember prIdcheck(String prid);
	
	public int prChoose(prGroup gr);
	public prGroup getChoose(String prid);
	public ArrayList<prGroup> prSearch(prGroup gr);
	public int prchooseC(prGroup gr);
	
	public int prSendm(prMessege msg);
	public ArrayList<prMessege> getMessege(String text);
	public int prDeletem(String prid);
}

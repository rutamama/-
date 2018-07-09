package com.sesoc.projectTwo.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.projectTwo.vo.prGroup;
import com.sesoc.projectTwo.vo.prMember;
import com.sesoc.projectTwo.vo.prMessege;


@Repository
public class PrJoinDAO {
	@Autowired
	SqlSession sqlSession;
	
	public void prJoin(prMember m)	{
		PrJoinMapper mapper = sqlSession.getMapper(PrJoinMapper.class);
		mapper.prJoin(m);
	}
	
	public prMember getMember(String id)	{
		prMember m = null;
		PrJoinMapper mapper = sqlSession.getMapper(PrJoinMapper.class);
		m = mapper.getMember(id);
		return m;
	}
	
	public prMember prIdcheck(String prid)
	{
		prMember member = null;
		PrJoinMapper mapper = sqlSession.getMapper(PrJoinMapper.class);
		member = mapper.prIdcheck(prid);
		return member;
	}
	
	public void prChoose(prGroup gr)	{
		PrJoinMapper mapper = sqlSession.getMapper(PrJoinMapper.class);
		mapper.prChoose(gr);
	}
	
	public prGroup getChoose(String prid)	{
		prGroup gr = null;
		PrJoinMapper mapper = sqlSession.getMapper(PrJoinMapper.class);
		gr = mapper.getChoose(prid);
		return gr;
	}
	
	public ArrayList<prGroup> prSearch(prGroup grS)	{
		ArrayList<prGroup> list = null;
		PrJoinMapper mapper = sqlSession.getMapper(PrJoinMapper.class);
		list = mapper.prSearch(grS);
		return list;
	}
	
	public void prchooseC(prGroup gr)
	{
		PrJoinMapper mapper = sqlSession.getMapper(PrJoinMapper.class);
		mapper.prchooseC(gr);
	}
	
	public void prSendm(prMessege msg)
	{
		PrJoinMapper mapper = sqlSession.getMapper(PrJoinMapper.class);
		mapper.prSendm(msg);
	}
	
	public ArrayList<prMessege> getMessege(String text)
	{
		ArrayList<prMessege> mlist = null;
		PrJoinMapper mapper = sqlSession.getMapper(PrJoinMapper.class);	
		mlist = mapper.getMessege(text);
		return mlist;
	}
	
	public void prDeletem(String prid)
	{
		PrJoinMapper mapper = sqlSession.getMapper(PrJoinMapper.class);
		mapper.prDeletem(prid);
	}
}

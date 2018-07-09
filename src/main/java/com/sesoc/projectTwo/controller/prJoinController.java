package com.sesoc.projectTwo.controller;

import java.util.ArrayList;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.projectTwo.dao.PrJoinDAO;
import com.sesoc.projectTwo.vo.prGroup;
import com.sesoc.projectTwo.vo.prMember;
import com.sesoc.projectTwo.vo.prMessege;

@Controller
public class prJoinController {
	@Autowired
	PrJoinDAO dao;
	//����
	@RequestMapping(value = "/prJoin", method = RequestMethod.POST)
	public String prJOin(prMember m, HttpSession session ){
		System.out.println(m);
		dao.prJoin(m);
		session.setAttribute("Member", m);
		return "PR/prMain";
	}
	
	@RequestMapping(value = "/prLogin", method = RequestMethod.POST)
	public String prLogin(String id, String pw,  Model model, HttpSession session)
	{
		prMember m = dao.getMember(id);
		System.out.println(m);
		
		if(m.getPrid() == null)
		{
			model.addAttribute("msg", "�ش� ���̵� �����ϴ�.");
			return "redirect:/";
		}
		if(m.getPrid() != null && m.getPrpw().equals(pw))
		{
			System.out.println("����");
			session.setAttribute("Member", m);

			prGroup gr = dao.getChoose(m.getPrid());
			
			if (gr != null) {
				if(gr.getPrid() == null)
				{
					return "PR/prMain";
				}
				if(gr.getPrid() != null && gr.getPrid().equals(id))
				{
					session.setAttribute("gr", gr);
					
					ArrayList<prGroup> list = dao.prSearch(gr); 
					for(int i =0 ; i < 1; i++)
					{
						System.out.println(list.get(i));
					}
					session.setAttribute("lifeaccompany", list);
				}
			}
			
			return "PR/prMain";
		
		}
		else
		{
			model.addAttribute("msg", "�α��� ����");
			return "redirect:/";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/prIdCheck", method = RequestMethod.GET)
	public Boolean prIdcheck(String prid)
	{
		System.out.println(prid);
		
		prMember member =  dao.prIdcheck(prid);
		boolean check = false;
		
		if(member == null)
		{
			check = true;
			return check;
		}
		else{
			return check;
		}
		
	}
	
	@RequestMapping(value = "/prBoard", method = RequestMethod.GET)
	public String prBoard(@RequestParam(value="text", defaultValue="") String text, HttpSession session)
	{
	
		ArrayList<prMessege> mlist = null;
	
		mlist = dao.getMessege(text);
		session.setAttribute("mlist", mlist);
		return "PR/prBoard";
	}
	
	@RequestMapping(value = "/prLogout", method = RequestMethod.GET)
	public String prLogout(HttpSession session)
	{
		session.removeAttribute("Member");
		session.removeAttribute("gr");
		session.removeAttribute("lifeaccompany");
		
		return "home";
	}
	
	@RequestMapping(value = "/prChoose", method = RequestMethod.POST)
	public String prChoose(prGroup gr, HttpSession session)
	{
		System.out.println(gr);
		dao.prChoose(gr);
		session.setAttribute("gr", gr);
		return "PR/prBoard";
		
	}

	@RequestMapping(value = "/prchooseCForm", method = RequestMethod.GET)
	public String prchooseCFrom(){
		return "PR/prChooseCorrect";
	}
	
	@RequestMapping(value = "/prchooseC", method = RequestMethod.POST)
	public String prchooseC(prGroup gr, HttpSession session){
		prGroup temp = dao.getChoose(gr.getPrid());
		
		prGroup gr2 = (prGroup) session.getAttribute("gr");
		
		if(temp.getPrid().equals(gr2.getPrid()))
		{
			dao.prchooseC(gr);
			session.setAttribute("gr", gr);
			session.removeAttribute("lifeaccompany");
			dao.prDeletem(gr.getPrid());
		}
		
		return "PR/prMain";
	}
	
	@RequestMapping(value = "/prSearch", method = RequestMethod.POST)
	public String prSearch(prGroup grS, HttpSession session)
	{
		ArrayList<prGroup> list = dao.prSearch(grS); 
		for(int i =0 ; i < 1; i++)
		{
			System.out.println(list.get(i));
		}
		session.setAttribute("lifeaccompany", list);
		return "PR/prBoard";
	}
	
	@RequestMapping(value="/prSendm", method = RequestMethod.POST)
	public String prSendm(@RequestParam(value="text", defaultValue="") String text, prMessege msg, HttpSession session, String contents)
	{
		prGroup gr2 = (prGroup) session.getAttribute("gr");
		String id = gr2.getPrid();
		
		msg.setMid(id);
		msg.setMcontents(contents);
		
		dao.prSendm(msg);
		
		
		
		ArrayList<prMessege> mlist = null;
		mlist = dao.getMessege(text);
		
		session.setAttribute("mlist", mlist);
		return "PR/prBoard";
	}
}

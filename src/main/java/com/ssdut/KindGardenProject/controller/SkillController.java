package com.ssdut.KindGardenProject.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.ssdut.KindGardenProject.pojo.Skill;
import com.ssdut.KindGardenProject.service.impl.SkillServiceImpl;

@Controller
@RequestMapping("/skill")
public class SkillController {
	@Autowired
	SkillServiceImpl skillServiceImpl;
	
	/**
	 * 获取所有的一级技能
	 * @return
	 */
	@RequestMapping("/selectAllParentSkill")
	public ModelAndView selectAllParentSkill(){
		ModelAndView mav = new ModelAndView("parentSkill");
		List<Skill> skillList = skillServiceImpl.selectAllParentSkill();
		mav.addObject("allParentSkillModel", skillList);
		return mav;
	}
	
	/**
	 * 通过一级技能id获取对应下面的技能
	 * @param request
	 * @return
	 */
	@RequestMapping("/selectChildSkillByPid")
	public ModelAndView selectChildSkillByPid(HttpServletRequest request){
		String skillId = request.getParameter("skillId");
		ModelAndView mav = new ModelAndView("childSkill");
		List<Skill> skillList = skillServiceImpl.selectChildSkillByPid(skillId);
		mav.addObject("childSkillModel", skillList);
		request.setAttribute("skillId", skillId);
		return mav;
	}
	
	/**
	 * 添加一个技能对象
	 * @param record
	 * @return
	 */
	@RequestMapping("/insertSkill")
	public String insertParentSelective(Skill record){
		skillServiceImpl.insertSelective(record);
		return record.getSkillFlag() == 0 ? "redirect:selectAllParentSkill" : "redirect:selectChildSkillByPid?skillId="+record.getSkillFlag();
	}

	@RequestMapping("/addSkill")
	public String redirectAddSkill(HttpServletRequest request){
		String skillFlag = request.getParameter("skillFlag");
		request.setAttribute("skillFlag",skillFlag );
		return "addSkill";
	}
	
	/**
	 * 跳转到updateSkill界面
	 * @param request
	 * @return
	 */
	@RequestMapping("editSkill")
	public String goToUpdateSkill(HttpServletRequest request){
		String skillId = request.getParameter("skillId");
		Skill skill = skillServiceImpl.selectByPrimaryKey(skillId);
		request.setAttribute("skill", skill);
		return "updateSkill";
	}
	
	@RequestMapping("updateSkill")
	public String updateByPrimaryKey(Skill record){
		skillServiceImpl.updateByPrimaryKeySelective(record);
		return record.getSkillFlag() == 0 ? "redirect:selectAllParentSkill" : "redirect:selectChildSkillByPid?skillId="+record.getSkillFlag();
	}
	
	@RequestMapping("deleteSkill")
	public String deleteByPrimaryKey(HttpServletRequest request){
		String skillId = request.getParameter("skillId");
		Skill record = skillServiceImpl.selectByPrimaryKey(skillId);
		if(record.getSkillFlag() == 0){
			//如果删除的是类别 则对应类别也删除
			skillServiceImpl.deleteBySkillFlag(record.getSkillId());
		}
		skillServiceImpl.deleteByPrimaryKey(Integer.valueOf(skillId));
		return record.getSkillFlag() == 0 ? "redirect:selectAllParentSkill" : "redirect:selectChildSkillByPid?skillId="+record.getSkillFlag();
	}
	
}

package com.ssdut.KindGardenProject.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssdut.KindGardenProject.dao.SkillMapper;
import com.ssdut.KindGardenProject.pojo.Skill;
import com.ssdut.KindGardenProject.service.SkillService;
import com.ssdut.KindGardenProject.util.PublicMethod;

@Service
public class SkillServiceImpl implements SkillService {

	@Autowired
	SkillMapper skillMapper;
	public int deleteByPrimaryKey(Integer skillId) {
		// TODO Auto-generated method stub
		return skillMapper.deleteByPrimaryKey(skillId);
	}

	public int insert(Skill record) {
		// TODO Auto-generated method stub
		return skillMapper.insert(record);
	}

	public int insertSelective(Skill record) {
		// TODO Auto-generated method stub
		return skillMapper.insertSelective(record);
	}

	public Skill selectByPrimaryKey(String skillId) {
		// TODO Auto-generated method stub
		return skillMapper.selectByPrimaryKey(Integer.valueOf(skillId));
	}

	public int updateByPrimaryKeySelective(Skill record) {
		// TODO Auto-generated method stub
		return skillMapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Skill record) {
		// TODO Auto-generated method stub
		return skillMapper.updateByPrimaryKey(record);
	}

	public List<Skill> selectAllParentSkill() {
		// TODO Auto-generated method stub
		return skillMapper.selectAllParentSkill();
	}

	public List<Skill> selectChildSkillByPid(String skillId) {
		// TODO Auto-generated method stub
		if(PublicMethod.isNumeric(skillId)){
			return skillMapper.selectChildSkillByPid(Integer.valueOf(skillId));
		}
		return null;
	}

	public int deleteBySkillFlag(Integer skillFlag) {
		// TODO Auto-generated method stub
		return skillMapper.deleteBySkillFlag(skillFlag);
	}

}

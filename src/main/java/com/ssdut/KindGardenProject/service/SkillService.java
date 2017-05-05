package com.ssdut.KindGardenProject.service;

import java.util.List;

import com.ssdut.KindGardenProject.pojo.Skill;

public interface SkillService {
	int deleteByPrimaryKey(Integer skillId);
	
	int deleteBySkillFlag(Integer skillFlag);

    int insert(Skill record);

    int insertSelective(Skill record);

    Skill selectByPrimaryKey(String skillId);

    int updateByPrimaryKeySelective(Skill record);

    int updateByPrimaryKey(Skill record);
    
    List<Skill> selectAllParentSkill();
    
    List<Skill> selectChildSkillByPid(String skillId);
}

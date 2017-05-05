package com.ssdut.KindGardenProject.dao;

import java.util.List;

import com.ssdut.KindGardenProject.pojo.Skill;

public interface SkillMapper {
    int deleteByPrimaryKey(Integer skillId);
    int deleteBySkillFlag(Integer skillFlag);

    int insert(Skill record);

    int insertSelective(Skill record);

    Skill selectByPrimaryKey(Integer skillId);

    int updateByPrimaryKeySelective(Skill record);

    int updateByPrimaryKey(Skill record);
    
    List<Skill> selectAllParentSkill();
    
    List<Skill> selectChildSkillByPid(Integer skillId);
}
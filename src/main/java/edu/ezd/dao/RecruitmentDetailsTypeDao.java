package edu.ezd.dao;

import edu.ezd.model.RecruitmentDetailsType;

import java.util.List;

/**
 * Created by JayJay on 2017/4/11.
 */
public interface RecruitmentDetailsTypeDao {

    List<RecruitmentDetailsType> findAll();

    RecruitmentDetailsType getOne(int recruitmentDetailsTypeId);

    void save(RecruitmentDetailsType recruitmentDetailsType);

    void update(RecruitmentDetailsType recruitmentDetailsType);
}

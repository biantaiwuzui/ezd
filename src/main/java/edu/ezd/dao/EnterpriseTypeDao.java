package edu.ezd.dao;

import edu.ezd.model.EnterpriseType;

import java.util.List;

/**
 * Created by JayJay on 2017/4/11.
 */
public interface EnterpriseTypeDao {
    List<EnterpriseType> findAll();

    EnterpriseType getEnterpriseType(int enterpriseTypeId);
}

package edu.ezd.dao;

import edu.ezd.model.PositionName;

import java.util.List;

/**
 * Created by JayJay on 2017/4/11.
 */
public interface PositionNameDao {

    List<PositionName> getPositionName(int industry_id);

    PositionName getOne(int positionNameId);
}

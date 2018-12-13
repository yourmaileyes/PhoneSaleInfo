package com.ql.psi.biz;

import java.util.List;

import com.ql.psi.entity.Review;

public interface ReviewBiz {
	List<Review> selectall();
	
    int deleteByPrimaryKey(String reviewid);

    int insert(Review record);

    int insertSelective(Review record);

    Review selectByPrimaryKey(String reviewid);

    int updateByPrimaryKeySelective(Review record);

    int updateByPrimaryKey(Review record);
}

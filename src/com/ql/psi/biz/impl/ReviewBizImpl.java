package com.ql.psi.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ql.psi.biz.ReviewBiz;
import com.ql.psi.entity.Review;
import com.ql.psi.mapper.ReviewMapper;
@Service(value="ReviewBiz")
public class ReviewBizImpl implements ReviewBiz{
	@Autowired
	ReviewMapper reviewMapper;

	@Override
	public int deleteByPrimaryKey(String reviewid) {
		// TODO Auto-generated method stub
		return reviewMapper.deleteByPrimaryKey(reviewid);
	}

	@Override
	public int insert(Review record) {
		// TODO Auto-generated method stub
		return reviewMapper.insert(record);
	}

	@Override
	public int insertSelective(Review record) {
		// TODO Auto-generated method stub
		return reviewMapper.insertSelective(record);
	}

	@Override
	public Review selectByPrimaryKey(String reviewid) {
		// TODO Auto-generated method stub
		return reviewMapper.selectByPrimaryKey(reviewid);
	}

	@Override
	public int updateByPrimaryKeySelective(Review record) {
		// TODO Auto-generated method stub
		return reviewMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Review record) {
		// TODO Auto-generated method stub
		return reviewMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Review> selectall() {
		// TODO Auto-generated method stub
		return reviewMapper.selectall();
	}

}

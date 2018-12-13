package com.ql.psi.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ql.psi.biz.PhoneBiz;
import com.ql.psi.entity.Phone;
import com.ql.psi.mapper.PhoneMapper;
@Service(value="PhoneBiz")
public class PhoneBizImpl implements PhoneBiz{
	@Autowired
	PhoneMapper phoneMapper;

	@Override
	public int deleteByPrimaryKey(String phoneid) {
		// TODO Auto-generated method stub
		return phoneMapper.deleteByPrimaryKey(phoneid);
	}

	@Override
	public int insert(Phone record) {
		// TODO Auto-generated method stub
		return phoneMapper.insert(record);
	}

	@Override
	public int insertSelective(Phone record) {
		// TODO Auto-generated method stub
		return phoneMapper.insertSelective(record);
	}

	@Override
	public Phone selectByPrimaryKey(String phoneid) {
		// TODO Auto-generated method stub
		return phoneMapper.selectByPrimaryKey(phoneid);
	}

	@Override
	public int updateByPrimaryKeySelective(Phone record) {
		// TODO Auto-generated method stub
		return phoneMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Phone record) {
		// TODO Auto-generated method stub
		return phoneMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Phone> selectphonebyclass(String phoneclass) {
		// TODO Auto-generated method stub
		return phoneMapper.selectphonebyclass(phoneclass);
	}

	@Override
	public List<Phone> selectall() {
		// TODO Auto-generated method stub
		return phoneMapper.selectall();
	}

	@Override
	public List<Phone> selectlike(String userid) {
		// TODO Auto-generated method stub
		return phoneMapper.selectlike(userid);
	}

	@Override
	public int insetlike(String userid, String phoneid) {
		// TODO Auto-generated method stub
		return phoneMapper.insetlike(userid, phoneid);
	}

	@Override
	public int deletelike(String userid, String phoneid) {
		// TODO Auto-generated method stub
		return phoneMapper.deletelike(userid, phoneid);
	}


}

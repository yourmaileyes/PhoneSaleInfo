package com.ql.psi.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ql.psi.biz.UserBiz;
import com.ql.psi.entity.User;
import com.ql.psi.mapper.UserMapper;
@Service(value="UserBiz")
public class UserBizImpl implements UserBiz{
	@Autowired
	UserMapper userMapper;

	@Override
	public int deleteByPrimaryKey(String useid) {
		// TODO Auto-generated method stub
		return userMapper.deleteByPrimaryKey(useid);
	}

	@Override
	public int insert(User record) {
		// TODO Auto-generated method stub
		return userMapper.insert(record);
	}

	@Override
	public int insertSelective(User record) {
		// TODO Auto-generated method stub
		return userMapper.insertSelective(record);
	}

	@Override
	public User selectByPrimaryKey(String useid) {
		// TODO Auto-generated method stub
		return userMapper.selectByPrimaryKey(useid);
	}

	@Override
	public int updateByPrimaryKeySelective(User record) {
		// TODO Auto-generated method stub
		return userMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(User record) {
		// TODO Auto-generated method stub
		return userMapper.updateByPrimaryKey(record);
	}

	@Override
	public User selectlogin(String username, String password) {
		// TODO Auto-generated method stub
		return userMapper.selectlogin(username, password);
	}

	@Override
	public User selectusername(String username) {
		// TODO Auto-generated method stub
		return userMapper.selectusername(username);
	}

	@Override
	public List<User> selectall() {
		// TODO Auto-generated method stub
		return userMapper.selectall();
	}

}

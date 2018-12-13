package com.ql.psi.biz;

import java.util.List;

import com.ql.psi.entity.User;

public interface UserBiz {
	List<User> selectall();
	
	User selectusername(String username);
	
	User selectlogin(String username,String password);
	
    int deleteByPrimaryKey(String useid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String useid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}

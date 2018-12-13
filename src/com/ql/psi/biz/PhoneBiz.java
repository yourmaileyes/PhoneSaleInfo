package com.ql.psi.biz;

import java.util.List;

import com.ql.psi.entity.Phone;

public interface PhoneBiz {
	
	int deletelike(String userid,String phoneid);
    List<Phone> selectlike(String userid);
	
	int insetlike(String userid,String phoneid);
	List<Phone> selectall();
	
	List<Phone> selectphonebyclass(String phoneclass);
	
    int deleteByPrimaryKey(String phoneid);

    int insert(Phone record);

    int insertSelective(Phone record);

    Phone selectByPrimaryKey(String phoneid);

    int updateByPrimaryKeySelective(Phone record);

    int updateByPrimaryKey(Phone record);
}

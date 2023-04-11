package com.doongie.kream.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.doongie.kream.user.model.User;

@Repository
public interface UserDAO {
	
	public int insertUser(
			@Param("is_manager") boolean is_manager
			, @Param("email") String email
			, @Param("password") String password
			, @Param("userName") String userName);
	
	public User selectUser(
			@Param("email") String email
			, @Param("password") String password);

}

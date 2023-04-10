package com.doongie.kream.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDAO {
	
	public int insertUser(
			@Param("is_manager") boolean is_manager
			, @Param("email") String email
			, @Param("password") String password
			, @Param("userName") String userName);

}

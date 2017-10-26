package com.work.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.work.model.User;
import com.work.model.UserDao;
@Repository
public class UserServiceImpl implements UserService {

	private UserDao dao;
	@Autowired
	public void setUserDao(UserDao dao) {
		this.dao=dao;
	}
	/**
	 * 로그인
	 */
	public String login(String userId,String userPw) {
		return dao.login(userId,userPw);
	}
	
	/**
	 * 회원가입
	 */
	public int join(User user) {
		boolean isIdCheck = dao.isId(user.getUserId());
		if(!isIdCheck) {
			return dao.join(user);
		} 
		return 0;
	}
}

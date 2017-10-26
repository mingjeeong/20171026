package com.work.model;

import java.util.Map;

public interface UserDao  {
	public String login(String userId,String userPw);
	public boolean isId(String userId);
	public int join(User user);
}

package com.work.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

	private Factory factory;
	@Autowired
	public void setFactoryDao(Factory factory) {
		this.factory = factory;
	}

	/**
	 * 로그인
	 */
	public String login(String userId,String userPw) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql= "select * from users where userId=? and userPw =?";		
		
		try {
			con=factory.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,userId);
			pstmt.setString(2,userPw);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				return rs.getString("userName");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
				try {
					factory.close(con, pstmt, rs);
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return null;
	}
	/**
	 * 아이디 중복 체크
	 * @param userId
	 * @return
	 */
	public boolean isId(String userId) {
		Connection con =null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		String sql="select * from users where userid=?";
		
		try {
			con=factory.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			return rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				factory.close(con, pstmt, rs);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	
	/**
	 *회원가입
	 * @param user
	 * @return
	 */
	public int join(User user) {
		Connection con=null;
		PreparedStatement pstmt = null;
		String sql ="insert into users values(?,?,?)";
		try {
			System.out.println("join");
			con = factory.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserPw());
			pstmt.setString(3, user.getUserName());
//			int rows = pstmt.executeUpdate(); 
//			System.out.println(rows);
//			return rows;
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				factory.close(con, pstmt, null);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return 0;
	}
}

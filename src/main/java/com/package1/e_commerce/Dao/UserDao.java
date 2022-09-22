package com.package1.e_commerce.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.package1.e_commerce.model.User;

public class UserDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet res;
	public UserDao(Connection con) {
		this.con = con;
	}
	 
	public User userLogin(String email,String password){
		User user = null;
		System.out.print(this.con);
		try{
			query="select * from users where email=? and password=?";
			pst=this.con.prepareStatement(query);
			pst.setString(1,email);
			pst.setString(2, password);
			res = pst.executeQuery();
			if(res.next()){
				user = new User();
				user.setId(res.getInt("id"));
				user.setName(res.getString("name"));
				user.setEmail(res.getString("email"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return user;
	}
	
}

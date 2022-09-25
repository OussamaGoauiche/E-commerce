package com.package1.e_commerce.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.package1.e_commerce.model.Product;

public class ProductDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet res;
	public ProductDao(Connection con) {
		this.con = con;
	}
	
	public List<Product> getAllProduct() throws SQLException{
		List<Product> products = new ArrayList<Product>();
		query ="select * from products";
		pst = this.con.prepareStatement(query);
		res=pst.executeQuery();
		while(res.next()){
			Product row = new Product();
			row.setId(res.getInt("id"));
			row.setName(res.getString("name"));
			row.setCategory(res.getString("category"));
			row.setPrice(res.getString("price"));
			row.setImage(res.getString("image"));
			products.add(row);
		}
		return products;
	}
}

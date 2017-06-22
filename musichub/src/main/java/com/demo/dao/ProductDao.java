package com.demo.dao;

import java.util.List;

import com.demo.model.Product;

public interface ProductDao {
	Product saveOrUpdateProduct(Product product);
	
	List<Product> getAllProducts();

	Product getProductById(int id);

	void deleteProduct(int id);
	
	void editProduct(Product product);
}

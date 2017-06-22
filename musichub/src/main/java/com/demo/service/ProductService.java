package com.demo.service;

import java.util.List;

import com.demo.model.Product;

public interface ProductService {
	Product saveOrUpdateProduct(Product product);
	public List<Product> getAllProducts();

	Product getProductById(int id);

	void deleteProduct(int id);

	void editProduct(Product product);
}

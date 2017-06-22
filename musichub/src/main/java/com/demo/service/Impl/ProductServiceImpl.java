package com.demo.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.ProductDao;
import com.demo.model.Product;
import com.demo.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
@Autowired
private ProductDao productDao;
public ProductServiceImpl(){
	System.out.println("CREATING INSTANCE FOR PRODUCTSERVICEIMPL");
		
}

public Product saveOrUpdateProduct(Product product){
	return productDao.saveOrUpdateProduct(product);
//call the Dao method using productDao variable
}

public List<Product> getAllProducts() {
	return productDao.getAllProducts();
	 
	
	
}

public Product getProductById(int id) {
	return productDao.getProductById(id);
}

public void deleteProduct(int id) {
	productDao.deleteProduct(id);
}

public void editProduct(Product product) {
	productDao.editProduct(product);
	
}



}
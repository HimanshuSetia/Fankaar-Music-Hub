package com.demo.dao.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.ProductDao;
import com.demo.model.Product;
@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
@Autowired
private SessionFactory sessionFactory;
	public ProductDaoImpl(){
		System.out.println("CREATING INSTANCE FOR PRODUCTDAOIMPL");
	}
	
	public Product saveOrUpdateProduct(Product product) {
		System.out.println(product.getId());
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(product); //insert into product values (.....)
		session.flush();
		session.close();
		System.out.println(product.getId());
		return product;	
	}
	
	public List<Product> getAllProducts() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List<Product> products=query.list();
		session.close();
		return products;
	}

	public Product getProductById(int id) {
		Session session=sessionFactory.openSession();
		//select * from product where id=34
		Product product=(Product)session.get(Product.class,id);
		session.close();
		return product;
	}
	
	public void deleteProduct(int id) {
		Session session=sessionFactory.openSession();
		//Make the object persistent[read the data from the table and add it to session]
		Product product=(Product)session.get(Product.class, id);
		session.delete(product);
		session.flush();
		session.close();
		
	}
	
	 public void editProduct (Product product){
	        Session session = sessionFactory.openSession();
	        System.out.println("Id of the product in dao is " + product.getId());
	        session.update(product);
	        session.flush();
	        session.close();
	    }


}
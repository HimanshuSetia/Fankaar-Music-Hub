package com.demo.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.CategoryDao;
import com.demo.model.Category;
import com.demo.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryDao categoryDao;
	
	public List<Category> getCategories() {
		return categoryDao.getCategories();
	}

	public Category saveOrUpdateCategory(Category category) {
		return categoryDao.saveOrUpdateCategory(category);
	}

}

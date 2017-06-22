package com.demo.service;

import java.util.List;

import com.demo.model.Supplier;

public interface SupplierService {
	Supplier saveOrUpdateSupplier(Supplier supplier);

	public List<Supplier> getAllSuppliers();
}

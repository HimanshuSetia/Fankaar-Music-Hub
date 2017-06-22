package com.demo.controller;

import java.util.List;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.demo.model.Supplier;
import com.demo.service.SupplierService;

@Controller
public class SupplierController {
	@Autowired
	private SupplierService supplierService;
	// display form
	// http://localhost:9002/HomeDecor/admin/supplierform

	@RequestMapping("/addSupplier")
	public String getSupplierForm(Model model) {
		
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("suppliers", supplierService.getAllSuppliers());
		return "supplierform";
	}

	@ModelAttribute("supplier")
	public Supplier newSupplier() {
	
		return new Supplier();

	}

	@RequestMapping("/addNewSupplier")
	public String addSupplier(@Valid @ModelAttribute(value = "supplier") Supplier supplier, BindingResult result) {
		if (result.hasErrors())
			return "supplierform";
		supplierService.saveOrUpdateSupplier(supplier);
		return "redirect:/suplist";
	}
	
	@RequestMapping("/suplist")
	public String getAllSuppliers(Model model) {
		List<Supplier> suppliers = supplierService.getAllSuppliers();
		// Assigning list of supplier to model attribute suppliers
		model.addAttribute("supplierList", suppliers);
		return "supplierlist";
	}

}

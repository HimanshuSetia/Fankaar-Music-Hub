package com.demo.controller.admin;
import com.demo.model.Product;
import com.demo.service.CategoryService;
import com.demo.service.ProductService;
import com.demo.service.SupplierService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;


@Controller

@RequestMapping("/admin")

public class AdminProduct {


    
@Autowired
	
private ProductService productService;
	
@Autowired
	
private CategoryService categoryService;
	
@Autowired
	
private SupplierService supplierService;
	
private Path path;

@RequestMapping("/addProduct")
	
public String getProductForm(Model model) 
{
		 Product product = new Product();
		/*model.addAttribute("product", new Product());*/
		
model.addAttribute("categories", categoryService.getCategories());
		
model.addAttribute("suppliers", supplierService.getAllSuppliers());
		 
model.addAttribute("productcommand", product);
		
return "NewRange";
}

	

@RequestMapping("/addNewProduct")
	
public String addProduct(@Valid @ModelAttribute("productcommand") Product product, BindingResult result,
			HttpServletRequest request) {
		if (result.hasErrors())
			
return "NewRange";
		
productService.saveOrUpdateProduct(product);
		
MultipartFile prodImage = product.getImage();

String rootDirectory = request.getSession().getServletContext().getRealPath("/");
path= Paths.get(rootDirectory + "/WEB-INF/resources/images/" + product.getId() + ".jpg");
System.out.println("Path =" +path );
if (!prodImage.isEmpty()) {			
try {
				
prodImage.transferTo(new File(path.toString()));
			
} catch (IllegalStateException e) {
				e.printStackTrace();
			} 
catch (IOException e) {
				e.printStackTrace();
			}
		}
		
return "redirect:/prodlist";

	}

	

@RequestMapping("/deleteproduct/{id}")
	
public String deleteProduct(@PathVariable int id) {
		
productService.deleteProduct(id);
		
return "redirect:/prodlist";
	}

	

@RequestMapping("/editform/{id}")
	
public String editProductForm(@PathVariable int id, Model model) {
		
model.addAttribute("product1", productService.getProductById(id));
		
System.out.println("Product id:" +id);
		
model.addAttribute("categories", categoryService.getCategories());
		
model.addAttribute("suppliers", supplierService.getAllSuppliers());
		
return "editproductform";
	}

	

@RequestMapping("/editProduct/{id}")
	
public String editProductDetails(@Valid @ModelAttribute("product1") Product product, BindingResult result,
			HttpServletRequest request) {
		System.out.println("product id in other method is:" +product.getId());
		
if (result.hasErrors())
			
return "editproductform";
		
MultipartFile prodImage = product.getImage();
		
if (!prodImage.isEmpty()) {
			
Path paths = Paths.get("C:/Users/Himanshu/workspace/musichub/src/main/webapp/WEB-INF/resources/images/"+ product.getId()+".jpg");
	
try {
				
prodImage.transferTo(new File(paths.toString()));
			} 
catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		
productService.editProduct(product);
		
return "redirect:/prodlist";
	}

} // The End of Class;
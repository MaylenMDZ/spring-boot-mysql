package com.example.demo.controller;

import com.example.demo.model.Producto;
import com.example.demo.repository.ProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class PagesController {
<<<<<<< HEAD
	

@RequestMapping(contact)
	public String contact(Model model) {
		model.addAttribute("contenido", contenidoRepository.findAll());
		return "contact";
	
	}
=======
	@RequestMapping("/product")
	public String product(Model model) {
		model.addAttribute("contenido", contenidoRepository.findAll());
		return "product";

>>>>>>> 8ec0e5b0f4d3a4a6b26689d052ed642435804d77
}
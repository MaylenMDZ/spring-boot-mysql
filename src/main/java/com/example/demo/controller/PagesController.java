package com.example.demo.controller;

import com.example.demo.model.Producto;
import com.example.demo.repository.ContenidoRepository;
import com.example.demo.repository.ProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class PagesController {
    @Autowired
    ContenidoRepository contenidoRepository; 
    @RequestMapping("/")
	public String home(Model model) {
		model.addAttribute("contenido", contenidoRepository.findAll());
		return "index";
	}


}
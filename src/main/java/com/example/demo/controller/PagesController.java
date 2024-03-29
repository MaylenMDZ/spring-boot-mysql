package com.example.demo.controller;

import com.example.demo.model.Pedido;
import com.example.demo.model.Producto;
import com.example.demo.model.Reseñas;
import com.example.demo.repository.AgregarPedidoRepository;
import com.example.demo.repository.ContenidoRepository;
import com.example.demo.repository.ProductoRepository;
import com.example.demo.repository.ReseñasRepository;
import com.example.demo.repository.tipoproductosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;
import javax.validation.Valid;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PagesController {
    @Autowired
    ContenidoRepository contenidoRepository;
    @Autowired
    tipoproductosRepository tipoproductosRepository;
    @Autowired
    ProductoRepository productoRepository;
    @Autowired
    ReseñasRepository reseñasRepository;
    @Autowired
    AgregarPedidoRepository agregarPedidoRepository;

    @RequestMapping("/")
	public String home(Model model) {
                model.addAttribute("productos", productoRepository.findByName(""));
		model.addAttribute("contenido", contenidoRepository.findAll());
                model.addAttribute("tipoproductos", tipoproductosRepository.findAll());
		return "index";
	}

	@RequestMapping("about")
	public String about(Model model) {
		model.addAttribute("contenido", contenidoRepository.findAll());
		return "about";
	}

	@RequestMapping("product")
	public String product(Model model) {
		model.addAttribute("productos", productoRepository.findAll());
		model.addAttribute("contenido", contenidoRepository.findAll());
		model.addAttribute("tipoproductos", tipoproductosRepository.findAll());
		return "product";

	}
        

	@RequestMapping("contact")
	public String contact(Model model) {
		model.addAttribute("contenido", contenidoRepository.findAll());
		return "contact";

   }

   	@RequestMapping("blog-detail")
	public String blog_detail(Model model) {
		model.addAttribute("contenido", contenidoRepository.findAll());
		model.addAttribute("tipoproductos", tipoproductosRepository.findAll());
		return "blog-detail";


   }
   	@RequestMapping("shoping-cart")
	public String shoping_cart(Model model) {
		model.addAttribute("contenido", contenidoRepository.findAll());
		return "shoping-cart";
        }
        
        @RequestMapping(value="product-detail/{id}", method=RequestMethod.GET)
	public String productDetail(@PathVariable("id") long id, ModelMap model) {
            long x = id;
            model.addAttribute("produc", new Pedido());
            model.addAttribute("reseñ", new Reseñas());
            model.addAttribute("productosRe", productoRepository.findByName(""));
            model.put("productos", productoRepository.findByIdProducto(id));
            model.put("reseñas", reseñasRepository.reseñasByIdProducto(x));
            model.put("contenido", contenidoRepository.findAll());
            return "product-detail";
	}
         @RequestMapping(value="/agregarPedido", method=RequestMethod.POST)
        public String agregarPedido(@Valid Pedido pedidos,
            BindingResult bindingResult, ModelMap model){
            if(bindingResult.hasErrors()){
                System.out.println("Error--->>"+bindingResult.getFieldErrors() );
                model.addAttribute("productos", productoRepository.findByName(""));
		model.addAttribute("contenido", contenidoRepository.findAll());
                return "/index";
            }else{
                agregarPedidoRepository.save(pedidos);
                model.addAttribute("productos", productoRepository.findByName(""));
		model.addAttribute("contenido", contenidoRepository.findAll());
                return "index";
            }
            
        }
        
        @RequestMapping(value="/agregarReseña", method=RequestMethod.POST)
        public String agregarReseña(@Valid Reseñas reseñas,
            BindingResult bindingResult, ModelMap model){
            if(bindingResult.hasErrors()){
                System.out.println("Error--->>"+bindingResult.getFieldErrors() );
                model.addAttribute("productos", productoRepository.findByName(""));
		model.addAttribute("contenido", contenidoRepository.findAll());
                return "/index";
            }else{
                reseñasRepository.save(reseñas);
                model.addAttribute("productos", productoRepository.findByName(""));
		model.addAttribute("contenido", contenidoRepository.findAll());
                return "index";
            }
        }
          

   }
        

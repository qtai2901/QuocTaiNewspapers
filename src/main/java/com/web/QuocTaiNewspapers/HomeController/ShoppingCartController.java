package com.web.QuocTaiNewspapers.HomeController;

import java.util.List;

import com.web.QuocTaiNewspapers.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.QuocTaiNewspapers.dao.CategoryDAO;
import com.web.QuocTaiNewspapers.entity.Product;

@Controller
public class ShoppingCartController {
    @Autowired
    CategoryDAO dao;
    @Autowired
    ProductService productService;

    @RequestMapping("/cart/view")
    public String view(Model model) {
        model.addAttribute("cates", dao.findAll());
        model.addAttribute("item", productService.findAll());
        // get totalsize item
        List<Product> items = productService.findAll();
        int totalItems = items.size();
        model.addAttribute("totalItems", totalItems);
        return "cart/view";

    }
}

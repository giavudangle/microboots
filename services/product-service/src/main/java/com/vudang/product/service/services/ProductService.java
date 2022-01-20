package com.vudang.product.service.services;

import com.vudang.product.service.model.Product;
import com.vudang.product.service.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    private ProductRepository _productRepository;

    public List<Product> getProducts(){
        return _productRepository.findAll();
    }

    public void createProduct(Product product){
        _productRepository.save(product);
    }
}

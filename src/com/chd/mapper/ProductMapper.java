package com.chd.mapper;

import com.chd.model.Product;

import java.util.List;

public interface ProductMapper {
    List<Product> selProductsByCid(int cid);
}
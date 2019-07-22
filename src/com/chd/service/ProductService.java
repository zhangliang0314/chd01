package com.chd.service;

import com.chd.model.Product;

import java.util.List;

/**
 * @Auther:zhangliang
 * @Date:2019/7/19
 * @Description:com.chd.service
 * @version:1.0
 */
public interface ProductService {

    List<Product> selProductsByCid(int cid);
    List<Product> selProductsByKey(String key);
}
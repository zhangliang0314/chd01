package com.chd.service.impl;

import com.chd.mapper.ProductMapper;
import com.chd.model.Product;
import com.chd.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther:zhangliang
 * @Date:2019/7/19
 * @Description:com.chd.service.impl
 * @version:1.0
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;

    @Override
    public List<Product> selProducts(int cid) {
        return productMapper.selProductsByCid(cid);
    }
}

package com.chd.service.impl;

import com.chd.mapper.ProductdetailMapper;
import com.chd.model.Productdetail;
import com.chd.service.ProductdetailService;
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
public class ProductdetailServiceImpl implements ProductdetailService {

    @Autowired
    private ProductdetailMapper productdetailMapper;

    @Override
    public List<Productdetail> searchProductBypid(int pid) {
        return productdetailMapper.searchProductBypid(pid);
    }
}

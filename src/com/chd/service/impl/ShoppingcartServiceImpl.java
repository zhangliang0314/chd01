package com.chd.service.impl;

import com.chd.mapper.ShoppingcartMapper;
import com.chd.model.Shoppingcart;
import com.chd.service.ShoppingcartService;
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
public class ShoppingcartServiceImpl implements ShoppingcartService {
    @Autowired
    private ShoppingcartMapper shoppingcartMapper;

    @Override
    public List<Shoppingcart> selShoppingcartByUid(int uid) {
        return shoppingcartMapper.selShoppingcarByUid(uid);
    }
}

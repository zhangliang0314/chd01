package com.chd.service;

import com.chd.model.Shoppingcart;

import java.util.List;

/**
 * @Auther:zhangliang
 * @Date:2019/7/19
 * @Description:com.chd.service
 * @version:1.0
 */
public interface ShoppingcartService {
    List<Shoppingcart> selShoppingcartByUid(int uid);

}

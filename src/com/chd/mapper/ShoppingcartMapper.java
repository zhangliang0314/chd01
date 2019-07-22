package com.chd.mapper;

import com.chd.model.Shoppingcart;

import java.util.List;

public interface ShoppingcartMapper {
    List<Shoppingcart> selShoppingcarByUid(int uid);
}
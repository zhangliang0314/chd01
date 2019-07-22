package com.chd.mapper;

import com.chd.model.Productdetail;

import java.util.List;

public interface ProductdetailMapper {
    List<Productdetail> searchProductBypid(int pid);
}
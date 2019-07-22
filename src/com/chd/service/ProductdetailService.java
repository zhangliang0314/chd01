package com.chd.service;

import com.chd.model.Productdetail;

import java.util.List;

/**
 * @Auther:zhangliang
 * @Date:2019/7/19
 * @Description:com.chd.service
 * @version:1.0
 */
public interface ProductdetailService {
    List<Productdetail> searchProductBypid(int pid);

}

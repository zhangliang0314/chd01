package com.chd.service;

import java.util.List;

import com.chd.model.Productimage;

/**
 * @Auther:zhangliang
 * @Date:2019/7/19
 * @Description:com.chd.service
 * @version:1.0
 */
public interface ProductimageService {
  List<Productimage> selectProductimageByPid(int pid);	
}

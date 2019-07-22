package com.chd.service.impl;

import com.chd.mapper.ProductimageMapper;
import com.chd.model.Productimage;
import com.chd.service.ProductimageService;
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
public class ProductimageServiceImpl implements ProductimageService {
	
	@Autowired
	private ProductimageMapper productimageMapper;
	
	@Override
	public List<Productimage> selectProductimageByPid(int pid) {		
		return productimageMapper.selectProductimageByPid(pid);
	}
}

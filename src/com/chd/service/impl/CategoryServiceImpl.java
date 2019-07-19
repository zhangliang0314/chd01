package com.chd.service.impl;

import com.chd.mapper.CategoryMapper;
import com.chd.model.Category;
import com.chd.service.CategoryService;
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
public class CategoryServiceImpl implements CategoryService {


    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public List<Category> selCategories() {
        return categoryMapper.selCategories();
    }
}

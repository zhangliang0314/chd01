package com.chd.mapper;

import com.chd.model.Productimage;

import java.util.List;

public interface ProductimageMapper {
	List<Productimage> selectProductimageByPid(int pid);

}
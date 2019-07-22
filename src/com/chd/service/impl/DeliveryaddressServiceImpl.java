package com.chd.service.impl;

import com.chd.mapper.DeliveryaddressMapper;
import com.chd.model.Deliveryaddress;
import com.chd.service.DeliveryaddressService;
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
public class DeliveryaddressServiceImpl implements DeliveryaddressService {

    @Autowired
    private DeliveryaddressMapper deliveryaddressMapper;

    @Override
    public List<Deliveryaddress> showaddressByUid(int uid) {
        return deliveryaddressMapper.showaddressByUid(uid);
    }

    @Override
    public void updAdderss(Deliveryaddress deliveryaddress) {
         deliveryaddressMapper.updAddress(deliveryaddress);
    }

    @Override
    public Deliveryaddress selDeliveryaddressById(int id) {
        return deliveryaddressMapper.selDeliveryaddressById(id);
    }

    @Override
    public void insAddress(Deliveryaddress deliveryaddress) {
        deliveryaddressMapper.insAddress(deliveryaddress);
    }
}

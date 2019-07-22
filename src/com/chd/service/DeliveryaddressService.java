package com.chd.service;

import com.chd.model.Deliveryaddress;

import java.util.List;

/**
 * @Auther:zhangliang
 * @Date:2019/7/19
 * @Description:com.chd.service
 * @version:1.0
 */
public interface DeliveryaddressService {

    List<Deliveryaddress> showaddressByUid(int uid);

    void updAdderss(Deliveryaddress deliveryaddress);
    Deliveryaddress selDeliveryaddressById(int id);

    void insAddress(Deliveryaddress deliveryaddress);
}

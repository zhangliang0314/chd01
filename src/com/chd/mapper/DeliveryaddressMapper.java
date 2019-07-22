package com.chd.mapper;

import com.chd.model.Deliveryaddress;

import java.util.List;

public interface DeliveryaddressMapper {
    List<Deliveryaddress> showaddressByUid(int uid);

    void updAddress(Deliveryaddress deliveryaddress);

    Deliveryaddress selDeliveryaddressById(int id);

    void insAddress(Deliveryaddress deliveryaddress);

}
package com.foodapp.dao;

import java.util.List;

import com.foodapp.dto.Restaraunt;


public interface RestaurentDAO {

    int insertRestaurent(Restaraunt rest);
    List<Restaraunt> getAllRestaurent();
    Restaraunt getRestById(int rId);
    int deleteRestById(int rId);
    int updateRestById(int rId, boolean isActive);
}

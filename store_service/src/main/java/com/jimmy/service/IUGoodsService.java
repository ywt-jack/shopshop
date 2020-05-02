package com.jimmy.service;

import com.jimmy.domain.UGoods;

import java.util.List;

public interface IUGoodsService {

    List<UGoods> getAll(Integer page) throws Exception;

    UGoods getById(Integer id) throws Exception;

    List<UGoods> getByName(String name, Integer page) throws Exception;

    List<UGoods> getByTypeId(Integer typeId, Integer page) throws Exception;

    List<UGoods> getSearch(String text, Integer page) throws Exception;

    List<UGoods> getHotGoods() throws Exception;

    List<UGoods> getRecommendedGoods() throws Exception;
}

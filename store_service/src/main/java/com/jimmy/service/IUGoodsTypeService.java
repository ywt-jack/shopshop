package com.jimmy.service;

import com.jimmy.domain.UGoodsType;

import java.util.List;

public interface IUGoodsTypeService {

    List<UGoodsType> getAll() throws Exception;

    List<UGoodsType> getElderParent() throws Exception;


}

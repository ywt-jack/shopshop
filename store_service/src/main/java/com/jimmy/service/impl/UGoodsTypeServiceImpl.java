package com.jimmy.service.impl;

import com.jimmy.dao.IUGoodsTypeDao;
import com.jimmy.domain.UGoodsType;
import com.jimmy.service.IUGoodsTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UGoodsTypeServiceImpl implements IUGoodsTypeService {

    @Autowired
    IUGoodsTypeDao goodsTypeDao;

    @Override
    public List<UGoodsType> getAll() throws Exception {
        return goodsTypeDao.getAll();
    }

    @Override
    public List<UGoodsType> getElderParent() throws Exception {
        return goodsTypeDao.getElderParent();
    }
}

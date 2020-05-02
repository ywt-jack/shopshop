package com.jimmy.service.impl;

import com.github.pagehelper.PageHelper;
import com.jimmy.dao.IUGoodsDao;
import com.jimmy.domain.UGoods;
import com.jimmy.service.IUGoodsService;
import com.jimmy.utils.MyConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service
public class UGoodsServiceImpl implements IUGoodsService {

    @Autowired
    IUGoodsDao goodsDao;

    @Override
    public List<UGoods> getAll(Integer page) throws Exception {
        PageHelper.startPage(page, MyConstants.PAGE_SIZE);
        return goodsDao.getAll();
    }

    @Override
    public UGoods getById(Integer id) throws Exception {
        return goodsDao.getById(id);
    }

    @Override
    public List<UGoods> getByName(String name, Integer page) throws Exception {
        PageHelper.startPage(page, MyConstants.PAGE_SIZE);
        return goodsDao.getByName(name);
    }

    @Override
    public List<UGoods> getByTypeId(Integer typeId, Integer page) throws Exception {
        PageHelper.startPage(page, MyConstants.PAGE_SIZE);
        return goodsDao.getByTypeId(typeId);
    }

    @Override
    public List<UGoods> getSearch(String text, Integer page) throws Exception {
        PageHelper.startPage(page, MyConstants.PAGE_SIZE);
        return goodsDao.getSearch(text);
    }

    @Override
    public List<UGoods> getHotGoods() throws Exception{
        return goodsDao.getHotGoods();
    }

    @Override
    public List<UGoods> getRecommendedGoods() throws Exception{
        return goodsDao.getRecommendedGoods();
    }
}

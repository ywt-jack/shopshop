package com.jimmy.controller;

import com.github.pagehelper.PageInfo;
import com.jimmy.domain.UGoods;
import com.jimmy.domain.UGoodsType;
import com.jimmy.service.IUGoodsService;
import com.jimmy.service.IUGoodsTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    private IUGoodsService goodsService;
    @Autowired
    private IUGoodsTypeService typeService;

    @RequestMapping("/")
    public ModelAndView getAll(@RequestParam(name = "page", defaultValue = "1")Integer page) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        List<UGoods> list = goodsService.getAll(page);
        PageInfo pageInfo = new PageInfo(list);

        modelAndView.addObject("typeList", getGoodsType());
        modelAndView.addObject("goodsList", pageInfo);
        modelAndView.setViewName("goods");

        return modelAndView;
    }

    @RequestMapping("/search")
    public ModelAndView getSearch(@RequestParam("text")String text, @RequestParam(name = "page", defaultValue = "1")Integer page) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        List<UGoods> list = goodsService.getSearch(text, page);
        PageInfo pageInfo = new PageInfo(list);

        modelAndView.addObject("typeList", getGoodsType());
        modelAndView.addObject("goodsList", pageInfo);
        modelAndView.setViewName("goods");

        return modelAndView;
    }

/*
    @RequestMapping("/detail")
    public ModelAndView getById(@RequestParam("id")Integer id) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        UGoods goods = goodsService.getById(id);

        modelAndView.addObject("typeList", getGoodsType());
        modelAndView.addObject("goodsList", goods);
        modelAndView.setViewName("goods");

        return modelAndView;
    }
*/

    @RequestMapping("/type")
    public ModelAndView getByTypeId(@RequestParam("typeid") Integer id, @RequestParam(name = "page", defaultValue = "1")Integer page) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        List<UGoods> list = goodsService.getByTypeId(id, page);
        PageInfo pageInfo = new PageInfo(list);

        modelAndView.addObject("typeList", getGoodsType());
        modelAndView.addObject("goodsList", pageInfo);
        modelAndView.setViewName("goods");

        return modelAndView;
    }

    private List<UGoodsType> getGoodsType() throws Exception{
        return typeService.getAll();
    }
}

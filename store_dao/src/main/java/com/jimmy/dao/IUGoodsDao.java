package com.jimmy.dao;

import com.jimmy.domain.UGoods;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IUGoodsDao {

    @Select("select * from u_goods")
    List<UGoods> getAll() throws Exception;

    @Select("select * from u_goods where id = #{id}")
    UGoods getById(Integer id) throws Exception;

    @Select("select * from u_goods where name like #{name}")
    List<UGoods> getByName(String name) throws Exception;

    @Select("select * from u_goods where typeid = #{typeId}")
    List<UGoods> getByTypeId(Integer typeId) throws Exception;

    @Select("select * from u_goods where name like #{text} or u_goods.desc like #{text} or content like #{text}")
    List<UGoods> getSearch(String text) throws Exception;

    @Select("select * from u_goods where order by clicked desc limit 8")
    List<UGoods> getHotGoods() throws Exception;

    @Select("select * from u_goods where is_recommend = 1")
    List<UGoods> getRecommendedGoods() throws Exception;
}

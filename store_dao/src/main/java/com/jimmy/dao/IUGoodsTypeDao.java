package com.jimmy.dao;

import com.jimmy.domain.UGoodsType;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IUGoodsTypeDao {

    @Select("select * from u_goodstype")
    List<UGoodsType> getAll() throws Exception;

    @Select("select * from u_goodstype where parent = #{parent}")
    List<UGoodsType> getChildren(Integer parent) throws Exception;

    @Insert("insert into u_goodstype(name, parent, url) values(#{name} #{parent}, #{url})")
    void addGoodsType(UGoodsType goodsType) throws Exception;

    @Select("select * from u_goodstype where parent = NULL")
    List<UGoodsType> getElderParent() throws Exception;
}

package com.jimmy.dao;

import com.jimmy.domain.UComment;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IUCommentDao {

    @Select("select * from u_comment")
    List<UComment> getAll() throws Exception;

    @Select("select * from u_comment where id = #{id}")
    UComment getById(Integer id) throws Exception;

    @Select("select * from u_comment where userid = #{userid}")
    List<UComment> getByUserId(Integer userid) throws Exception;

    @Select("select * from u_comment where goodsid = #{goodsid}")
    List<UComment> getByGoodsId(Integer goodsid) throws Exception;

    @Insert("insert into u_comment(userid, goodsid, content, date, replyid) values(#{userid}, #{goodsid}, #{content}, #{date}, #{replyid})")
    void addComment(UComment comment) throws Exception;


}

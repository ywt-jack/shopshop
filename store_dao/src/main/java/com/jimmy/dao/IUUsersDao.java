package com.jimmy.dao;

import com.jimmy.domain.UUsers;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface IUUsersDao {

    @Select("select * from u_users where email = #{email}")
    UUsers findByEmail(String email) throws Exception;

    @Select("select * from u_users where telephone = #{telephone}")
    UUsers findByTelephone(String telephone) throws Exception;

    @Select("select * from u_users where id = #{id}")
    UUsers findById(Integer id) throws Exception;

    @Insert("insert into u_users" +
            "(username, password, telephone, email, head_img, gender, address, role, date, is_ban) values" +
            "(#{username},#{password}, #{telephone}, #{email}, #{head_img}, #{gender}, #{address}, #{role}, #{date}, #{is_ban})")
    Integer save(UUsers users) throws Exception;

    @Update("update u_users set" +
            "username = #{username}," +
            "password = #{password}," +
            "telephone = #{telephone}," +
            "email = #{email}," +
            "head_img = #{head_img}," +
            "gender = #{gender}," +
            "address = #{address}," +
            "role = #{role}," +
            "date = #{date}," +
            "is_ban = #{is_ban}" +
            "where id = #{id}")
    Integer update(UUsers users) throws Exception;
}

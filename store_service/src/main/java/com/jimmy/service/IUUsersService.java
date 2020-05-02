package com.jimmy.service;

import com.jimmy.domain.UUsers;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface IUUsersService extends UserDetailsService{

    UUsers findById(Integer id) throws Exception;

    UUsers findByEmail(String email) throws Exception;

    UUsers findByTelephone(String telephone) throws Exception;

    Integer update(UUsers users) throws Exception;

    Integer register(UUsers users) throws Exception;

    Integer saveOrUpdate(UUsers users) throws Exception;
}

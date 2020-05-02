package com.jimmy.service.impl;

import com.jimmy.dao.IUUsersDao;
import com.jimmy.domain.UUsers;
import com.jimmy.service.IUUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service("userService")
@Transactional
public class UUsersServiceImpl implements IUUsersService {

    @Autowired
    IUUsersDao usersDao;

    @Override
    public Integer saveOrUpdate(UUsers users) throws Exception {
        return users.getId() == null ? usersDao.save(users) : usersDao.update(users);
    }

    @Override
    public Integer update(UUsers users) throws Exception {
        return null;
    }

    @Override
    public Integer register(UUsers users) throws Exception {
        return null;
    }

    @Override
    public UUsers findById(Integer id) throws Exception {
        return usersDao.findById(id);
    }

    @Override
    public UUsers findByEmail(String email) throws Exception {
        return usersDao.findByEmail(email);
    }

    @Override
    public UUsers findByTelephone(String telephone) throws Exception {
        return usersDao.findByTelephone(telephone);
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {

        UUsers users;
        User user = null;

        try {
            if(s.contains("@")){
                users = usersDao.findByEmail(s);
                user = new User(users.getEmail(), users.getPassword(), getAuthority(users.getRole()));
            }else{
                users = usersDao.findByTelephone(s);
                user = new User(users.getTelephone(), users.getPassword(), getAuthority(users.getRole()));
            }

        }catch (Exception e){
            e.printStackTrace();
        }

        return user;
    }

    private List<SimpleGrantedAuthority> getAuthority(String role){
        List<SimpleGrantedAuthority> list = new ArrayList<>();
        String[] roles = role.split(",");

        for (int i = 0; i <= roles.length; i++){
            list.add(new SimpleGrantedAuthority("ROLE_"+roles[i]));
        }

        return list;
    }
}


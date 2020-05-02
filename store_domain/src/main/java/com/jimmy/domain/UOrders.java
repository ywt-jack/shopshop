package com.jimmy.domain;


import com.jimmy.utils.DateUtils;

import java.util.Date;

public class UOrders {

    private Integer id;
    private UUsers users;
    private UGoods goods;
    private Date orderTime;
    private Date receiveTime;
    private String orderTimeStr;
    private String receiveTimeStr;
    private Integer isCart;
    private Integer isPaid;
    private Integer isCancel;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public UUsers getUsers() {
        return users;
    }

    public void setUsers(UUsers users) {
        this.users = users;
    }

    public UGoods getGoods() {
        return goods;
    }

    public void setGoods(UGoods goods) {
        this.goods = goods;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public Date getReceiveTime() {
        return receiveTime;
    }

    public void setReceiveTime(Date receiveTime) {
        this.receiveTime = receiveTime;
    }

    public String getOrderTimeStr() {
        orderTimeStr = DateUtils.date2String(orderTime, "yyyy-MM-dd HH:mm:ss");
        return orderTimeStr;
    }

    public void setOrderTimeStr(String orderTimeStr) {
        this.orderTimeStr = orderTimeStr;
    }

    public String getReceiveTimeStr() {
        receiveTimeStr = DateUtils.date2String(receiveTime, "yyyy-MM-dd HH:mm:ss");
        return receiveTimeStr;
    }

    public void setReceiveTimeStr(String receiveTimeStr) {
        this.receiveTimeStr = receiveTimeStr;
    }

    public Integer getIsCart() {
        return isCart;
    }

    public void setIsCart(Integer isCart) {
        this.isCart = isCart;
    }

    public Integer getIsPaid() {
        return isPaid;
    }

    public void setIsPaid(Integer isPaid) {
        this.isPaid = isPaid;
    }

    public Integer getIsCancel() {
        return isCancel;
    }

    public void setIsCancel(Integer isCancel) {
        this.isCancel = isCancel;
    }
}

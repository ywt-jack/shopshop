package com.jimmy.domain;

import com.jimmy.utils.DateUtils;

import java.util.Date;

public class UGoodsSell {

    private Integer id;
    private Integer goodsid;
    private Date date;
    private String dateStr;
    private Integer sell;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getSell() {
        return sell;
    }

    public void setSell(Integer sell) {
        this.sell = sell;
    }

    public String getDateStr() {
        dateStr = DateUtils.date2String(date, "yyyy-MM-dd");
        return dateStr;
    }

    public void setDateStr(String dateStr) {
        this.dateStr = dateStr;
    }
}

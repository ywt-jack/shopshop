package com.jimmy.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {

    /**
     *
     * @param date Date类型日期数据
     * @param format 转换格式
     * @return
     */
    public static String date2String(Date date, String format){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
        String dateStr = simpleDateFormat.format(date);

        return dateStr;
    }

    /**
     *
     * @param date 转换的字符串日期格式
     * @param format 转换格式（要和date的对应，避免出错）
     * @return
     * @throws ParseException
     */
    public static Date string2Date(String date, String format) throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
        Date dateRaw = simpleDateFormat.parse(date);

        return dateRaw;
    }

    public static Date getDateNowRaw(){
        Date date = new Date();
        return date;
    }

    public static String getDateNowStr(String format){
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
        String dateStr = simpleDateFormat.format(date);

        return dateStr;
    }
}

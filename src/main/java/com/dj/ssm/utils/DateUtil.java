package com.dj.ssm.utils;

import java.util.Calendar;
import java.util.Date;

/**
 * 时间工具类
 *
 * @author dj
 */
public class DateUtil {

    /**
     * @param temp 加减时间
     * @param type 加减类型 年 月  日  时 分 秒 <br />
     *             Calendar.MINUTE      分钟相加减 <br />
     *             Calendar.HOUR       小时相加减 <br />
     *             Calendar.HOUR_OF_DAY    天 <br />
     * @return
     */
    public static Date addDate(Integer temp, Integer type) {
        Date date = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(type, temp);
        return calendar.getTime();
    }
}

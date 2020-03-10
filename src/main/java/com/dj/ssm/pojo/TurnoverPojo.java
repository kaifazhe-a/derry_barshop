package com.dj.ssm.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 店内营业额表
 */
@Data
@Accessors(chain = true)
@TableName("barber_turnover")
public class TurnoverPojo {

    /**
     * '员工id'
     */
    private Integer staffId;


    /**
     * 消费项目
     */
    private String project;

    /**
     * 消费时间
     */
    @DateTimeFormat(pattern = "yyyy年MM月dd日 HH:mm:ss")
    @JsonFormat(pattern = "yyyy年MM月dd日 HH:mm:ss", timezone = "UTF-8")
    private Date payTime;

    /**
     * 消费金额
     */
    private Double payPrice;

    /**
     * 消费方式（1充值,2会员消费,3散户消费）
     */
    private Integer payType;

    /**
     * dict消费方式
     */
    private String dictName;

    /**
     * 工作时间
     */
    private Integer workTime;



}

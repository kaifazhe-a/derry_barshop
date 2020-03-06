package com.dj.ssm.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

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
     * '会员卡id'
     */
    private Integer vipCodeId;

    /**
     * 消费时间
     */
    private Date payTime;

    /**
     * 消费金额
     */
    private Double payPrice;

    /**
     * 消费方式（1充值,2会员消费,3散户消费）
     */
    private Integer payType;


}

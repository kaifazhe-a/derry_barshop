package com.dj.ssm.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * vip会员信息表
 */
@Data
@Accessors(chain = true)
@TableName("barber_vip_card")
public class VipCardPojo {

    /**
     * 主键 ID  会员卡id
     */
    @TableId(type = IdType.AUTO) // 表示主键 自增的
    private Integer id;

    /**
     * 会员卡号(手机号)
     */
    private String vipCardNumber;

    /**
     * 会员姓名
     */
    private String vipName;

    /**
     * 会员卡密码
     */
    private String vipPassword;

    /**
     * 会员等级（1贵宾卡充值0.5k,2金卡充值5K,3钻石卡充值10K）
     */
    private Double vipBalance;

    /**
     * 会员卡余额
     */
    private Integer vipGrade;

    /**
     * 累计充值
     */
    private Double priceSum;

    /**
     * 卡状态(1正常,0注销)
     */
    private Integer vipStatus;


}

package com.dj.ssm.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 理发项目pojo
 */
@Data
@Accessors(chain = true)
@TableName("barber_itme")
public class ItmePojo {

    /**
     * 主键ID
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 角色Id
     */
    private Integer roleId;

    /**
     * 项目名称
     */
    private String itmeName;

    /**
     * 项目价格
     */
    private Double itmePrice;

    /**
     * 项目时间
     */
    private Integer itmeTime;

}

package com.dj.ssm.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

import java.beans.Transient;
import java.util.Date;

/**
 * 员工信息表pojo
 */
@Data
@Accessors(chain = true)
@TableName("barber_staff")
public class StaffPojo {

    /**
     * id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 账号(手机号/邮箱)
     */
    private String staffPhoneEmail;

    /**
     * 员工姓名
     */
    private String staffName;

    /**
     * 密码
     */
    private String staffPassword;

    /**
     * 手机号/邮箱验证码
     */
    private String phoneEmailCode;

    /**
     * 员工头像
     */
    private String staffImg;

    /**
     * 状态(1空闲，2工作，3请假, 4有预约)
     */
    private Integer staffStatus;

    /**
     * 员工入职时间
     */
    private Date creationTime;

    /**
     * 员工工作时间
     */
    private Date workTime;

    /**
     * 密码盐
     */
    private String  salt;

    /**
     * 角色ID
     */
    @TableField(exist = false)
    private Integer roleId;
}

package com.dj.ssm.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

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
     * 职位级别(1店长,2经理,3收银员,4首席设计师,5资深设计师,6学徒)
     */
    private Integer staffLevel;

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
     * 员工信息修改时间
     */
    private Date updateTime;


}

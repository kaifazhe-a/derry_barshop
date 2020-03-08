package com.dj.ssm.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 员工信息表pojo
 */
@Data
public class StaffBo {

    /**
     * id
     */
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
     * 级别展示（连表）
     */
    private String roleName;

    /**
     * 员工头像
     */
    private String staffImg;

    /**
     * 状态(1空闲，2工作，3请假, 4有预约)
     */
    private Integer staffStatus;

    /**
     * 项目金额
     */
    private Integer itmePrice;

    /**
     * 状态展示（连表）
     */
    private String baseStaffStatus;

    /**
     * 员工入职时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date creationTime;

    /**
     * 员工信息修改时间
     */
    private Date updateTime;


}

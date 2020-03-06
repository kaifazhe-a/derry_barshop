package com.dj.ssm.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 员工角色关联表pojo
 */
@Data
@Accessors(chain = true)
@TableName("barber_staff_role")
public class StaffRolePojo {

    /**
     * 员工id
     */
    private Integer staffId;

    /**
     * 角色id
     */
    private Integer roleId;



}

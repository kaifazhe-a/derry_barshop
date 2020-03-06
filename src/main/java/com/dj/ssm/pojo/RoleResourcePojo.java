package com.dj.ssm.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 角色资源关联表pojo
 */
@Data
@Accessors(chain = true)
@TableName("barber_role_resource")
public class RoleResourcePojo {

    /**
     * 角色id
     */
    private Integer roleId;

    /**
     * 资源id
     */
    private Integer resourceId;



}

package com.dj.ssm.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * 资源表pojo
 */
@Data
@Accessors(chain = true)
@TableName("barber_resource")
public class ResourcePojo {

    /**
     * 资源id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 资源名
     */
    private String resourceName;

    /**
     * 资源路径PATH
     */
    private String url;

    /**
     * 父级id
     */
    private Integer pId;

    /**
     * 资源类型: 1菜单路径; 2按钮
     */
    private String resourceType;

    /**
     * 资源编号
     */
    private String resourceCode;


}

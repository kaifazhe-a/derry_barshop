package com.dj.ssm.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 字典表pojo
 */
@Data
@Accessors(chain = true)
@TableName("barber_dict")
public class DictPojo {

    /**
     * 字典id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 字典名
     */
    private String dictName;

    /**
     * 父级id
     */
    private Integer pId;



}

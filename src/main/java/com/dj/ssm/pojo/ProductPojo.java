package com.dj.ssm.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * 商品表pojo
 */
@Data
@Accessors(chain = true)
@TableName("barber_product")
public class ProductPojo {

    /**
     * 商品id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 商品名
     */
    private String proName;

    /**
     * 商品图片
     */
    private String proImg;

    /**
     * 商品价格
     */
    private Double proPrice;

    /**
     * 商品功效
     */
    private String proEffect;

    /**
     * 商品状态(0下架, 1上架)
     */
    private Integer proStatus;


}

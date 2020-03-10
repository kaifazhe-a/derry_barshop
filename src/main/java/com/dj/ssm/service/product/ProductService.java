package com.dj.ssm.service.product;

import com.baomidou.mybatisplus.extension.service.IService;
import com.dj.ssm.pojo.ProductPojo;

import java.util.List;

/**
 * 商品表
 */
public interface ProductService extends IService<ProductPojo> {

    /**
     * 商品信息展示
     * @return
     */
    List<ProductPojo> findProductAll() throws Exception;

    /**
     * 商品添加
     * @param
     */
    void addProduct(ProductPojo productPojo) throws Exception;

    /**
     * 查询商品详情(购买商品)
     * @param id
     */
    ProductPojo findProductById(Integer id) throws Exception;


}

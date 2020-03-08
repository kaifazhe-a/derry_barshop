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
     * 根据商品ID查询
     * @param id
     * @return
     * @throws Exception
     */
    ProductPojo findById(Integer id)throws Exception;
}

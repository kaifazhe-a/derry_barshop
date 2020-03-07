package com.dj.ssm.service.product.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dj.ssm.mapper.product.ProductMapper;
import com.dj.ssm.pojo.ProductPojo;
import com.dj.ssm.service.product.ProductService;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 商品表serviceImpl
 */
@Service
public class ProductServiceImpl extends ServiceImpl<ProductMapper, ProductPojo> implements ProductService {

    /**
     * 查询项目所以信息
     * @return
     */
    @Override
    public List<ProductPojo> findProductAll() throws Exception {
        List<ProductPojo> list = this.list();
        return list;
    }

    /**
     * 商品添加
     * @param productPojo
     */
    @Override
    public void addProduct(ProductPojo productPojo) throws Exception {
        this.save(productPojo);
    }


}

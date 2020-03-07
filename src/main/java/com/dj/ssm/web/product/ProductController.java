package com.dj.ssm.web.product;

import com.dj.ssm.config.ResultModel;
import com.dj.ssm.pojo.ItmePojo;
import com.dj.ssm.pojo.ProductPojo;
import com.dj.ssm.service.itme.ItmeService;
import com.dj.ssm.service.product.ProductService;
import com.dj.ssm.utils.QiNiuYunUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 售卖商品Controller
 */
@RestController
@RequestMapping("/product/")
public class ProductController {

    @Autowired
    private ProductService productService;


    /**
     * 商品展示
     * @return
     */
    @RequestMapping("show")
    public ResultModel<Object> show() throws Exception {
        Map<String, Object> map = new HashMap();
        List<ProductPojo> list = productService.findProductAll();
        map.put("list", list);
        return new ResultModel<>().success(map);
    }

    /**
     * 商品添加
     */
    @RequestMapping("add")
    public ResultModel<Object> add(ProductPojo productPojo) throws Exception {
        productService.addProduct(productPojo);
        return new ResultModel<>().success();
    }


}

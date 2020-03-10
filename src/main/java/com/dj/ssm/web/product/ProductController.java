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
    public ResultModel<Object> add(MultipartFile file, ProductPojo productPojo) throws Exception {
        // 上传图片
        String upload = QiNiuYunUtil.upload(file);

        if ("1".equals(upload)) {
            new ResultModel<>().error("服务器在开小差，请稍后再试1");
        }
        // 给商品表添加值
        productPojo.setProImg(upload);
        productService.addProduct(productPojo);
        return new ResultModel<>().success();
    }



}

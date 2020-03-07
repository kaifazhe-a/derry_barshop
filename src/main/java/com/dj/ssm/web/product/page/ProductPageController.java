package com.dj.ssm.web.product.page;

import com.dj.ssm.config.ResultModel;
import com.dj.ssm.service.product.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 售卖商品PageController
 */
@Controller
@RequestMapping("/product/")
public class ProductPageController {

    /**
     * to 商品展示
     * @return
     */
    @RequestMapping("toShow")
    public String toShow() {
        return "product/show";
    }

    /**
     * to 商品添加
     */
    @RequestMapping("toAdd")
    public String toAdd() {
        return "product/add";
    }


}

package com.dj.ssm.web.product.page;

import com.dj.ssm.config.ResourceConstant;
import com.dj.ssm.config.ResultModel;
import com.dj.ssm.pojo.ProductPojo;
import com.dj.ssm.service.product.ProductService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 售卖商品PageController
 */
@Controller
@RequestMapping("/product/")
public class ProductPageController {

    /**
     * 注入商品api
     */
    @Autowired
    private ProductService productService;

    /**
     * to 商品展示
     * @return
     */
    @RequestMapping("toShow")
    @RequiresPermissions(ResourceConstant.PRODUCT_PATH)
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

    /**
     * 查询商品详情(商品购买)
     */
    @RequestMapping("/toBuyProduct")
    public String toBuyProduct(Integer id, Model model) throws Exception {
        ProductPojo product = productService.findProductById(id);
        model.addAttribute("pro", product);
        return "product/buy_product";
    }


}

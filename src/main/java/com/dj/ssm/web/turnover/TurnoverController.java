package com.dj.ssm.web.turnover;

import com.dj.ssm.config.ResultModel;
import com.dj.ssm.pojo.ProductPojo;
import com.dj.ssm.pojo.TurnoverPojo;
import com.dj.ssm.service.product.ProductService;
import com.dj.ssm.service.turnover.TurnoverService;
import com.dj.ssm.utils.QiNiuYunUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 营业额
 * Controller
 */
@RestController
@RequestMapping("/turnover/")
public class TurnoverController {

    @Autowired
    private TurnoverService turnoverService;

    /**
     * 营业额展示
     * @return
     */
    @RequestMapping("show")
    public ResultModel<Object> show() throws Exception {
        Map<String, Object> map = new HashMap();
        List<TurnoverPojo> list = turnoverService.findTurnoverAll();
        map.put("list", list);
        return new ResultModel<>().success(map);
    }



}

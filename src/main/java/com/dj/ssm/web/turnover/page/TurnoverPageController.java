package com.dj.ssm.web.turnover.page;

import com.dj.ssm.config.ResultModel;
import com.dj.ssm.pojo.ProductPojo;
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
 * 营业额展示
 * PageController
 */
@RestController
@RequestMapping("/turnover/")
public class TurnoverPageController {

    @Autowired
    private TurnoverService turnoverService;

    /**
     * to 营业额展示
     */
    @RequestMapping("toShow")
    public String toShow() {
        return "turnover/show";
    }


}

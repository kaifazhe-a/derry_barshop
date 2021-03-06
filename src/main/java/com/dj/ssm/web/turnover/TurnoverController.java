package com.dj.ssm.web.turnover;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.dj.ssm.config.ResultModel;
import com.dj.ssm.pojo.ProductPojo;
import com.dj.ssm.pojo.StaffPojo;
import com.dj.ssm.pojo.TurnoverPojo;
import com.dj.ssm.service.product.ProductService;
import com.dj.ssm.service.turnover.TurnoverService;
import com.dj.ssm.utils.DateUtil;
import com.dj.ssm.utils.QiNiuYunUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;
import java.util.*;

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
    public ResultModel<Object> show(Integer pageNo) throws Exception {
        IPage<TurnoverPojo> page = new Page();
        page.setCurrent(pageNo); // 当前页数
        page.setSize(2);
        List<TurnoverPojo> list = turnoverService.findTurnoverAll();
        return new ResultModel<>().success(list);
    }

    /**
     * 项目消费
     * @return
     */
    @RequestMapping("addTimeTurnover")
    public ResultModel<Object> timeTurnover(Integer staffId, Double itmePrice, String itmeName
            , Integer payType, Integer itmeTime, HttpSession session) throws Exception {
        TurnoverPojo turnoverPojo = new TurnoverPojo();
        Date date = DateUtil.addDate(itmeTime, Calendar.MINUTE);
        turnoverPojo.setPayPrice(itmePrice);
        turnoverPojo.setStaffId(staffId);
        turnoverPojo.setPayTime(new Date());
        turnoverPojo.setProject(itmeName);
        turnoverPojo.setPayType(payType);
        turnoverService.addTimeTurnover(turnoverPojo, date);
        return new ResultModel<>().success();
    }

    /**
     * 商品消费
     */
    @RequestMapping("addTurnoverBuyProduct")
    public ResultModel<Object> addTurnoverBuyProduct(ProductPojo productPojo, Integer proCount) throws Exception {
        turnoverService.addTurnoverBuyProduct(productPojo, proCount);
        return new ResultModel<>().success();
    }


}

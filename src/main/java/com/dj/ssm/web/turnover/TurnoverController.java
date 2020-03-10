package com.dj.ssm.web.turnover;

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
    public ResultModel<Object> show() throws Exception {
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
        turnoverPojo.setProject(itmeName);
        turnoverPojo.setPayType(payType);
        turnoverPojo.setPayTime(new Date());
        turnoverService.addTimeTurnover(turnoverPojo, date);
        return new ResultModel<>().success();
    }

    /**
     * 商品消费
     */
    @RequestMapping("addTurnoverBuyProduct")
    public ResultModel<Object> addTurnoverBuyProduct(ProductPojo productPojo) throws Exception {
        if(StringUtils.isEmpty(productPojo.getProCount())) {
            return new ResultModel<>().error("请填写购买数量");
        }
        turnoverService.addTurnoverBuyProduct(productPojo);
        return new ResultModel<>().success();
    }


}

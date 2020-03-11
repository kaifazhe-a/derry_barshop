package com.dj.ssm.service.turnover;

import com.baomidou.mybatisplus.extension.service.IService;
import com.dj.ssm.pojo.ProductPojo;
import com.dj.ssm.pojo.TurnoverPojo;

import java.util.Date;
import java.util.List;

/**
 * 营业额表
 */
public interface TurnoverService extends IService<TurnoverPojo> {

    /**
     * 营业额展示
     * @return
     */
    List<TurnoverPojo> findTurnoverAll() throws Exception;

    /**
     * 项目消费
     * @return
     */
    void addTimeTurnover(TurnoverPojo turnoverPojo, Date date) throws Exception;

    /**
     * 商品消费
     * @param productPojo
     */
    void addTurnoverBuyProduct(ProductPojo productPojo, Integer proCount) throws Exception;


}

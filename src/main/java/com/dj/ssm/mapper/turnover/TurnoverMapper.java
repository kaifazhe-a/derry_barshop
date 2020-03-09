package com.dj.ssm.mapper.turnover;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.dj.ssm.pojo.TurnoverPojo;
import org.springframework.dao.DataAccessException;

import java.util.List;

/**
 * 营业额 mapper
 */
public interface TurnoverMapper extends BaseMapper<TurnoverPojo> {

    /**
     * 营业额展示
     * @return
     */
    List<TurnoverPojo> findTurnoverAll() throws DataAccessException;


}

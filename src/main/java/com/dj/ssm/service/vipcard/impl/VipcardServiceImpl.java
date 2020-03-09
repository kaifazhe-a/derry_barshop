package com.dj.ssm.service.vipcard.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dj.ssm.mapper.vipcard.Vipcardmapper;
import com.dj.ssm.pojo.VipCardPojo;
import com.dj.ssm.service.vipcard.VipcardService;
import org.springframework.stereotype.Service;

@Service
public class VipcardServiceImpl extends ServiceImpl<Vipcardmapper, VipCardPojo> implements VipcardService {
}

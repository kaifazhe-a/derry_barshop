package com.dj.ssm;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@MapperScan("com.dj.ssm.mapper") // 全局扫描
@EnableTransactionManagement // 开启注解事务
public class DerryBarshopApplication {

    public static void main(String[] args) {
        SpringApplication.run(DerryBarshopApplication.class, args);
    }

}

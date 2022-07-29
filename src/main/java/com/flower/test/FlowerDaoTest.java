package com.flower.test;

import com.flower.dao.FlowerDao;
import com.flower.pojo.Flower;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.math.BigDecimal;

public class FlowerDaoTest {

    private FlowerDao flowerDao;
    @Test
    public void testAdd() throws Exception {
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        SqlSessionFactoryBean sessionFactoryBean = (SqlSessionFactoryBean) ac.getBean("sqlSessionFactory");
        SqlSessionFactory sessionFactory = sessionFactoryBean.getObject();
        SqlSession session = sessionFactory.openSession();
        flowerDao = session.getMapper(FlowerDao.class);
        Flower flower = new Flower(12,"yiluyouni","加","aini",new BigDecimal(123.3),"langman","xie","sss",null);
        flowerDao.addFlower(flower);
    }
}

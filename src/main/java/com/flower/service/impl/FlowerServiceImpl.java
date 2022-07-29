package com.flower.service.impl;
import com.flower.dao.FlowerDao;
import com.flower.pojo.Flower;
import com.flower.pojo.Page;
import com.flower.service.FlowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service("flowerService")
public class FlowerServiceImpl implements FlowerService {

    @Autowired
    private FlowerDao flowerDao;

    @Transactional(propagation= Propagation.SUPPORTS,readOnly=true)
    @Override
    public Page<Flower> pageByPrice(int pageNo, int pageSize, int min, int max) {
        Page<Flower> page = new Page<Flower>();

        page.setPageSize(pageSize);

        Integer pageTotalCount = flowerDao.querryForPageTotalCountByPrice(min,max);
        page.setPageTotalCount(pageTotalCount);

        Integer pageTotal = pageTotalCount / pageSize;
        if(pageTotalCount % pageSize > 0){
            pageTotal += 1;
        }
        page.setPageTotal(pageTotal);
        page.setPageNo(pageNo);

        int begin = 0;
        begin = (page.getPageNo()-1) * pageSize;
        List<Flower> items = flowerDao.querryForPageItemsByPrice(begin,pageSize,min,max);
        page.setItems(items);
        return page;
    }


    @Transactional(propagation= Propagation.REQUIRED,readOnly=false)
    @Override
    public void addFlower(Flower flower) {
        flowerDao.addFlower(flower);
    }

    @Transactional(propagation= Propagation.REQUIRED,readOnly=false)
    @Override
    public void deleteFlowerById(Integer id) {
        flowerDao.deleteFlowerById(id);
    }

    @Transactional(propagation= Propagation.SUPPORTS,readOnly=true)
    @Override
    public Integer querryFlowerIdByOthers(Flower flower) {
        Flower flower1 = flowerDao.querryFlowerIdByOthers(flower);
        return flower1.getId();
    }

    @Transactional(propagation= Propagation.REQUIRED,readOnly=false)
    @Override
    public void updateFlower(Flower flower) {
        flowerDao.updateFlower(flower);
    }


    @Transactional(propagation= Propagation.SUPPORTS,readOnly=true)
    @Override
    public List<Flower> querryNightFlowersByFlowerKind(String flowerKind) {
       return flowerDao.querryNightFlowersByFlowerKind(flowerKind);
    }


    @Transactional(propagation= Propagation.SUPPORTS,readOnly=true)
    @Override
    public Page<Flower> page(int pageNo, int pageSize) {
        Page<Flower> page = new Page<Flower>();
        page.setPageSize(pageSize);
        Integer pageTotalCount = flowerDao.querryForPageTotalCount();
        page.setPageTotalCount(pageTotalCount);
        Integer pageTotal = pageTotalCount / pageSize;
        if(pageTotalCount % pageSize > 0){
            pageTotal += 1;
        }
        page.setPageTotal(pageTotal);
        page.setPageNo(pageNo);
        int begin = 0;
        begin = (page.getPageNo()-1) * pageSize;
        List<Flower> items = flowerDao.querryForPageItems(begin,pageSize);
        page.setItems(items);
        return page;
    }

    @Transactional(propagation= Propagation.SUPPORTS,readOnly=true)
    @Override
    public Flower querryFlowerById(Integer id) {
        return flowerDao.querryFlowerById(id);
    }

    @Transactional(propagation= Propagation.SUPPORTS,readOnly=true)
    @Override
    public List<Flower> querryFlowers() {
        return flowerDao.querryFlowers();
    }
}


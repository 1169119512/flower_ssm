package com.flower.dao;

import com.flower.pojo.Flower;
import org.apache.ibatis.annotations.*;
import org.junit.runners.Parameterized;

import java.util.List;

public interface FlowerDao {

    public int addFlower(Flower Flower);

    public int deleteFlowerById(Integer id);

    public int updateFlower(Flower Flower);


    public Flower querryFlowerById(Integer id);


    public List<Flower> querryFlowers();


    public Flower querryFlowerIdByOthers(Flower flower);

    
    Integer querryForPageTotalCount();


    List<Flower> querryForPageItems(int begin, int pageSize);

    Integer querryForPageTotalCountByPrice(int min, int max);


    List<Flower> querryForPageItemsByPrice( int begin, int pageSize, int min, int max);

    Integer querryForPageTotalCountByFlowerKind(String flowerKind);

    List<Flower> querryNightFlowersByFlowerKind(String flowerKind);

}

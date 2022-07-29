package com.flower.service;

import com.flower.pojo.Flower;
import com.flower.pojo.Page;

import java.util.List;

public interface FlowerService {
    public void addFlower(Flower flower);

    public void deleteFlowerById(Integer id);

    public void updateFlower(Flower flower);

    public Flower querryFlowerById(Integer id);

    public List<Flower> querryFlowers();

    Page<Flower> page(int pageNo, int pageSize);

    Page<Flower> pageByPrice(int pageNo, int pageSize, int min, int max);

    List<Flower> querryNightFlowersByFlowerKind(String flowerKind);

    public Integer querryFlowerIdByOthers(Flower flower);
}

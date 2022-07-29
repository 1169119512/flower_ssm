package com.flower.pojo;

import java.math.BigDecimal;

public class Flower {

    private Integer id;
    private String flower_name;
    private String flower_kind;
    private String flower_language;
    private BigDecimal price;
    private String material;
    private String star;
    private String pack;
    private String img_path = "images/all_flower/flower_default/";

    public Flower() {
    }

    public Flower(Integer id, String flower_name, String flower_kind, String flower_language, BigDecimal price, String material, String star, String pack, String img_path) {
        this.id = id;
        this.flower_name = flower_name;
        this.flower_kind = flower_kind;
        this.flower_language = flower_language;
        this.price = price;
        this.material = material;
        this.star = star;
        this.pack = pack;
        if(img_path != null || "".equals(img_path))
            this.img_path = img_path;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFlower_name() {
        return flower_name;
    }

    public void setFlower_name(String flower_name) {
        this.flower_name = flower_name;
    }

    public String getFlower_kind() {
        return flower_kind;
    }

    public void setFlower_kind(String flower_kind) {
        this.flower_kind = flower_kind;
    }

    public String getFlower_language() {
        return flower_language;
    }

    public void setFlower_language(String flower_language) {
        this.flower_language = flower_language;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getStar() {
        return star;
    }

    public void setStar(String star) {
        this.star = star;
    }

    public String getPack() {
        return pack;
    }

    public void setPack(String pack) {
        this.pack = pack;
    }

    public String getImg_path() {
        return img_path;
    }

    public void setImg_path(String img_path) {
        this.img_path = img_path;
    }

    @Override
    public String toString() {
        return "Flower{" +
                "id=" + id +
                ", flower_name='" + flower_name + '\'' +
                ", flower_kind='" + flower_kind + '\'' +
                ", flower_language='" + flower_language + '\'' +
                ", price=" + price +
                ", material='" + material + '\'' +
                ", star='" + star + '\'' +
                ", pack='" + pack + '\'' +
                ", img_path='" + img_path + '\'' +
                '}';
    }
}

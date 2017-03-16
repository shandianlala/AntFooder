package com.sdll.antfooder.pojo;

public class Food {
    private String foodId;

    private String menuId;

    private String foodName;

    private Double foodPrice;

    private String foodDescribe;

    private String foodPhoto;

    private String supplyBeginDate;

    private String supplyEndDate;

    private String supplyBeginTime;

    private String supplyEndTime;

    private Integer foodState;

    private String foodOther;

    public String getFoodId() {
        return foodId;
    }

    public void setFoodId(String foodId) {
        this.foodId = foodId == null ? null : foodId.trim();
    }

    public String getMenuId() {
        return menuId;
    }

    public void setMenuId(String menuId) {
        this.menuId = menuId == null ? null : menuId.trim();
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName == null ? null : foodName.trim();
    }

    public Double getFoodPrice() {
        return foodPrice;
    }

    public void setFoodPrice(Double foodPrice) {
        this.foodPrice = foodPrice;
    }

    public String getFoodDescribe() {
        return foodDescribe;
    }

    public void setFoodDescribe(String foodDescribe) {
        this.foodDescribe = foodDescribe == null ? null : foodDescribe.trim();
    }

    public String getFoodPhoto() {
        return foodPhoto;
    }

    public void setFoodPhoto(String foodPhoto) {
        this.foodPhoto = foodPhoto == null ? null : foodPhoto.trim();
    }

    public String getSupplyBeginDate() {
        return supplyBeginDate;
    }

    public void setSupplyBeginDate(String supplyBeginDate) {
        this.supplyBeginDate = supplyBeginDate == null ? null : supplyBeginDate.trim();
    }

    public String getSupplyEndDate() {
        return supplyEndDate;
    }

    public void setSupplyEndDate(String supplyEndDate) {
        this.supplyEndDate = supplyEndDate == null ? null : supplyEndDate.trim();
    }

    public String getSupplyBeginTime() {
        return supplyBeginTime;
    }

    public void setSupplyBeginTime(String supplyBeginTime) {
        this.supplyBeginTime = supplyBeginTime == null ? null : supplyBeginTime.trim();
    }

    public String getSupplyEndTime() {
        return supplyEndTime;
    }

    public void setSupplyEndTime(String supplyEndTime) {
        this.supplyEndTime = supplyEndTime == null ? null : supplyEndTime.trim();
    }

    public Integer getFoodState() {
        return foodState;
    }

    public void setFoodState(Integer foodState) {
        this.foodState = foodState;
    }

    public String getFoodOther() {
        return foodOther;
    }

    public void setFoodOther(String foodOther) {
        this.foodOther = foodOther == null ? null : foodOther.trim();
    }
}
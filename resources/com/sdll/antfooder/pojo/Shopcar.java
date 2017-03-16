package com.sdll.antfooder.pojo;

public class Shopcar {
    private String shopId;

    private String userId;

    private Food foodId;

    private int foodNum;

    private Double totalMoney;

    private Integer foodStatus;

    private String shopOther;

    public String getShopId() {
        return shopId;
    }

    public void setShopId(String shopId) {
        this.shopId = shopId == null ? null : shopId.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }



    public Food getFoodId() {
		return foodId;
	}

	public void setFoodId(Food foodId) {
		this.foodId = foodId;
	}



    public int getFoodNum() {
		return foodNum;
	}

	public void setFoodNum(int foodNum) {
		this.foodNum = foodNum;
	}

	public Double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(Double totalMoney) {
        this.totalMoney = totalMoney;
    }



    public Integer getFoodStatus() {
		return foodStatus;
	}

	public void setFoodStatus(Integer foodStatus) {
		this.foodStatus = foodStatus;
	}

	public String getShopOther() {
        return shopOther;
    }

    public void setShopOther(String shopOther) {
        this.shopOther = shopOther == null ? null : shopOther.trim();
    }
}
package com.sdll.antfooder.pojo;

public class OrderDetail {
    private String detailId;

    private String orderId;

    private String bookId;

    private Integer buyNum;

    private String restatus;

    private String userMsg;

    public String getDetailId() {
        return detailId;
    }

    public void setDetailId(String detailId) {
        this.detailId = detailId == null ? null : detailId.trim();
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId == null ? null : orderId.trim();
    }

    public String getBookId() {
        return bookId;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId == null ? null : bookId.trim();
    }

    public Integer getBuyNum() {
        return buyNum;
    }

    public void setBuyNum(Integer buyNum) {
        this.buyNum = buyNum;
    }

    public String getRestatus() {
        return restatus;
    }

    public void setRestatus(String restatus) {
        this.restatus = restatus == null ? null : restatus.trim();
    }

    public String getUserMsg() {
        return userMsg;
    }

    public void setUserMsg(String userMsg) {
        this.userMsg = userMsg == null ? null : userMsg.trim();
    }
}
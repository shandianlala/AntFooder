package com.sdll.antfooder.pojo;

public class Address {
    private String addressId;

    private String userId;

    private String addressProvince;

    private String addressCity;

    private String addressArea;

    private String addressStreet;

    private String addressfStatus;

    private String addressRecipients;

    private String addressPhone;

    public String getAddressId() {
        return addressId;
    }

    public void setAddressId(String addressId) {
        this.addressId = addressId == null ? null : addressId.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getAddressProvince() {
        return addressProvince;
    }

    public void setAddressProvince(String addressProvince) {
        this.addressProvince = addressProvince == null ? null : addressProvince.trim();
    }

    public String getAddressCity() {
        return addressCity;
    }

    public void setAddressCity(String addressCity) {
        this.addressCity = addressCity == null ? null : addressCity.trim();
    }

    public String getAddressArea() {
        return addressArea;
    }

    public void setAddressArea(String addressArea) {
        this.addressArea = addressArea == null ? null : addressArea.trim();
    }

    public String getAddressStreet() {
        return addressStreet;
    }

    public void setAddressStreet(String addressStreet) {
        this.addressStreet = addressStreet == null ? null : addressStreet.trim();
    }

    public String getAddressfStatus() {
        return addressfStatus;
    }

    public void setAddressfStatus(String addressfStatus) {
        this.addressfStatus = addressfStatus == null ? null : addressfStatus.trim();
    }

    public String getAddressRecipients() {
        return addressRecipients;
    }

    public void setAddressRecipients(String addressRecipients) {
        this.addressRecipients = addressRecipients == null ? null : addressRecipients.trim();
    }

    public String getAddressPhone() {
        return addressPhone;
    }

    public void setAddressPhone(String addressPhone) {
        this.addressPhone = addressPhone == null ? null : addressPhone.trim();
    }
}
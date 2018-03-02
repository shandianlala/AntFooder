package com.sdll.antfooder.pojo;

public class Menu {
    private String menuId;

    private String menuName;

    private String menuPhoto;

    private String menuType;

    private Integer menuState;

    private String menuOther;

    public String getMenuId() {
        return menuId;
    }
    
    public Menu (){ }
    
    public Menu(String menuId){this.menuId = menuId;}

    public void setMenuId(String menuId) {
        this.menuId = menuId == null ? null : menuId.trim();
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName == null ? null : menuName.trim();
    }

    public String getMenuPhoto() {
        return menuPhoto;
    }

    public void setMenuPhoto(String menuPhoto) {
        this.menuPhoto = menuPhoto == null ? null : menuPhoto.trim();
    }

    public String getMenuType() {
        return menuType;
    }

    public void setMenuType(String menuType) {
        this.menuType = menuType == null ? null : menuType.trim();
    }

    public Integer getMenuState() {
        return menuState;
    }

    public void setMenuState(Integer menuState) {
        this.menuState = menuState;
    }

    public String getMenuOther() {
        return menuOther;
    }

    public void setMenuOther(String menuOther) {
        this.menuOther = menuOther == null ? null : menuOther.trim();
    }
}
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.util.ArrayList;

/**
 *
 * @author QuyenPac
 */
public class Shopping {
    private Customer cus;
    private ArrayList<ShopDetail> shopList;

    public Shopping() {
        this(new Customer(), new ArrayList<ShopDetail>());
    }

    public Shopping(Customer cus, ArrayList<ShopDetail> shopList) {
        this.cus = cus;
        this.shopList = shopList;
    }

    public Customer getCus() {
        return cus;
    }

    public void setCus(Customer cus) {
        this.cus = cus;
    }

    public ArrayList<ShopDetail> getShopList() {
        return shopList;
    }

    public void setShopList(ArrayList<ShopDetail> shopList) {
        this.shopList = shopList;
    }
    
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author QuyenPac
 */
public class Animal {
    private int id;
    private String type;
    private String shortDesc;
    private String fullImgLink;
    private String thumb;
    private String fullDesc;
    private double suggestPrice;
    private int amount;

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Animal() {
        this("","","","","",0);
    }

    public Animal(String type, String shortDesc, String fullImgLink, String thumb, String fullDesc, double suggestPrice) {
        this.type = type;
        this.shortDesc = shortDesc;
        this.fullImgLink = fullImgLink;
        this.thumb = thumb;
        this.fullDesc = fullDesc;
        this.suggestPrice = suggestPrice;
    }

   

    public String getFullDesc() {
        return fullDesc;
    }

    public void setFullDesc(String fullDesc) {
        this.fullDesc = fullDesc;
    }

    public String getFullImgLink() {
        return fullImgLink;
    }

    public void setFullImgLink(String fullImgLink) {
        this.fullImgLink = fullImgLink;
    }

    public String getShortDesc() {
        return shortDesc;
    }

    public void setShortDesc(String shortDesc) {
        this.shortDesc = shortDesc;
    }

    public double getSuggestPrice() {
        return suggestPrice;
    }

    public void setSuggestPrice(double suggestPrice) {
        this.suggestPrice = suggestPrice;
    }

    public String getThumb() {
        return thumb;
    }

    public void setThumb(String thumb) {
        this.thumb = thumb;
    }
    

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
}

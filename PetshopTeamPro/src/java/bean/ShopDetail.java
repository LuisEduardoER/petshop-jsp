/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author QuyenPac
 */
public class ShopDetail {
    private Animal animal;
    private double price;

    public ShopDetail() {
        this(new Animal(), 0);
    }

    public ShopDetail(Animal animal, double price) {
        this.animal = animal;
        this.price = price;
    }

    public Animal getAnimal() {
        return animal;
    }

    public void setAnimal(Animal animal) {
        this.animal = animal;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
}

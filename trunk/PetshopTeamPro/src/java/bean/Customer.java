/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author QuyenPac
 */
public class Customer {
    private String name;
    private String accNum;
    private String email;
    private String addr;
    private String phone;

    public Customer() {
        this("","","","","");
    }

    public Customer(String name, String accNum, String email, String addr, String phone) {
        this.name = name;
        this.accNum = accNum;
        this.email = email;
        this.addr = addr;
        this.phone = phone;
    }

    public String getAccNum() {
        return accNum;
    }

    public void setAccNum(String accNum) {
        this.accNum = accNum;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author QuyenPac
 */
public class User {
    private String userName;
    private String password;
    private String control;

    public User(){
        this("","","");
    }
    public User(String userName, String password, String control) {
        this.userName = userName;
        this.password = password;
        this.control = control;
    }

    
    public String getControl() {
        return control;
    }

    public void setControl(String control) {
        this.control = control;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    
}

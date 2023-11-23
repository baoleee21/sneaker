/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author theph
 */
public class Customer {

    private int Cid;
    private String name;
    private String username;
    private String password;
    private String Email;
    private String MobilePhone;

    public Customer() {
    }

    public Customer(String username, String password) {
        this.username = username;
        this.password = password;
    }
    
    

    public Customer(int Cid, String name, String username, String password, String Email, String MobilePhone) {
        this.Cid = Cid;
        this.name = name;
        this.username = username;
        this.password = password;
        this.Email = Email;
        this.MobilePhone = MobilePhone;
    }

    public int getCid() {
        return Cid;
    }

    public void setCid(int Cid) {
        this.Cid = Cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getMobilePhone() {
        return MobilePhone;
    }

    public void setMobilePhone(String MobilePhone) {
        this.MobilePhone = MobilePhone;
    }

    @Override
    public String toString() {
        return "Custom{" + "Cid=" + Cid + ", name=" + name + ", username=" + username + ", password=" + password + ", Email=" + Email + ", MobilePhone=" + MobilePhone + '}';
    }

}

    
   


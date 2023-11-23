/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import dal.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;

/**
 *
 * @author DELL
 */
public class CustomerDAO {

    public CustomerDAO() {
        connectDB();
    }

    Connection cnn; //ket noi csdl
    Statement stm; //thuc thi cau lenh sql
    ResultSet rs; // luu tru va u ly du lieu

    private void connectDB() {
        try {
            cnn = (new DBContext()).connection;
            System.out.println("Connect successful");
        } catch (Exception e) {
            System.err.println("Connect error " + e.getMessage());
        }
    }

    public boolean checkLogin(String user, String pass) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Custom where Username ='" + user + "' and Password = '" + pass + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.err.println("Login error " + e.getMessage());
        }
        return false;
    }

    public boolean checkExist(String user) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Custom where username ='" + user + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.err.println("Login error " + e.getMessage());
        }
        return false;
    }

    public void createAccount(String username, String pass, String name, String mail, String phone) {
        String insert = "insert into Custom (Name,Username,Password,Email,MobilePhone) values (?,?,?,?,?)";
        try {
            PreparedStatement ps = cnn.prepareStatement(insert);
            ps.setString(1, name);
            ps.setString(2, username);
            ps.setString(3, pass);
            ps.setString(4, mail);
            ps.setString(5, phone);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error!!");
        }
        // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public static void main(String[] args) {
        CustomerDAO c = new CustomerDAO();
        c.checkLogin("test", "123");
    }

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import dal.DBContext;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author theph
 */
public class AdminDAO {
    public AdminDAO() {
        connectDB();
    }
    //khaii bao cac thanh phan xu ly csdl
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
            String strSelect = "select * from admin where username ='" + user + "' and password = '" + pass + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.err.println("Login error " + e.getMessage());
        }
        return false;
    }
}

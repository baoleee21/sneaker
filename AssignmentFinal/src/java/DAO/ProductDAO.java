/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import dal.DBContext;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Product;

/**
 *
 * @author huyke
 */
public class ProductDAO {

    public ProductDAO() {
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

    public ArrayList<Product> getAll() {
        ArrayList<Product> list = new ArrayList<Product>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select* from Product";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                int ID = rs.getInt(1);
                String Name = rs.getString(2);
                String image = rs.getString(3);
                int quantity = rs.getInt(4);
                double price = rs.getDouble(5);
                int type = rs.getInt(6);
                list.add(new Product(ID, Name, image, quantity, price, type));

            }
        } catch (Exception e) {
            System.out.println("Login Error" + e.getMessage());
        }
        return list;
    }

    public ArrayList<Product> getProductByPage(ArrayList<Product> listAll, int start, int end) {
        ArrayList<Product> list = new ArrayList<Product>();
        for (int i = start; i <= end; i++) {
            list.add(listAll.get(i));
        }
        return list;
        // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public String getNamebyID(String ID) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select* from Product where pID='" + ID + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return rs.getString(2);
            }
        } catch (Exception e) {
            System.out.println("Login Error" + e.getMessage());
        }
        return "";
        // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int getQuantitybyID(String ID) {
        int q = 0;
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select* from Product where pID='" + ID + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return q = rs.getInt(4);
            }
        } catch (Exception e) {
            System.out.println("Login Error" + e.getMessage());
        }
        return q;
        // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int getTypebyID(String ID) {
        int t = 0;
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select* from Product where pID='" + ID + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return t = rs.getInt(6);
            }
        } catch (Exception e) {
            System.out.println("Login Error" + e.getMessage());
        }
        return t;
        // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Double getPricebyID(String ID) {
        double price = 0;
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select* from Product where pID='" + ID + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return price = rs.getDouble(5);
            }
        } catch (Exception e) {
            System.out.println("Login Error" + e.getMessage());
        }
        return price;
        // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public String getImagebyID(String ID) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select* from Product where pID='" + ID + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return rs.getString(3);
            }
        } catch (Exception e) {
            System.out.println("Login Error" + e.getMessage());
        }
        return "";
        // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void deleteByID(String id) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strUpdate = "DELETE FROM Product WHERE pID='" + id + "'";
            stm.execute(strUpdate);

        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }

        // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void update(int ID, String name, String image, int quantity, double price, int type) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strUpdate = "update Product set Name='" + name + "',ImageUrl='" + image + "',Quantity='" + quantity + "',Price='" + price + "',TypeID='" + type + "' where pID='" + ID + "'";
            stm.execute(strUpdate);

        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }

    }

    public ArrayList<Product> Search(String name) {
        ArrayList<Product> list = new ArrayList<Product>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select* from Product where Name like'" + name + '%' + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                int ID = rs.getInt(1);
                String Name = rs.getString(2);
                String image = rs.getString(3);
                int quantity = rs.getInt(4);
                double price = rs.getDouble(5);
                int type = rs.getInt(6);
                list.add(new Product(ID, Name, image, quantity, price, type));

            }
        } catch (Exception e) {
            System.out.println("Login Error" + e.getMessage());
        }
        return list;
    }

    public ArrayList<Product> getAllByType(int typeId) {
        ArrayList<Product> list = new ArrayList<Product>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Product where typeid = '" + typeId + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String img = rs.getString(3);
                int quan = rs.getInt(4);
                double price = rs.getDouble(5);
                list.add(new Product(id, name, img, quan, price, typeId));
            }
        } catch (Exception e) {
            System.err.println("getAll error1" + e.getMessage());
        }
        return list;
    }

    public Product getProductById(int id) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Product where pid = '" + id + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String name = rs.getString(2);
                String img = rs.getString(3);
                int quan = rs.getInt(4);
                double price = rs.getDouble(5);
                int typeID = rs.getInt(6);
                return new Product(id, name, img, quan, price, typeID);
            }
        } catch (Exception e) {
            System.err.println("getAll error1" + e.getMessage());
        }
        return null;
    }

    public void sellProduct(int amount, String pid) {
        Product p = new ProductDAO().getProductById(Integer.parseInt(pid));
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strUpdate = "update Product set quantity='" + (p.getQuantity() - amount) + "' where pID='" + pid + "'";
            stm.execute(strUpdate);
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        }
    }
    

}

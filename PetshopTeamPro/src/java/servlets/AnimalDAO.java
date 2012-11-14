/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import bean.Animal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author QuyenPac
 */
public class AnimalDAO {

    static Connection conn = null;

    public static Animal fethcDetail(int id) {
        Animal result = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        try {
            conn = ConnectionManager.getConnection();
            String sql = "select s_price,full_descript, full_img, amount from animal"
                    + " where animal.id = ?";
            st = conn.prepareStatement(sql);
            st.setInt(1, id);
            rs = st.executeQuery();
            while (rs.next()) {
                result = new Animal();
                result.setSuggestPrice(rs.getDouble(1));
                result.setFullDesc(rs.getString(2));
                result.setFullImgLink(rs.getString(3));
                result.setAmount(rs.getInt(4));
            }
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();    
        }
        return result;
    }
public static boolean addAnimal(Animal animal){
    PreparedStatement st = null;
    try{
        conn = ConnectionManager.getConnection();
        String sql = "INSERT INTO `animal`(`id`, `type`, `descript`, `imgThumb`, `s_price`, `full_desc`, `full_img`, `amount`) VALUES "
                + "null,?,?,?,?,?,?,?)";
        st = conn.prepareStatement(sql);
        st.setString(1, animal.getType());
        st.setString(2, animal.getFullDesc());
        st.setString(3, animal.getThumb());
        st.setDouble(4, animal.getSuggestPrice());
        st.setString(5, animal.getFullDesc());
        st.setString(6, animal.getFullImgLink());
        st.setInt(7, animal.getAmount());
      return (st.executeUpdate()>0);
    }
    catch(Exception e){
        e.printStackTrace();
    }
    return false;
}
    public static ArrayList<Animal> fetchAnimal(int numberRecordLimit) {
        ArrayList<Animal> result = new ArrayList<Animal>();
        Statement st = null;
        try {
            conn = ConnectionManager.getConnection();
            String sql = "select * from animal";
            if (numberRecordLimit != 0) {
                sql += "limit(" + numberRecordLimit + ")";
            }
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                Animal a = new Animal();
                a.setId(rs.getInt(1));
                a.setType(rs.getString(2));
                a.setShortDesc(rs.getString(3));
                a.setThumb(rs.getString(4));
                a.setSuggestPrice(rs.getDouble(5));
                result.add(a);
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Student;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void editProduct(String id) {
        String query = "update student\n" + "SET selected=?\n"
                + "where id=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "1");
            ps.setString(2, id);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Student> searchStudent(String id, String name, String dob, String department) {
        List<Student> list = new ArrayList<>();
        String query = "SELECT * FROM student  where id like ? and name like ? and dob like ? and department like ? \n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + id + "%");
            ps.setString(2, "%" + name + "%");
            ps.setString(3, "%" + dob + "%");
            ps.setString(4, "%" + department + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Student(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

}

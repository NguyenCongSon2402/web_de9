
import dao.DAO;
import entity.Student;
import java.util.List;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Admin
 */
public class test {
    public static void main(String[] args) {
        DAO dao= new DAO();
       List<Student> list = dao.searchStudent("a","o","24","s");
        System.out.println(list);

    }
}

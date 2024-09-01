/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package medicalorg;

import com.mysql.jdbc.Connection;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Pranjal
 */
public class adminmodel {
    private String name,address,contact,email,password;

    public adminmodel() {
    }

    public adminmodel(String name, String address, String contact, String email, String password) {
        this.name = name;
        this.address = address;
        this.contact = contact;
        this.email = email;
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public int saveAdmin()
    {
        int a=0;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
    //create connection with mysql
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    Connection cn=(Connection) DriverManager.getConnection(dbpath, dbuser, dbpass);
        
            //Create valid dynamic sql commands
            String s1="insert into admindata values(?,?,?,?)";
            String s2="insert into logindata values(?,?,?)";
            //Create statements
            PreparedStatement p1=cn.prepareStatement(s1);
            PreparedStatement p2=cn.prepareStatement(s2);
            //Set data in place of ?
            p1.setString(1, name);
            p1.setString(2, address);
            p1.setString(3, contact);
            p1.setString(4, email);

            p2.setString(1, email);
            p2.setString(2, password);
            p2.setString(3, "admin");

            //send data to tables
            int x=p1.executeUpdate();
            int y=p2.executeUpdate();
            if(x==1 && y==1) a=1;
        }
        catch(Exception e)
        {
            System.out.println(e);
            a=2;
        }
        return a;
    }
    public adminmodel getAdmin()
    {
        adminmodel adm=null;
        try
        {
            System.out.println("Hello1");
 Class.forName("com.mysql.jdbc.Driver");
    
    //Create conection
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    
    Connection cn= (Connection) DriverManager.getConnection(dbpath, dbuser, dbpass);    
    System.out.println("Hello2");
            String sql="select * from admindata where email=?";
            PreparedStatement p1=cn.prepareStatement(sql);
            p1.setString(1, email); //get email of logged in user from session
            System.out.println("Hello3--"+email);
            ResultSet r1=p1.executeQuery();
            if(r1.next())
            {
                //create object here
                adm=new adminmodel();
                System.out.println("Hello4");
                String a,b,c,d;
                a=r1.getString("name");
                b=r1.getString("Address");
                c=r1.getString("contact");
                d=r1.getString("email");
                adm.setName(a);
                adm.setAddress(b);
                adm.setContact(c);
                adm.setEmail(d);
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
            adm=null;
        }
        return adm;
    }
    public static ArrayList<adminmodel> getAdmins()
    {
        ArrayList<adminmodel> lst=new ArrayList<adminmodel>();
        try
        {
            
 Class.forName("com.mysql.jdbc.Driver");
    
    //Create conection
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=(Connection) DriverManager.getConnection(dbpath, dbuser, dbpass);          
            String sql="select * from admindata";
            PreparedStatement p1=cn.prepareStatement(sql);
            
            ResultSet r1=p1.executeQuery();
            while(r1.next())
            {
                //create object here
                adminmodel adm=new adminmodel();
                
                String a,b,c,d;
                a=r1.getString("name");
                b=r1.getString("Address");
                c=r1.getString("contact");
                d=r1.getString("email");
                adm.setName(a);
                adm.setAddress(b);
                adm.setContact(c);
                adm.setEmail(d);
                lst.add(adm);
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
            
        }
        return lst;
    }
    
    
    
}

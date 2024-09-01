/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package medicalorg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Pranjal
 */
public class medicalmodel {
     private String name, address, contact, email, password, confirm,licno,ownername;

    public medicalmodel() {
    }


    public medicalmodel(String name, String address, String contact, String email, String password, String confirm,  String licno, String ownername) {
        this.name = name;
        this.address = address;
        this.contact = contact;
        this.email = email;
        this.password = password;
        this.confirm = confirm;
        this.licno = licno;
        this.ownername = ownername;
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

    public String getConfirm() {
        return confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }

    

    public String getLicno() {
        return licno;
    }

    public void setLicno(String licno) {
        this.licno = licno;
    }

    public String getOwnername() {
        return ownername;
    }

    public void setOwnername(String owner) {
        this.ownername = owner;
    }

    public int saveMedical() {
        int a = 0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
    //create connection with mysql
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
                //Create valid dynamic sql commands
                String s1="insert into medicaldata values(?,?,?,?,?,?)";
                String s2="insert into logindata values(?,?,?)";
                //Create statements
                PreparedStatement p1=cn.prepareStatement(s1);
                PreparedStatement p2=cn.prepareStatement(s2);
                //Set data in place of ?
                p1.setString(1, name);
                p1.setString(2, ownername);
                p1.setString(3, licno);
                p1.setString(4, address);
                p1.setString(5, contact);
                p1.setString(6, email);
                
                p2.setString(1, email);
                p2.setString(2, password);
                p2.setString(3, "medical");
               
            //send data to tables
            int x = p1.executeUpdate();
            int y = p2.executeUpdate();
            if (x == 1 && y == 1) 
            {
                a = 1;
            }
            
        }
        catch (Exception e) {
            System.out.println(e);
            a=2;
        }
        return a;
    }

    public medicalmodel getMedical() 
    {
        medicalmodel med=null;
        try
        {
            
 Class.forName("com.mysql.jdbc.Driver");
    
    //Create conection
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);            
            String sql="select * from medicaldata where email=?";
            PreparedStatement p1=cn.prepareStatement(sql);
            p1.setString(1, email); //get email of logged in user from session
        
            ResultSet r1=p1.executeQuery();
            if(r1.next())
            {
                //create object here
                med=new medicalmodel();
               
                String a,b,c,d,e,f;
                a=r1.getString("name");
                b=r1.getString("Address");
                c=r1.getString("contact");
                d=r1.getString("email");
                e=r1.getString("licno");
                f=r1.getString("ownername");
                med.setName(a);
                med.setAddress(b);
                med.setContact(c);
                med.setEmail(d);
                med.setLicno(e);
                med.setOwnername(f);
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
            med=null;
        }
        return med;
    }

    public static ArrayList<medicalmodel> getMedicals()
    {
        ArrayList<medicalmodel> lst=new ArrayList<medicalmodel>();
        try
        {
            
            Class.forName("com.mysql.jdbc.Driver");
    
    //Create conection
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
          
            String sql="select * from medicaldata";
            PreparedStatement p1=cn.prepareStatement(sql);
            
            ResultSet r1=p1.executeQuery();
            while(r1.next())
            {
                //create object here
                medicalmodel med=new medicalmodel();
                
                String a,b,c,d,e,f;
                a=r1.getString("name");
                b=r1.getString("Address");
                c=r1.getString("contact");
                d=r1.getString("email");
                e=r1.getString("licno");
                f=r1.getString("ownername");
                med.setName(a);
                med.setAddress(b);
                med.setContact(c);
                med.setEmail(d);
                med.setLicno(e);
                med.setOwnername(f);
                lst.add(med);
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
            
        }
        return lst;
    }
   
}

<%@page import="java.sql.*"%>
<%
    
    Class.forName("com.mysql.jdbc.Driver");
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
              
    String med_name=request.getParameter("q");
    
    if(med_name!=null)
    {
        
        String s2="select * from medicne_with_medical where med_name LIKE '%"+med_name+"%'";
        PreparedStatement p2=cn.prepareStatement(s2);
        
        ResultSet r2=p2.executeQuery();

        while(r2.next())
        {
            String a,b,c,e,f,h,j,k;
            a=r2.getString("med_name");
            j=r2.getString("name");
            k=r2.getString("owner_name");
            e=r2.getString("address");
            f=r2.getString("contact");
            h=r2.getString("med_type");
            b=r2.getString("unit_price");
            c=r2.getString("email_medical");



            %>
            <center>
                <p>
                
                <div class="j1">Med_name:<%= a%></br></div>
                <div class="j1">unit_price:<%= b %><br/></div>
                <div class="j1">Email_medical:<%= c %><br/></div>
                <div class="j1">Name:<%= j %><br/></div>
                <div class="t1"> Owner_name:<%= k %><br/></div>
                <div class="t1">Address:<%= e %><br/></div>
                <div class="t1">Contact:<%= f %><br/></div>
                <div class="t1">med_type:<%= h %><br/></div>
                




            </p>
            </center>
                <hr/>
            <%

            }//end of whilr
            
            
        }//end of if
%>
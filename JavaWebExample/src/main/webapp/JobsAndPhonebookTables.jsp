<%-- 
    Document   : JobsAndPhonebookTables
    Created on : Oct 13, 2017, 5:36:39 PM
    Author     : leon
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@page import="com.bor.javawebexample.db.JobRecord" %>
<%@page import="com.bor.javawebexample.db.PhonebookRecord"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <h2>Job table</h2> 
        <table width="40%"> <tr><td>

                    <h3>Edit</h3>  
                    <form action="jobsAndPhonebook" method="post">  
                        <table>                
                            <tr><td><input type="text" placeholder="Firstname" name="firstname" autofocus required/></td></tr>
                            <tr><td><input type="text" placeholder="Lastname" name="lastname" required/></td></tr>
                            <tr><td><input type="text" placeholder="Job" name="job"required/></td></tr>
                            <tr><td><input type="text" placeholder="Address" name="address"required/></td></tr>

                            <tr><td><input type="submit" name ="add" value="add"/></td></tr>  
                        </table>  
                    </form>
                </td>
                <td>

                    <h3>Search</h3>  
                    <form action="jobsAndPhonebook" method="post">  
                        <table>                
                            <tr><td><input type="text" placeholder="Firstname" name="firstname" /></td></tr>
                            <tr><td><input type="text" placeholder="Lastname" name="lastname" /></td></tr>
                            <tr><td><input type="text" placeholder="Job" name="job" /></td></tr>
                            <tr><td><input type="text" placeholder="Address" name="address"/></td></tr>

                            <tr><td><input type="submit" name="search" value="search"/></td></tr>  
                        </table>  
                    </form>

                </td></tr>
        </table>

        <table border="1">
            <tr><th>Id</th><th>Lastname</th><th>Firstname</th><th>Job</th>  
                <th>Address</th></tr>

            <c:forEach items="${jobList}" var="job">
                <tr>
                    <td>${job.getId()}</td>
                    <td>${job.getLastname()}</td>
                    <td>${job.getFirstname()}</td>                
                    <td>${job.getJob()}</td>
                    <td>${job.getAddress()}</td>
                </tr>
            </c:forEach> 
        </table>


        <br>
        <hr align="left" width="70%" size="2" />
        <br>

        <h2>Phonebook table</h2> 

        <table border="1">
            <tr><th>Id</th><th>Lastname</th><th>Firstname</th><th>Work phone</th>  
                <th>Mobile phone</th><th>e-mail</th><th>Birthdate</th><th>Job</th></tr>
                    <c:forEach items="${phonebookList}" var="phone">
                <tr>
                    <td>${phone.getId()}</td>
                    <td>${phone.getLastname()}</td>
                    <td>${phone.getFirstname()}</td>   
                    <td>${phone.getWorkPhone()}</td>
                    <td>${phone.getMobilePhone()}</td>
                    <td>${phone.getEmail()}</td>
                    <td>${phone.getStringBirthdate()}</td>
                    <td>${phone.getJob()}</td>
                </tr>
            </c:forEach> 
        </table>

</html>
</body>
</html>

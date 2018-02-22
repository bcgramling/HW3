<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./css/salaryStyle.css"/>
        <title>Salary Calculator</title>
    </head>
    
    <%
        int hoursWorked = Integer.parseInt(request.getParameter("hoursWorked"));
        int payRate = Integer.parseInt(request.getParameter ("payRate"));
        int pretaxDeduct = Integer.parseInt(request.getParameter ("pretaxDeduct"));
        int posttaxDeduct = Integer.parseInt(request.getParameter ("posttaxDeduct"));
        
        
        
        
        
        %>
    
    
    <body>
        <div id="calculator">
            <h1>Salary Information</h1>
            <hr><br>
            <table>
                <tbody>
                    <tr>
                        <td>Total Hours Worked:</td>
                        <td><%= hoursWorked %></td>
                    </tr>
                    <tr>
                        <td>Hourly Rate:</td>
                        <td><%= payRate %></td>
                    </tr>
                    <tr>
                        <td>Overtime Hours:</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Overtime Hourly Rate:</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Gross Pay:</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Pre-tax Deductions:</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Pre-tax Pay:</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Tax Amount:</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Post-tax Pay:</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Post-tax Deductions:</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Net Pay:</td>
                        <td></td>
                    </tr>
                </tbody>
            </table>  
        </div>
    </body>
</html>

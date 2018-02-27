<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./css/salaryStyle.css"/>
        <title>JSP Page</title>
    </head>
    
    <%
       
        // Variables
        double OTHours = 0, OTPay = 0, regPay = 0, grossPay = 0,pretaxDeduct = 0, pretaxPay = 0, 
                taxAmt= 0, posttaxPay= 0, posttaxDeduct = 0, netPay = 0;
        
        Double hoursWorked = Double.parseDouble(request.getParameter("hoursWorked"));
        Double payRate = Double.parseDouble(request.getParameter("hourlyRate")); 
        Double OTRate = payRate * 1.5;
        
    if(request.getParameter("pretaxDeduct")==""){
    } 
    else
    {
         Double preDeduct = Double.parseDouble(request.getParameter("pretaxDeduct"));
         pretaxDeduct=preDeduct;
    }
    
    if(request.getParameter("posttaxDeduct")==""){
    } 
    else
    {
         Double postDeduct = Double.parseDouble(request.getParameter("posttaxDeduct"));
         posttaxDeduct=postDeduct;
    }

    if (hoursWorked <= 40)
    {
        grossPay = hoursWorked * payRate;
    }        
    else 
    {
        OTHours = hoursWorked - 40;
        OTPay = OTHours * OTRate;
        regPay = 40 * payRate;
        grossPay = regPay + OTPay; 
    }
    
    pretaxPay = grossPay - pretaxDeduct;
    
    if (grossPay >= 500)
    {
        taxAmt = pretaxPay * .22;
    }
    else 
    {
        taxAmt = pretaxPay * .18;
    }
    
        
        posttaxPay = pretaxPay - taxAmt;
        netPay = posttaxPay - posttaxDeduct;
    %>
    
    <body>
        <div id="calculator">
            <h1>Salary Information</h1>
            <hr><br>
            <table border="1">
                <tbody>
                    <tr>
                        <td colspan="2">Total Hours Worked:</td>
                        <td>&nbsp;&nbsp;&nbsp;<%= hoursWorked %> Hours</td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp; </td>
                    </tr> 
                    <tr>
                        <td colspan="2">Hourly Rate:</td>
                        <td>&nbsp;&nbsp;&nbsp;$<%= payRate %>/hour</td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp; </td>
                    </tr>
                    <tr>
                        <td colspan="2">Overtime Hours:</td>
                        <td>&nbsp;&nbsp;&nbsp;<%= OTHours %> Hours</td>
                    </tr>
                    <tr>
                           <td colspan="3">&nbsp; </td>
                    </tr>
                    <tr>
                        <td colspan="2">Overtime Hourly Rate:</td>
                        <td>&nbsp;&nbsp;&nbsp;$<%= OTRate %>/hour</td>
                    </tr>
                    <tr>
                           <td colspan="3">&nbsp; </td>
                    </tr>
                    <tr>
                        <td colspan="2">Gross Pay:</td>
                        <td style="font-weight:bold">&nbsp;&nbsp;&nbsp;$<%= grossPay %></td>
                    </tr> 
                    <tr>
                           <td colspan="3">&nbsp; </td>
                    </tr>
                    <tr>
                        <td colspan="2">Pre-tax Deductions:</td>
                        <td>&nbsp;&nbsp;&nbsp;$<%= pretaxDeduct %></td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp; </td>
                    </tr>
                    <tr>
                        <td colspan="2">Pre-tax Pay:</td>
                        <td style="font-weight:bold">&nbsp;&nbsp;&nbsp;$<%= pretaxPay %></td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp; </td>    
                    </tr>
                    <tr>
                        <td colspan="2">Tax Amount:</td>
                        <td>&nbsp;&nbsp;&nbsp;$<%= taxAmt %></td>
                    </tr>
                    <tr>
                           <td colspan="3">&nbsp; </td>
                    </tr>
                    <tr>
                        <td colspan="2">Post-tax Pay:</td>
                        <td style="font-weight:bold">&nbsp;&nbsp;&nbsp;$<%= posttaxPay %></td>
                    </tr>
                    <tr>
                           <td colspan="3">&nbsp; </td>
                    </tr>
                    <tr>
                        <td colspan="2">Post-tax Deductions:</td>
                        <td>&nbsp;&nbsp;&nbsp;$<%= posttaxDeduct %> </td>
                    </tr>
                    <tr>
                           <td colspan="3">&nbsp; </td>
                    </tr>
                    <tr>
                        <td colspan="2">Net Pay:</td>
                        <td style="font-weight:bold">&nbsp;&nbsp;&nbsp;$<%= netPay %></td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp; </td>
                    </tr>
                    <tr>
                        <td width="200"> </td>
                        <td><form name="salaryCalc" action="index.jsp" method="post">
                               <input type="submit" value="New Calculation" id="submit"> 
                        </td>
                        <td width="200"> </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>

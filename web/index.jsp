<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./css/salaryStyle.css"/>
        <title>Salary Calculator</title>
    </head>
    <body>
        <div id="calculator">
            <h1>Simple Salary Calculator</h1>
            <hr><br>
            <form name="salaryCalc" action="results.jsp" method="post">
                <table>
                    <tbody>
                        <tr>
                            <td>Hours Worked:</td>
                            <td><input type="number" name="hoursWorked" value="" size="auto" required></td> 
                        </tr>
                        <tr>
                            <td>Hourly Pay Rate:</td>
                            <td><input type="number" name="hourlyRate" value="" size="atuo" required></td> 
                        </tr>
                        <tr>
                            <td>Pre-tax Deductions:</td>
                            <td><input type="number" name="pretaxDeduct" value="" size="auto"></td> 
                        </tr>
                        <tr>
                            <td>Post-tax Deductions:</td>
                            <td><input type="number" name="posttaxDeduct" value="" size="auto"></td> 
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="reset" value="clear" id="clear">
                                <input type="submit" value="calculate" id="submit"
                            </td> 
                        </tr>
                    </tbody>
                </table>
               
            </form>
        </div>
        
    
        
        
     
    </body>
</html>


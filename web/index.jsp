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
                            <td><input type="text" name="hoursWorked" value="" size="auto"></td> 
                        </tr>
                        <tr>
                            <td>Hourly Pay:</td>
                            <td><input type="text" name="payRate" value="" size="atuo"></td> 
                        </tr>
                        <tr>
                            <td>Pre-tax Deductions:</td>
                            <td><input type="text" name="pretaxDeduct" value="" size="auto"></td> 
                        </tr>
                        <tr>
                            <td>Post-tax Deductions:</td>
                            <td><input type="text" name="posttaxDeduct" value="" size="auto"></td> 
                        </tr>
                    </tbody>
                </table>
                <input type="reset" value="clear" id="clear">
                <input type="submit" value="calculate" id="submit"
               
            </form>
        </div>
        
    
        
        
     
    </body>
</html>


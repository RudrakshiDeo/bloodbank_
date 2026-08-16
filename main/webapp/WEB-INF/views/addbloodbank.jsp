<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add your Blood Bank</title>
<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background-color: crimson;
    }

    * {
        box-sizing: border-box;
    }

    h2 {
        text-align: center;
        color: white;
    }

    /* Add padding to containers */
    .container {
        padding: 16px;
        background-color: white;
    }
    
    /* Full-width input fields */
    input[type=text], input[type=date], input[type=time], input[type=number] {
        width: 100%;
        padding: 10px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    input[type=text]:focus, input[type=date]:focus, input[type=time]:focus, input[type=number]:focus {
        background-color: #ddd;
        outline: none;
    }
    
    button[type=submit] {
        background-color: rgb(3, 187, 3);
        border: none;
        color: white;
        padding: 12px 24px;
        margin: 4px 2px;
        cursor: pointer;
    }

    button[type=reset] {
        background-color: red;
        border: none;
        color: white;
        padding: 12px 24px;
        margin: 4px 2px;
        cursor: pointer;
    }
    select {
        width: 100%;
        padding: 10px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    label{
        font-weight: bold;
    }

    .col{
        float: left;
        width: 33.33%;
        padding: 10px;
    }
    .row::after{
        content: "";
        display: table;
        clear: both;
    }

    .required::after{
        content: ' *';
        color: red;
    }
</style>
</head>
<body>
       <h2>Blood Bank Details</h2>
       <div class="container">
        <form:form action="addBloodbank" method="POST" modelAttribute="addBloodbankdto">
            <h3>Blood Bank Address</h3>
            <hr>
            <div class="row">
                <div class="col">
                    <label class="required">State</label><br>
                    <select name="state" id="state" required>
                        <option value="ODISHA">Odisha</option>
                    </select><br>
                </div>
                <div class="col">
                    <label class="required">District</label><br>
                    <select name="district" id="district" required>
                        <option value="select">Select District</option>
                        <option value="ANGL">Anugul</option>
                        <option value="BLGR">Balangir</option>
                        <option value="BLS">Baleswar</option>
                        <option value="BRG">Bargarh</option>
                        <option value="BUD">Baudh</option>
                        <option value="BHC">Bhadrak</option>
                        <option value="CTC">Cuttak</option>
                        <option value="DBG">Debagarh</option>
                        <option value="DKL">Dhenkanal</option>
                        <option value="GAJ">Gajapati</option>
                        <option value="GAM">Ganjam</option>
                        <option value="JSP">Jagatsinghapur</option>
                        <option value="JJP">Jajpur</option>
                        <option value="JSG">Jharsuguda</option>
                        <option value="KLH">Kalahandi</option>
                        <option value="KDM">Kandhamal</option>
                        <option value="KDP">Kendrapara</option>
                        <option value="KDJR">Kendujhar</option>
                        <option value="KUR">Khorda</option>
                        <option value="KRPU">Koraput</option>
                        <option value="MKG">Malkangiri</option>
                        <option value="MBR">Mayurbhanjh</option>
                        <option value="NBRP">Nabarangapur</option>
                        <option value="NYG">Nayagarh</option>
                        <option value="NUP">Nuapada</option>
                        <option value="PURI">Puri</option>
                        <option value="RGDA">Rayagada</option>
                        <option value="SBP">Sambalpur</option>
                        <option value="SBRP">Subarnapur</option>
                        <option value="SDRG">Sundargarh</option>
                    </select><br>
                </div>
                <div class="col">
                    <label>City</label><br>
                    <input type="text" id="city" name="city"><br>
                </div>
            </div>

            <h3>Blood Bank Details</h3>
            <hr style="width: 100%; height: 2px; background-color: crimson;">
            <div class="row">
                <div class="col">
                    <label class="required">Blood Bank Name</label><br>
                    <input type="text" id="bbank" name="bbank" path="bbank" required><br>
                </div>
                <div class="col">
                    <label class="required">Hospital Name</label><br>
                    <input type="text" id="hospitalName" name="hospitalName" required><br>
                </div>
                <div class="col">
                    <label class="required">Category</label><br>
                    <select name="category" id="category" required>
                        <option value="select">Select Category</option>
                        <option value="govt">Govt.</option>
                        <option value="private">Private</option>
                        <option value="red cross">Red Cross</option>
                        <option value="vol">Charitable/Vol</option>
                    </select><br>
                </div>
                <div class="col">
                    <label class="required">Email</label><br>
                    <input type="text" id="email" name="email" required><br>
                </div>
                <div class="col">
                    <label class="required">Contact no.</label><br>
                    <input type="number" id="contact" name="contact" required><br>
                </div>
                <div class="col">
                    <label>Licence no.</label><br>
                    <input type="text" id="licence" name="licence"><br>
                </div>
                <div class="col">
                    <label class="required">From date</label><br>
                    <input type="date" id="fromDate" name="fromDate" required><br>
                </div>
                <div class="col">
                    <label class="required">To date</label><br>
                    <input type="date" id="toDate" name="toDate" required><br>
                </div>
                <div class="col">
                    <label>Component Facility</label><br>
                    <select name="component" id="component">
                        <option value="select">Select Value</option>
                        <option value="Yes">Yes</option>
                        <option value="No">No</option>
                    </select><br>
                </div><div class="col">
                    <label>Apheresis Facility</label><br>
                    <select name="apheresis" id="apheresis">
                        <option value="select">Select Value</option>
                        <option value="Yes">Yes</option>
                        <option value="No">No</option>
                    </select><br>
                </div>
                <div class="col">
                    <label class="required">Helpline no.</label><br>
                    <input type="number" id="helpline" name="helpline" required><br>
                </div>
                <div class="col">
                    <label class="required">No. of Bed in Hospital</label><br>
                    <input type="number" id="noOfBed" name="noOfBed" required><br>
                </div>
            </div>

            <h3>Postal Address</h3>
            <hr style="width: 100%; height: 2px; background-color: crimson;">
            <div class="row">
                <div class="col">
                    <label  class="required">Address 1</label><br>
                    <input type="text" id="address1" name="address1" required><br>
                </div>
                <div class="col">
                    <label>Address 2</label><br>
                    <input type="text" id="address2" name="address2"><br>
                </div>
                <div class="col">
                    <label  class="required">Pin Code</label><br>
                    <input type="text" id="pinCode" name="pinCode" required><br>
                </div>
            </div>
            <button type="submit" value="Submit">Submit</button>
            <button type="reset" value="Cancel">Cancel</button>
          </form:form>
        </div>
</body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #ff1648;
}

li {
	float: left;
}

li a, .dropbtn {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover:not(.active), .dropdown:hover .dropbtn {
	background-color: whitesmoke;
	color: black;
}

.active {
	background-color: whitesmoke;
	color: black;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #f1f1f1;
}

.dropdown:hover .dropdown-content {
	display: block;
}

img {
    display: block;
    margin-left: auto; 
    margin-right: auto;   
    padding: 10px;        
    }

    .text-center {
    text-align: center;
    }

    .text-left {
        text-align: left;
    }

    .text-right {
        text-align: right;
    }

    a{
        color: white;
        text-decoration: solid;
    }

    a:hover{
        color: white;
        text-decoration-line: underline;
    }

    .box-container{
        margin: 2px 0 0 0;
        background: ghostwhite;
        width: 100%;
        display: flex;
        justify-content: space-evenly;
    }
    .box-title{
        width:200px;
        border: transparent;
        padding: 10px;
        border-radius: 10px;
        margin: 10px;
    }

	.box-image{
        width: auto;
        height:200px;
        padding: 10px;
        border-radius: 10px;
        margin:10px;
    }
    
    table{
        border: 2px solid;
        border-collapse:collapse;
        border-color: black;
        width: 70%;
    }
    th{
        border: 1px solid;
        padding: 5px;
    }
    td{
        border: 1px solid;
    }
    select{
        margin-right: 10px;
        width: 15%;
        padding: 5px;
    }

    input[type=text] {
        width: 20%;
        padding: 6px;
        margin: 5px 0 18px 0;
        display: inline-block;
        border: 1px solid;
    }

    button[type=search] {
        background-color: rgb(3, 187, 3);
        border: none;
        color: white;
        padding: 6px 12px;
        margin: 4px 2px;
        cursor: pointer;
    }
    
    tr:nth-child(even){background-color: #fef4f4}

    .table-data-container {
        height: 300px;
        overflow-y: scroll;
    }
    #functionTable {
        position:relative;
        top: 0;
        width: 100%;
        float: none;
    }
    #functionTable td{
        padding: 5px;
    }

    .table-bloodstock-container{
        margin: 2px 0 0 0;
        background: papayawhip;
        width: 75%;
        display: block;
        justify-content: space-evenly;
    }
    .table-outer-container{
        background: white;
        display: flex;
        justify-content: flex-start;
    }
</style>

<!--<c:url value="/resources/ravi24_may_8.jpg"/>  -->
</head>
<body>
	<ul>
		<li style="float: right" class="dropdown"><a href="/">Blood
				Bank Login</a>
			<div class="dropdown-content">
				<a href="/bloodbank/myCustomLogin">Login</a>
				<a href="/bloodbank/addBloodbank">Add Your Bloodbank</a>
			</div></li>
		<li style="float: right" class="dropdown">
		<a href="#news">Looking for Blood</a>
			<div class="dropdown-content">
				<a href="#">Blood Availability</a> 
				<a href="/bloodbank/bloodbankdirectory">Blood Bank Directory</a> 

			</div></li>
		<li style="float: right" class="dropdown">
		<a href="#contact">To Donate Blood</a>
			<div class="dropdown-content">
				<a href="/bloodbank/campRegistration">Blood Donation Camps</a> 
				<a href="#">Register VBD Camp</a> 
				<a href="/bloodbank/donorRegistration">Donor Registration</a> 
				<a href="/bloodbank/aboutdonation">About Blood Donation</a>
			</div></li>
		<li style="float: right" class="dropdown"><a
			href="javascript:void(0)" class="dropbtn">About Us</a>
			<div class="dropdown-content">
				<a href="/bloodbank/">Home</a> 
				<a href="/bloodbank/gallery/">Gallery</a> 
				<a href="/bloodbank/contact">Contact Us</a>
			</div></li>
	</ul>
	
	<!-- /image -->
	<img src="https://as2.ftcdn.net/v2/jpg/05/83/41/91/1000_F_583419119_RngJt478yIrXuHgvofMlt54rxBFyDPdp.jpg"> 
	
	<div class="box-container">
	     <div class="box-title"  style="background-color: crimson;">
	         <h4 class="text-center"><a href="">Blood Availability Search</a></h4>
	     </div>
	
	     <div class="box-title"  style="background-color: mediumseagreen;">
	         <h4 class="text-center"><a href="">Blood Bank Directory</a></h4>
	     </div>
	
	     <div class="box-title"  style="background-color: gold;">
	         <h4 class="text-center"><a href="">Blood Donation Camps</a></h4>
	     </div>
	     
	     <div class="box-title"  style="background-color: #ff6643;">
	         <h4 class="text-center"><a href="">Donor Login</a></h4>
	     </div>
	     
	     <div class="box-title"  style="background-color: darkturquoise;">
	         <h4 class="text-center"><a href="">Register Voluntary Blood Camp</a></h4>
         </div>
     </div>
     
	<img src="https://th.bing.com/th/id/R.311f8ee14017cefd470d2fe7de1e2042?rik=OOjpF9Ul%2fSFXtw&riu=http%3a%2f%2fmaruthibloodbank.org%2fwp-content%2fuploads%2f2021%2f02%2f6811460slider-bg.jpg&ehk=d279Q%2bjLLEcZdv7gWKk%2fWusVjk7FZCBmVvbzavdGZYM%3d&risl=&pid=ImgRaw&r=0" height=400px width=100%>
	<!-- <img src="https://repository-images.githubusercontent.com/190525537/ba693600-8b07-11e9-986c-09f54bb00161" height=400px width=100%> -->
	<!-- <img src="https://rukminim1.flixcart.com/fk-p-flap/1600/270/image/23fcdcf22de91b63.jpg?q=20" height=300px width=100%> -->
        
        <div class="box-container">
            <div class="box-title"  style="background-color: dodgerblue; color: white;">
                <h3 class="text-center">Donors Registered <sup title="Donors who volunatry registered for blood donation">&#9432;</sup></h3>
            </div>

            <div class="box-title"  style="background-color: blueviolet; color: white;">
                <h3 class="text-center">Blood Units Collected <sup title="Blood Units collected from 01 Jan 2022 till date">&#9432;</sup></h3>
            </div>
        </div>
        <br>
        
        
        <!-- <div class="box-image" align="center" style="background-color: crimson; color: white; font-size: 500%"> DONATE BLOOD <br> SAVE LIFE</div> -->
        <!--Table container-->
        <div class="table-outer-container">
            <div class="table-bloodstock-container">
                <h2>Availability of Blood Stock</h2>
                <select name="District" id="Dist">
                    <option value="dist">Select District</option>
                    <option value="ANGL">Anugul</option>
                    <option value="BLGR">Bolangir</option>
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
                    <option value="PRI">Puri</option>
                    <option value="RGDA">Rayagada</option>
                    <option value="SBP">Sambalpur</option>
                    <option value="SBRP">Subarnapur</option>
                    <option value="SDRG">Sundargarh</option>
                </select>
                
                <input type="text" id="myInput" onkeyup="searchbarFunction()" placeholder="Search Blood Bank" name="search"/>
                    <button type="search" value="Search">Search</button><br><br>
                
                <div class="table-data-container">
                    <table id="functionTable">
                        <tr style="background-color: red; color: white;">
                            <th rowspan="2">District</th>
                            <th rowspan="2">Blood Center Name</th>
                            <th colspan="8">Whole Blood(W/B)</th>
                            <th rowspan="2">Last Updated</th>
                            <th rowspan="2">Component</th>
                        </tr>
                        <tr>
                            <th>A+</th>
                            <th>A-</th>
                            <th>B+</th>
                            <th>B-</th>
                            <th>AB+</th>
                            <th>AB-</th>
                            <th>O+</th>
                            <th>O-</th>
                        </tr>
                        <tr>
                            <td>Anugul</td>
                            <td>DDH Anugul</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Anugul</td>
                            <td>SDH Athamallik</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Anugul</td>
                            <td>SDH Talcher</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Bolangir</td>
                            <td>DDH Bolangir</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Bolangir</td>
                            <td>SDH Kantabanji</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Bolangir</td>
                            <td>SDH Patnagarh</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Bolangir</td>
                            <td>SDH Titlagarh</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Baleswar</td>
                            <td>DDH Baleswar</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Baleswar</td>
                            <td>SDH Nilagiri</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Bargarh</td>
                            <td>DDH Bargarh</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Bargarh</td>
                            <td>SDH Padampur</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Baudh</td>
                            <td>DDH Baudh</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Bhadrak</td>
                            <td>DDH Bhadrak</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Cuttak</td>
                            <td>CRCBC Cuttak</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Cuttak</td>
                            <td>SCB MCH</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Debagarh</td>
                            <td>DDH Debagarh</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Dhenkanal</td>
                            <td>DDH Dhenkanal</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Gajapati</td>
                            <td>DDH Paralakhemundi</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Ganjam</td>
                            <td>MKCG MCH</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Ganjam</td>
                            <td>SDH Bhanjanagar</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Jagatsinghapur</td>
                            <td>DDH Jagatsinghapur</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Jajpur</td>
                            <td>CHC Jajpur Road</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Jajpur</td>
                            <td>DDH Jajpur</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Jharsuguda</td>
                            <td>DDH Jharsuguda</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Kalahandi</td>
                            <td>DDH Bhawanipatna</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Kalahandi</td>
                            <td>SDH Dharamagarh</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Kandhamal</td>
                            <td>DDH Kandhamal</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Kandhamal</td>
                            <td>SDH Baliguda</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Kendrapara</td>
                            <td>DDH Kendrapara</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Kendujhar</td>
                            <td>DDH Kendujhar</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Kendujhar</td>
                            <td>SDH Anandapur</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Kendujhar</td>
                            <td>SDH Champua</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Khorda</td>
                            <td>BMC Hospital</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Khorda</td>
                            <td>Capital Hospital</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Khorda</td>
                            <td>DDH Khorda</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Khorda</td>
                            <td>Apollo Hospital</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Khorda</td>
                            <td>Amri Hospitals Ltd.</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Khorda</td>
                            <td>Care Hospital</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Koraput</td>
                            <td>DDH Koraput</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Koraput</td>
                            <td>Nalco Hospital Damanjodi</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Koraput</td>
                            <td>SDH Jeypore</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Malkangiri</td>
                            <td>DDH Malkangiri</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Mayurbhanjh</td>
                            <td>DDH Baripada</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Mayurbhanjh</td>
                            <td>SDH Karanjia</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Mayurbhanjh</td>
                            <td>SDH Rairangpur</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Nabarangapur</td>
                            <td>DDH Nabarangapur</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Nayagarh</td>
                            <td>DDH Nayagarh</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Nuapada</td>
                            <td>DDH Nuapada</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Puri</td>
                            <td>DDH Puri</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Rayagada</td>
                            <td>SDH Gunupur</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sambalpur</td>
                            <td>DDH Sambalpur</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sambalpur</td>
                            <td>SDH Khchinda</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sambalpur</td>
                            <td>SDH Rairakhol</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sambalpur</td>
                            <td>VSS MCH</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Subarnapur</td>
                            <td>DDH Sonepur</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sundargarh</td>
                            <td>CWS Hospital</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sundargarh</td>
                            <td>DDH Sundargarh</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sundargarh</td>
                            <td>JP Blood Center</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sundargarh</td>
                            <td>DDH Sundargarh</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sundargarh</td>
                            <td>SDH Boneigarh</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
            
            <table width="40%">
                <tr>
                    <th colspan="3" style="background-color: red; color: white;">Compatible Blood Type Donors</th>
                </tr>
                <tr>
                    <th>Blood Type</th>
                    <th>Donated Blood To</th>
                    <th>Receive Blood From</th>
                </tr>
                <tr>
                    <th>A+</th>
                    <td>A+ AB+</td>
                    <td>A+ A- O+ O-</td>
                </tr>
                <tr>
                    <th>B+</th>
                    <td>B+ AB+</td>
                    <td>B+ B- O+ O-</td>
                </tr>
                <tr>
                    <th>O+</th>
                    <td>O+ A+ B+ AB+</td>
                    <td>O+ O-</td>
                </tr>
                <tr>
                    <th>AB+</th>
                    <td>AB+</td>
                    <td>Everyone</td>
                </tr>
                <tr>
                    <th>A-</th>
                    <td>A+ A- AB+ AB-</td>
                    <td>A- O-</td>
                </tr>
                <tr>
                    <th>B-</th>
                    <td>B+ B- AB+ AB-</td>
                    <td>B- O-</td>
                </tr>
                <tr>
                    <th>O-</th>
                    <td>Everyone</td>
                    <td>O-</td>
                </tr>
                <tr>
                    <th>AB-</th>
                    <td>AB+ AB-</td>
                    <td>AB- A- B- O-</td>
                </tr>
            </table>
        </div>
        <script>
            function searchbarFunction() {
            // Declare variables
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("functionTable");
            tr = table.getElementsByTagName("tr");           

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 2; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td");
                var found=false;

                for (j = 0; j < td.length; j++) {
                var cell = td[j];
                txtValue = cell.textContent || cell.innerText;
                
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    found=true;
                    break;
                }
                }
                if (found) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
        </script>
</body>
</html>

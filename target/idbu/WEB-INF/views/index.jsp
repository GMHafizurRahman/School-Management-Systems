
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<%@taglib uri="http://www.springframework.org/tags"  prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<spring:url var="images"  value="/images/"/> 
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Dhuliapur High School</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <style>

            .navbar {
                margin-bottom: 0;
                border-radius: 0;
            }

            /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
            .row.content {
                height: 310px
            }

            /* Set gray background color and 100% height */
            .sidenav {
                padding-top: 20px;
                background-color: #f1f1f1;
                height: 100%;
            }

            /* Set black background color, white text and some padding */
            footer {
                background-color: #555;
                color: white;
                padding: 15px;
            }

            /* On small screens, set height to 'auto' for sidenav and grid */
            @media screen and (max-width: 767px) {
                .sidenav {
                    height: auto;
                    padding: 0px;
                }

                .row.content {
                    height: auto;
                }
            }

            /* --------------------------? */

            .dropbtn {
                background-color: #186105; 
                color: white; 
                padding-left: 16px;
                padding-right: 16px;
                padding-top: 10px;
                font-size: 16px;
                border: none; 
            }

            .dropdown {
                position: relative;
                display: inline-block;
            } 

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f1f1f1;
                min-width: 160px;
                box-shadow: 0px 0px 0px 0px rgba(0,0,0,0.2);
                z-index: 1;
            } 

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            } 

            /*.dropdown-content a:hover {background-color: #ddd;}*/

            .dropdown:hover .dropdown-content {display: block;} 

            /*.dropdown:hover .dropbtn {background-color: #186105;}*/ 
            /* ------------------------------------------ */


            .dropbtn {
                background-color:#186105;
                color: white;
                /* padding: 16px; */
                font-size: 18px;
                border: none;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #186105;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            /*.dropdown-content a:hover {background-color: #ff22;}*/

            .dropdown:hover .dropdown-content {display: block;}

            /*.dropdown:hover .dropbtn {background-color: #186105;}*/


            /* * {
                margin: 0;
                padding: 0;
            } */

            ul {
                list-style-type: none;
                line-height: 30px;
            }

            nav>ul>li:hover>ul{
                display: block;
                /*padding-left: 2px;*/
            }
            nav>ul>li>ul{
                position: absolute;
                top: 0;
                left: 100%;
                display: none;
                width: auto;
            }
            nav>ul>li>ul>li{
                width: auto;
            }
            nav>ul li a{
                text-decoration: none;
                display: block;
                color: seashell;
                font-size: 15px;
                padding-top: 0px;
                padding-bottom: 0px;

            }
            nav>ul>li a:hover{
                /*border: 3px solid springgreen;*/
                color: #fff;
                background-color: #186105;
            }
            nav>ul li{

                padding-left: 0%;
                width: auto;
                position: relative;
                background-color: #186105;
                text-align: left;

            }

            #search {
                float: right;
                margin-top: 9px;
                width: 250px;
            }

            .search {
                padding: 5px 0;
                width: 230px;
                height: 30px;
                position: relative;
                left: 10px;
                float: left;
                line-height: 22px;
            }

            .search input {
                position: absolute;
                width: 0px;
                float: Left;
                margin-left: 210px;
                -webkit-transition: all 0.7s ease-in-out;
                -moz-transition: all 0.7s ease-in-out;
                -o-transition: all 0.7s ease-in-out;
                transition: all 0.7s ease-in-out;
                height: 30px;
                line-height: 18px;
                padding: 0 2px 0 2px;
                border-radius:1px;
            }

            .search:hover input, .search input:focus {
                width: 200px;
                margin-left: 0px;
            }

            .btn {
                height: 30px;
                position: absolute;
                right: 0;
                top: 5px;
                border-radius:1px;
            }
            #mainName{
                font-size: 40px; 
                font-family: 'Times New Roman';
                margin-left: 150px;
                margin-top: 20px;
            }

            #mainName:hover{
                color: whitesmoke;

                background-image: url("data:image/svg+xml;charset=utf8,%3Csvg id='squiggle-link' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:ev='http://www.w3.org/2001/xml-events' viewBox='0 0 20 4'%3E%3Cstyle type='text/css'%3E.squiggle{animation:shift .3s linear infinite;}@keyframes shift {from {transform:translateX(0);}to {transform:translateX(-20px);}}%3C/style%3E%3Cpath fill='none' stroke='%23453886' stroke-width='2' class='squiggle' d='M0,3.5 c 5,0,5,-3,10,-3 s 5,3,10,3 c 5,0,5,-3,10,-3 s 5,3,10,3'/%3E%3C/svg%3E");
                background-position: bottom;
                background-repeat: repeat-x;
                background-size: 20%;
                border-bottom: 0;
                padding-bottom: .3em;
                text-decoration: none;

                text-shadow: 0px 0px 0 rgb(208,138,28),1px 1px 0 rgb(165,123,26),2px 2px 0 rgb(242,185,100),3px 3px 0 rgb(227,167,187),4px 4px 0 rgb(182,129,63),5px 5px 0 rgb(161,117,50),6px 6px 0 rgb(144,103,39),7px 7px 0 rgb(130,91,31),8px 8px 0 
                    rgb(120,83,25),9px 9px 0 rgb(108,73,20),10px 10px 0 rgb(93,63,13),11px 11px 0 rgb(60,54,12),12px 12px 0
                    rgb(63,41,8),13px 13px 0
            }
            /*slider code*/

            .fa {
                padding: 5px;
                font-size: 30px;
                width: 30px;
                text-align: center;
                text-decoration: none;
                margin: 5px 2px;
                border-radius: 50%;
            }

            /*Admission Blink*/
            .blinking{
                animation:blinkingText 1.2s infinite;
            }
            @keyframes blinkingText{
                0%{     color: #FF0000;    }
                49%{    color: #FF0000; }
                60%{    color: transparent; }
                99%{    color:transparent;  }
                100%{   color: #FF0000;    }
            }

            /*-----------------Notice css----------------------*/
            /*            #flip {
                            height:50px;
                            overflow:hidden;          
                        }
            
                        #flip > div > div {
                            color: wheat;
                            padding:4px 12px;
                            height:45px;
                            margin-bottom:45px;
                            display:inline-block;
                        }
            
                        #flip div:first-child {
                            animation: show 5s linear infinite;
                        }
            
                        #flip div div {
                            background:#566573;
                            color: #34ce57;
                        }
                        #flip div:first-child div {
                            background: #17202A ;
                            color: blue;
                        }
                        #flip div:last-child div {
                            background:#EAECEE ;
                            color: #22B24C;
                        }
            
                        @keyframes show {
                            0% {margin-top:-270px;}
                            5% {margin-top:-180px;}
                            33% {margin-top:-180px;}
                            38% {margin-top:-90px;}
                            66% {margin-top:-90px;}
                            71% {margin-top:0px;}
                            99.99% {margin-top:0px;}
                            100% {margin-top:-270px;}
                        }*/
            /*-----------------Notice css----------------------*/

            #social:hover{
                border-radius: 50%;
                background-color: wheat;
            }
        </style>
    </head>


    <body style="background-color:darkgray; ">

        <div>
            <div>
                <div  class="affix-top" data-spy="affix" data-offset-top="564">
                    <a href="#"><img src="${images}/logoMain.jpg" style="height: 50px; width: 300px; padding-left:90px; padding-top: -5px;"/></a> 
                    <span id="mainName">Dhuliapur High School</span> 
                    <span style="margin-left: 50px">Call:<a href="callto://01741425152" title="Call us">+880-1741-425152</a></span> 
                    <span id="social" style="padding-left: 0px;"><a href="#" target="_blank" title="facebook" class="fa fa-facebook"></a></span>
                    <span id="social" ><a href="#" target="_blank" title="twitter" class="fa fa-twitter"></a></span>
                    <span id="social"><a href="#" target="_blank" title="google" class="fa fa-google"></a></span>
                    <span id="social"> <a href="#" target="_blank" title="linkedin" class="fa fa-linkedin"></a></span>
                    <span id="social"><a href="#" target="_blank" title="Skype" class="fa fa-skype"></a></span>
                </div>

                <div class="container container" style="background-color:seashell; padding: 0px">
                    <nav class="navbar navbar-inverse" style="background-color:#186105;font-size: 150%;color: white; font-family: 'Times New Roman', Times, serif;">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="collapse navbar-collapse" id="myNavbar">
                                <ul class="nav navbar-nav">
                                    <!-- <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li> -->

                                    <!--Home start-->
                                    <li>
                                        <div class="dropdown">
                                            <a href="home"><button class="dropbtn">Home</button></a>
                                        </div>
                                    </li>
                                    <!--Home end -->
                                    <!--About start-->
                                    <li>
                                        <div class="dropdown">
                                            <a href="#aboutId"><button class="dropbtn">About</button> </a>

                                            <div class="dropdown-content" >
                                                <nav>
                                                    <ul style="padding-left: 0px;">
                                                        <li><a href="#aboutIdFirst">History of This institution</a></li>
                                                        <li><a href="#aboutIdSecond">Our Future Plan</a></li>
                                                        <li><a href="#aboutIdThird">Our Achievements</a></li>
                                                    </ul>
                                                </nav>
                                            </div>
                                        </div>

                                    </li>
                                    <!--About end-->
                                    <!--Administration start-->
                                    <li>
                                        <div class="dropdown">
                                            <a href="#administrationId"><button class="dropbtn">Administration</button></a>  
                                            <div class="dropdown-content" >
                                                <nav>
                                                    <ul style="padding-left: 0px;">
                                                        <li><a href="#principalId">Meet our Principal</a></li>
                                                        <li><a href="#governingbodyId">Meet Governing Body</a></li>
                                                        <li><a href="#">Staff Directory</a></li>
                                                    </ul>
                                                </nav>
                                            </div>

                                        </div>
                                    </li>
                                    <!--Administration end-->
                                    <li>
                                        <div class="dropdown">
                                            <a href="#"><button class="dropbtn">Parents Portal</button></a>
                                            <div class="dropdown-content" >
                                                <nav>
                                                    <ul style="padding-left: 0px;">
                                                        <li><a href="#">Parents News</a></li>
                                                        <li><a href="#">Class Report</a></li>
                                                        <li><a href="#">Principal's Voice </a></li>
                                                        <li><a href="#">Guideline for Admission</a></li>
                                                    </ul>
                                                </nav>
                                            </div>
                                        </div>
                                    </li>
                                    <!--Gallery start -->
                                    <li>
                                        <div class="dropdown">
                                            <a href="#"><button class="dropbtn">Gallery</button></a>
                                        </div>
                                    </li>
                                    <!--Gallery end-->
                                    <!--Admission start -->
                                    <li>
                                        <div class="dropdown">
                                            <a href="#"><button class="blinking dropbtn">Admission</button></a>  
                                        </div>
                                    </li>
                                    <!--Admission end-->

                                    <!--Contact us start -->
                                    <li>
                                        <div class="dropdown">
                                            <a href="#"><button class="dropbtn">Contact</button> </a> 
                                        </div>

                                    </li>
                                    <!--Contact us end-->
                                </ul>
                                <ul class="nav navbar-nav navbar-right">
                                    <li style="padding-top: 6px;">
                                        <div class="search">
                                            <input type="text" class="form-control input-sm" maxlength="64" placeholder="Search" />
                                            <button type="submit" class="btn btn-default btn-sm" style="background-color: #186105;font-size: 16px;">Search</button>
                                        </div>
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;</li>
                                    <li style="float: right;"><a href="${contextRoot}/home/gotologin"><span class=""></span>Login</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>

            <div class="container container" style="background-color:seashell; padding: 0px">
                <div class="container-fluid text-center">
                    <div class="row content">
                        <div class="col-sm-1 sidenav" style="height: inherit">
                            <h5>Quick_Links:</h5>                            
                            <p><a href="#aboutId">About</a></p>
                            <p><a href="#">History</a></p>
                            <p><a href="#">Teachers</a></p>
                            <p><a href="#">Students</a></p>
                            <p><a href="#">Parents</a></p>
                            <p><a href="#">Admission</a></p>
                            <p><a href="#">Results</a></p>
                        </div>
                        <div class="col-sm-10 text-left" style="background-color: #D3D3D3">  

                            <!--image slider start-->
                            <div class="container-fluid">
                                <div class="container-fluid">
                                    <div>
                                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                            <!-- Indicators -->
                                            <ol class="carousel-indicators">
                                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                                <li data-target="#myCarousel" data-slide-to="3"></li>
                                                <li data-target="#myCarousel" data-slide-to="4"></li>
                                                <li data-target="#myCarousel" data-slide-to="5"></li>
                                                <li data-target="#myCarousel" data-slide-to="6"></li>
                                            </ol>

                                            <!-- Wrapper for slides -->
                                            <div class="carousel-inner">
                                                <div class="item active">
                                                    <img src="${images}/slider1.jpg" alt="Los Angeles" style="width:100%; height: 300px">
                                                </div>

                                                <div class="item">
                                                    <img src="${images}/slider3.jpg" alt="Chicago" style="width:100%; height: 300px">
                                                </div>

                                                <div class="item">
                                                    <img src="${images}/slider2.jpg" alt="New york" style="width:100%; height: 300px">
                                                </div>
                                                <div class="item">
                                                    <img src="${images}/slider4.jpg" alt="New york" style="width:100%; height: 300px">
                                                </div>
                                                <div class="item">
                                                    <img src="${images}/slider5.jpg" alt="New york" style="width:100%; height: 300px">
                                                </div>
                                                <div class="item">
                                                    <img src="${images}/slider6.jpg" alt="New york" style="width:100%; height: 300px">
                                                </div>
                                                <div class="item">
                                                    <img src="${images}/slider7.jpg" alt="New york" style="width:100%; height: 300px">
                                                </div>
                                            </div>

                                            <!-- Left and right controls -->
                                            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                                <span class="glyphicon glyphicon-chevron-left"></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                                <span class="glyphicon glyphicon-chevron-right"></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--image slider end-->
                        </div>
                        <div class="col-sm-1 sidenav" style="height: inherit">
                            <div class="well">
                                <p>ADS</p>
                            </div>
                            <div class="well">
                                <p>ADS</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!--elaboration starts-->


                <div class="container text-center" style="background-color: #f1f1f1; margin-left: 0px">    
                    <h3><b style="color: #dc3545">Notice Board: </b> Important notice about our school</h3><br>
                    <!----------------Notice------------------->
                    <!--                    <h3><b style="color: #dc3545">Notice Board:
                                                <div id="flip">
                                                    <div><div>Important notice about our school</div></div>
                                                    <div><div>Important notice about our school</div></div>
                                                    <div><div>Important notice about our school</div></div>
                                                </div>
                                        </h3>-->
                    <!----------------Notice------------------->
                    <div class="row" style="background-color: #E7EECD;">
                        <div class="col-sm-4 well-lg" style="background-color: #E7EECD;">                               
                            <div class="panel panel-primary">
                                <div class="panel-heading">Academic Curriculum Notice:</div>                  
                                <ol style="text-align: left; color: black">
                                    <br>
                                    <li>
                                        <a href="#"> Mid-term will be held later this month, Exam may delay for COVID-19, check for exam -schedule.</a>
                                    </li>
                                    <br>
                                    <li>
                                        <a href="#"> Eid-ul-Azaha holiday for 10 days, check notice.</a>
                                    </li>
                                    <br>
                                    <li>
                                        <a href="#"> Board exam result notice.</a>
                                    </li>
                                    <br>
                                    <li>
                                        <a href="#"> Board exam result notice.</a>
                                    </li>
                                </ol>
                            </div>
                        </div>
                        <div class="col-sm-4 well-lg" style="background-color: #E7EECD;"> 
                            <div class="panel panel-primary">
                                <div class="panel-heading">Sports Notice:</div>                  
                                <ol style="text-align: left; color: black">
                                    <br>
                                    <li>
                                        <a href="#"> Annual Sports will be held with in a short notice. All Participents are requested to prepare for best outcome in their area.</a>
                                    </li>
                                    <br>
                                    <li>
                                        <a href="#"> Upozila vollyball competition will held 17 august. check the short list.</a>
                                    </li>
                                    <br>
                                    <li>
                                        <a href="#"> inter district cricket tournament will be held 28/08/2020 against XX.</a>
                                    </li>
                                </ol>
                            </div>
                        </div>
                        <div class="col-sm-4 well-lg" style="background-color: #E7EECD;">                                                  
                            <div class="panel panel-primary">
                                <div class="panel-heading">Miscellaneous Notice:</div>                  
                                <ol style="text-align: left; color: black">
                                    <br>
                                    <li>
                                        <a href="#"> Monthly Gurdgian meeting will be held later this month. </a>
                                    </li>
                                    <br>
                                    <li>
                                        <a href="#"> Zila education officer visiting notice.</a>
                                    </li>
                                    <br>
                                    <li>
                                        <a href="#"> Governing body meeting.</a>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <!--elaboration ends-->

                <!--About page start-->
                <div style="background-color: #E7EECD ">
                    <div id="aboutId">
                        <h1 style="text-align: center; padding-top: 50px"><b>About Us</b></h1>
                    </div>
                    <div id="aboutIdFirst" class="panel panel-primary" style=" margin: 20px">  
                        <br>
                        <div>
                            <h3>History of This institution:</h3>
                            <p style="margin: 30px; font-size: 18px">London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.
                                Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.
                                Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.
                                Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
                        </div>

                    </div> 
                    <div id="aboutIdSecond" class="panel panel-primary" style=" margin: 20px">   
                        <div>
                            <h3>Our Future Plan:</h3>
                            <p style="margin: 30px; font-size: 18px">London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.
                                Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.
                                Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
                        </div>

                    </div> 
                    <div id="aboutIdThird"  class="panel panel-primary" style=" margin: 20px">  
                        <div>
                            <h3>Our Achievements:</h3>
                            <p style="margin: 30px; font-size: 18px">London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.
                                Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.
                                Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
                        </div>

                    </div> 
                    <br>
                </div>
                <!--About page ends-->
                <!--Administration page start-->
                <div style="background-color: #E7EECD;">
                    <div id="administrationId">
                        <h1 style="text-align: center; padding-top: 50px"><b>Administration</b></h1>
                    </div>
                    <br>
                    <div class="container">
                        <div id="principalId" class="row">
                            <div><h3>Meet with Principal:</h3></div>
                            <div class="col-sm-4">
                                <div class="panel panel-primary">
                                    <div class="panel-heading"><h3>Mr. Joydev Ghosh</h3></div>
                                    <div class="panel-body"><img src="${images}/sir_10.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                                    <div class="panel-footer"><a href="mailto://joydev@gmail.com">Email:</a> / <a href="callto://01741425152" title="Call:">+880-6454517545</a></div>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">Details about Mr. Joydev</div>
                                </div>
                                <div>
                                    <p> London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
                                    <p>Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
                                    <p> Standing on the River Thames, London has been a major settlement for two millennia,</p>
                                </div>

                            </div>
                        </div>  
                        <div id="governingbodyId">
                            <div><h3 style="text-align: center">Meet Governing Body:</h3></div>
                            <br>
                            <div  class="row">
                                <div class="col-sm-4">
                                    <div class="well-lg">
                                        <div class="panel-heading"><b>President:</b> Mr. Abdur Rahman</div>
                                        <div class="panel-body"><img src="${images}/sir_4.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                                        <div class="panel-footer"><a href="mailto://joydev@gmail.com">Email:</a> / <a href="callto://01741425152" title="Call:">+880-6454517545</a></div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="well-lg">
                                        <div class="panel-heading"><b> Vice President:</b>  Mr. Abdur Rahman</div>
                                        <div class="panel-body"><img src="${images}/sir_4.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                                        <div class="panel-footer"><a href="mailto://joydev@gmail.com">Email:</a> / <a href="callto://01741425152" title="Call:">+880-6454517545</a></div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="well-lg">
                                        <div class="panel-heading"><b>Member of Governing Body:</b> Mr. Abdur Rahman</div>
                                        <div class="panel-body"><img src="${images}/sir_4.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                                        <div class="panel-footer"><a href="mailto://joydev@gmail.com">Email:</a> / <a href="callto://01741425152" title="Call:">+880-6454517545</a></div>
                                    </div>
                                </div>                               
                            </div>
                            <br>
                            <div  class="row">
                                <div class="col-sm-4">
                                    <div class="well-lg">
                                        <div class="panel-heading"><b>Member of Governing Body:</b>Mr. Abdur Rahman</div>
                                        <div class="panel-body"><img src="${images}/sir_4.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                                        <div class="panel-footer"><a href="mailto://joydev@gmail.com">Email:</a> / <a href="callto://01741425152" title="Call:">+880-6454517545</a></div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="well-lg">
                                        <div class="panel-heading"><b>Member of Governing Body:</b>Mr. Abdur Rahman</div>
                                        <div class="panel-body"><img src="${images}/sir_4.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                                        <div class="panel-footer"><a href="mailto://joydev@gmail.com">Email:</a> / <a href="callto://01741425152" title="Call:">+880-6454517545</a></div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="well-lg">
                                        <div class="panel-heading"><b>Member of Governing Body:</b>Mr. Abdur Rahman</div>
                                        <div class="panel-body"><img src="${images}/sir_4.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                                        <div class="panel-footer"><a href="mailto://joydev@gmail.com">Email:</a> / <a href="callto://01741425152" title="Call:">+880-6454517545</a></div>
                                    </div>
                                </div>                               
                            </div>
                        </div>
                    </div>

                </div>               
                <!--Administration page ends-->
                <!--Gallery page start-->



                <!--Gallery page ends-->

                <!--Footer page start-->
                <!-- Footer -->
                <footer class="page-footer font-small unique-color-dark">

                    <div style="background-color: #6351ce;">
                        <div class="container">

                            <!-- Grid row-->
                            <div class="row py-4 d-flex align-items-center">

                                <!-- Grid column -->
                                <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                                    <h6 class="mb-0">Get connected with us on social networks!</h6>
                                </div>
                                <!-- Grid column -->

                                <!-- Grid column -->
                                <div class="col-md-6 col-lg-7 text-center text-md-right">

                                    <!-- Facebook -->
                                    <a class="fb-ic">
                                        <i class="fab fa-facebook-f white-text mr-4"> </i>
                                    </a>
                                    <!-- Twitter -->
                                    <a class="tw-ic">
                                        <i class="fab fa-twitter white-text mr-4"> </i>
                                    </a>
                                    <!-- Google +-->
                                    <a class="gplus-ic">
                                        <i class="fab fa-google-plus-g white-text mr-4"> </i>
                                    </a>
                                    <!--Linkedin -->
                                    <a class="li-ic">
                                        <i class="fab fa-linkedin-in white-text mr-4"> </i>
                                    </a>
                                    <!--Instagram-->
                                    <a class="ins-ic">
                                        <i class="fab fa-instagram white-text"> </i>
                                    </a>

                                </div>
                                <!-- Grid column -->

                            </div>
                            <!-- Grid row-->

                        </div>
                    </div>
            </div>
            <!-- Footer Links -->
            <div class="container text-center text-md-left mt-5">

                <!-- Grid row -->
                <div class="row mt-3">

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

                        <!-- Content -->
                        <h6 class="text-uppercase font-weight-bold">Company name</h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>Here you can use rows and columns to organize your footer content. Lorem ipsum dolor sit amet,
                            consectetur
                            adipisicing elit.</p>

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

                        <!-- Links -->
                        <h6 class="text-uppercase font-weight-bold">Products</h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <a href="#!">MDBootstrap</a>
                        </p>
                        <p>
                            <a href="#!">MDWordPress</a>
                        </p>
                        <p>
                            <a href="#!">BrandFlow</a>
                        </p>
                        <p>
                            <a href="#!">Bootstrap Angular</a>
                        </p>

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

                        <!-- Links -->
                        <h6 class="text-uppercase font-weight-bold">Useful links</h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <a href="#!">Your Account</a>
                        </p>
                        <p>
                            <a href="#!">Become an Affiliate</a>
                        </p>
                        <p>
                            <a href="#!">Shipping Rates</a>
                        </p>
                        <p>
                            <a href="#!">Help</a>
                        </p>

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

                        <!-- Links -->
                        <h6 class="text-uppercase font-weight-bold">Contact</h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <i class="fas fa-home mr-3"></i> New York, NY 10012, US</p>
                        <p>
                            <i class="fas fa-envelope mr-3"></i> info@example.com</p>
                        <p>
                            <i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
                        <p>
                            <i class="fas fa-print mr-3"></i> + 01 234 567 89</p>

                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->

            </div>
            <!-- Footer Links -->

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3">© 2020 Copyright:
                <a href="https://mdbootstrap.com/"> MDBootstrap.com</a>
            </div>
            <!-- Copyright -->

        </footer>
        <!-- Footer -->

        <!--Footer page ends-->




    </div>
</div>




</body>

</html>
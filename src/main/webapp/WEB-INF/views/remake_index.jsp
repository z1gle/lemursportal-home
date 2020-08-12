<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>
<c:url value="/resources" var="resourcesPath" />
<c:url value="/" var="path" />
<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en" class="no-js">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <link rel="icon" href="${resourcesPath}/img/favicon.ico" type="image/x-icon">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><spring:message code="home.pageTitle" /></title>
        <meta name="description" content="">
        <meta name="keywords"
              content="Madagascar lemursportal, portail des l&eacute;muriens">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link
            href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700'
            rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="${resourcesPath}/css/font-awesome.min.css">

        <link rel="stylesheet" href="${resourcesPath}/css/jquery.fancybox.css">

        <link rel="stylesheet" href="${resourcesPath}/css/bootstrap.min.css">

        <link rel="stylesheet" href="${resourcesPath}/css/owl.carousel.css">

        <link rel="stylesheet" href="${resourcesPath}/css/owl.theme.css">

        <link rel="stylesheet" href="${resourcesPath}/css/slit-slider.css">

        <link rel="stylesheet" href="${resourcesPath}/css/animate.css">

        <link rel="stylesheet" href="${resourcesPath}/css/main.css">

        <link rel="stylesheet" href="${resourcesPath}/css/li-scroller.css">

        <script src="https://cdn.jsdelivr.net/npm/tail.select@0.5.11/js/tail.select-full.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tail.select@0.5.11/css/tail.select-default.css">

<!--link rel="stylesheet" href="${resourcesPath}/css/styles.css"-->


        <script src="${resourcesPath}/js/modernizr-2.6.2.min.js"></script>
        <style type="text/css">
            a.read-more {
                color: black /*#74ac00*/;
            }

            a.read-more:hover {
                text-decoration: underline;
                color: #000;
            }

            .show-read-more .more-text, .home-bio p .more-text {
                display: none;
            }
        </style>
    </head>

    <body id="body">

        <!-- preloader 
        <div id="preloader">
            <div class="loder-box">
                <div class="battery"></div>
            </div>
        </div>
         end -->
        <!-- Navigation -->
        <header id="navigation"
                class="navbar-inverse animated-header navbar-fixed-top">
            <div class="container">

                <!-- TOPBAR -->
                <div class="topbar">
                    <ul>
                        <c:set value="${pageContext.request.userPrincipal.name != null}" var="isLoggedInUser"/>
                        <c:choose>
                            <c:when test="${isLoggedInUser}">
                                <c:url var="viewProfilUrl" value="/user/profil"></c:url>
                                <c:url var="imgProfilUrl" value="/forum"></c:url>
                                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                                            aria-haspopup="true" aria-expanded="false"> 
                                            <img src="https://www.lemursportal.org/forum/resources${currentUser.photoProfil}" class="img-circle"/> 
                                        <%--                     		<spring:message code="login.signup"/> --%>
                                        Welcome, ${currentUser.prenom} <i class="fa fa-caret-down"></i></a>

                                    <ul class="dropdown-menu">
                                        <li><a href="https://www.lemursportal.org/forum/user/profil"> 
                                                <i class="fa fa-edit fa-fw"></i> My account</a></li>
                                        <li class="divider"></li>
                                        <li><a href="https://www.lemursportal.org/species/modification-observations"> 
                                                <i class="fa fa-align-left"></i> My data</a></li>
                                        <li class="divider"></li>
                                        <li>
                                            <span style="display:none;">
                                                <c:url value="/logout" var="logoutUrl" />
                                                <form action="${logoutUrl}" method="post" id="logoutForm">
                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                           value="${_csrf.token}" />
                                                </form>
                                                <!--                                 verification dev mode -->
                                                <c:set var="port" value="" />
                                                <c:if test="${req.getServerPort() != '80' || req.getServerPort() != '443'}">
                                                    <c:set var="port" value=":${req.getServerPort()}" />
                                                </c:if>
                                                <script>
                                                    function formSubmit() {
                                                        //logout also species databases
                                                        $.post("https://www.lemursportal.org/species/logout", function () {
                                                            $.post("https://www.lemursportal.org/forum/logout", function () {
                                                                document.getElementById("logoutForm").submit();
                                                            });
                                                        }).fail(function () {
                                                            alert('Error!');
                                                        });
                                                    }
                                                </script>
                                            </span>
                                            <a href="javascript:formSubmit();"><i
                                                    class="fa fa-power-off fa-fw"></i><spring:message code="home.logout"/></a>
                                        </li>
                                    </ul>
                                </li>

                            </c:when>
                            <c:otherwise>
                                <%--                         <c:url value="/signup" var="signupUrl"/> --%>
                                <c:url value="/forum/signup" var="signupUrl"/>
                                <li class=""><a href="${signupUrl}"><i
                                            class="fa fa-user fa-fw"></i> <spring:message code="login.signup"/></a></li>
                                        <%--                             <c:url value="/login" var="loginUrl"/> --%>
                                        <c:url value="/login" var="loginUrl"/>
                                <li class=""><a href="${loginUrl}"><i
                                            class="fa fa-sign-in fa-fw"></i> <spring:message code="home.login"/></a></li>
                                    </c:otherwise>
                                </c:choose>
                        <li class="dropdown language" id="lang-select"><a
                                href="#"
                                class="dropdown-toggle" data-toggle="dropdown" role="button"
                                aria-haspopup="true" aria-expanded="false"> <i
                                    class="fa fa-globe"></i><span>EN </span><i class="fa fa-caret-down"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="active" id="en"><a
                                        href="#">English</a>
                                </li>
                                <li  id="fr"><a href="#">Français</a></li>
                                <li  id="mg"><a href="#">Malagasy</a></li>
                            </ul></li>
                    </ul>
                </div>
                <div class="navbar-header">
                    <!-- responsive nav button -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span
                            class="icon-bar"></span> <span class="icon-bar"></span> <span
                            class="icon-bar"></span>
                    </button>
                    <!-- /responsive nav button -->

                    <!-- logo -->
                    <h1 class="navbar-brand">
                        <a href="/"><img
                                src="${resourcesPath}/img/Logo_LemursPortal_Final.png" alt="<spring:message code="home.pageTitle" />" /></a>
                    </h1>
                    <!-- /logo -->
                </div>
                <!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="navigation">
                    <ul id="nav" class="nav navbar-nav">
                        <li class="act"><a href="#"><spring:message code="menu.home" /></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                Forum <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="https://www.lemursportal.org/forum" onclick="window.location = 'https://www.lemursportal.org/forum'">Publier</a></li>
                                <li class="divider"></li>
                                <li><a href="https://www.lemursportal.org/forum/documents" onclick="window.location = 'https://www.lemursportal.org/forum/documents'"><spring:message code="home.document" /></a></li>
                                <li class="divider"></li>
                                <li>
                                    <a href="https://www.lemursportal.org/forum/experts"  onclick="window.location = 'https://www.lemursportal.org/forum/experts'">
                                        <spring:message code="menu.experts" />
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="https://www.lemursportal.org/forum/formation/" onclick="window.location = 'https://www.lemursportal.org/forum/formation/'">Opportunités</a></li>
                            </ul>
                        </li>
                        <li><a href="https://www.lemursportal.org/species/taxonomi" onclick="window.location = 'https://www.lemursportal.org/species/taxonomi'"><spring:message code="menu.species" /></a></li>
                        <li><a href="https://www.lemursportal.org/species/darwinportal" onclick="window.location = 'https://www.lemursportal.org/species/darwinportal'"><spring:message code="home.header.observations" /></a></li>
                        <li><a href="https://www.lemursportal.org/species/visualisation" onclick="window.location = 'https://www.lemursportal.org/species/visualisation'"><spring:message code="home.header.map" /></a></li>
                            <c:url var="graphics" value="/graphics"></c:url>
                        <li><a href="${graphics}" onclick="window.location = '${graphics}'">Graphiques</a></li>
                        <!--<li><a href="https://www.lemursportal.org/forum/documents#tab-item-4" onclick="window.location = 'https://www.lemursportal.org/forum/documents#tab-item-4'">Galerie</a></li>-->
                        <c:if test="${isLoggedInUser}">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle"
                                   data-toggle="dropdown" role="button"
                                   aria-haspopup="true" aria-expanded="false"> 
                                    <span><spring:message code="home.header.contribute" /></span>
                                    <i class="fa fa-caret-down"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="">
                                        <a href="#" data-toggle='modal' data-target='#modal-upload-darwincore'><spring:message code="home.header.addObservations" /></a>
                                    </li>
                                    <li>
                                        <a href="#" data-toggle='modal' data-target='#modal-ajout-document' ><spring:message code="home.header.addDocument" /></a>
                                    </li>
                                </ul>
                            </li>
                        </c:if>

                        <!--                        <li class="dropdown">
                                                    <a href="#" class="dropdown-toggle"
                                                        data-toggle="dropdown" role="button"
                                                        aria-haspopup="true" aria-expanded="false"> 
                                                        <span>More</span>
                                                        <i class="fa fa-caret-down"></i>
                                                    </a>
                                                    <ul class="dropdown-menu">
                                                        <li class="active">
                                                            <a href="#">Test</a>
                                                        </li>
                                                        <li  id="fr">
                                                            <a href="#">test</a>
                                                        </li>
                                                    </ul>
                                                </li>-->
                        <!--                        <li>
                                                    <a href="#number"><spring:message code="menu.number" /></a>
                                                </li>-->
                    </ul>
                </nav>
                <!-- /main nav -->
            </div>
            <ul id="alert-list">
                <li id="alert-text"></li>
            </ul>
        </header>


        <main class="site-content" role="main"> <!-- Slider -->

            <section id="">
                <style>
                    .banniere {
                        height: 50vh;
                        background-image: url(https://www.lemursportal.org/resources/img/slider/cinelli.jpeg);
                        margin-top: -70px;
                    }

                    #searchs {
                        margin-top: -50px;
                    }
                </style>
                <div class="banniere">


                    <div class="bg-img bg-img-5"></div>
                    <div class="slide-caption" style="min-height: 60vh; height: 60vh;">
                        <div class="caption-content">
                            <h2><spring:message code="slider.lemursportal" /></h2>
                            <span><spring:message code="slider.lemursportal.txt" /></span> 
                            <a style="background-color: #642f1dc4;" 
                               href="https://www.lemursportal.org/forum/signup?lang=${pageContext.response.locale.language}"
                               class="btn btn-blue btn-effect">
                                <spring:message code="slider.join_us" />
                            </a>
                        </div>
                    </div>


                </div>

                <!--                <div id="slider" class="sl-slider-wrapper">
                
                                    <div class="sl-slider">
                
                                        <div class="sl-slide" data-orientation="horizontal"
                                             data-slice1-rotation="3" data-slice2-rotation="3"
                                             data-slice1-scale="2" data-slice2-scale="2">
                
                                            <div class="bg-img bg-img-3"></div>
                                            <div class="slide-caption">
                                                <div class="caption-content">
                                                    <h2><spring:message code="slider.lemursportal" /></h2>
                                                    <span><spring:message code="slider.lemursportal.txt" /></span> <a href="https://www.lemursportal.org/forum/signup?lang=${pageContext.response.locale.language}"
                                                                                                                      class="btn btn-blue btn-effect"><spring:message code="slider.join_us" /></a>
                                                </div>
                                            </div>
                
                                        </div>
                
                                        <div class="sl-slide" data-orientation="horizontal"
                                             data-slice1-rotation="-25" data-slice2-rotation="-25"
                                             data-slice1-scale="3" data-slice2-scale="3">
                
                                            <div class="bg-img bg-img-1"></div>
                
                                            <div class="slide-caption">
                                                <div class="caption-content">
                                                    <h2><spring:message code="slider.lemursportal" /></h2>
                                                    <span><spring:message code="slider.lemursportal.txt" /></span> <a href="https://www.lemursportal.org/forum/signup?lang=${pageContext.response.locale.language}"
                                                                                                                      class="btn btn-blue btn-effect"><spring:message code="slider.join_us" /></a>
                                                </div>
                                            </div>
                
                                        </div>
                
                                        <div class="sl-slide" data-orientation="vertical"
                                             data-slice1-rotation="10" data-slice2-rotation="-15"
                                             data-slice1-scale="1.5" data-slice2-scale="1.5">
                
                                            <div class="bg-img bg-img-2"></div>
                                            <div class="slide-caption">
                                                <div class="caption-content">
                                                    <h2><spring:message code="slider.savelemurs" /></h2>
                                                    <span><spring:message code="slider.savelemurs.txt" /></span> 
                                                    <a href="https://www.lemursportal.org/forum/signup?lang=${pageContext.response.locale.language}" class="btn btn-blue btn-effect"><spring:message code="slider.join_us" /></a>
                                                </div>
                                            </div>
                
                                        </div>
                
                                        <div class="sl-slide" data-orientation="vertical"
                                             data-slice1-rotation="-14" data-slice2-rotation="-20"
                                             data-slice1-scale="-1.2" data-slice2-scale="3">
                
                                            <div class="bg-img bg-img-4"></div>
                                            <div class="slide-caption">
                                                <div class="caption-content">
                                                    <h2><spring:message code="slider.vision" /></h2>
                                                    <span><spring:message code="slider.vision.txt" /></span> 
                                                    <a href="https://www.lemursportal.org/forum/signup?lang=${pageContext.response.locale.language}" class="btn btn-blue btn-effect"><spring:message code="slider.join_us" /></a>
                                                </div>
                                            </div>
                
                                        </div>
                
                                    </div>
                                     /sl-slider 
                
                                    <nav id="nav-arrows"
                                         class="nav-arrows hidden-xs hidden-sm visible-md visible-lg">
                                        <a href="javascript:;" class="sl-prev"> <i
                                                class="fa fa-angle-left fa-3x"></i>
                                        </a> <a href="javascript:;" class="sl-next"> <i
                                                class="fa fa-angle-right fa-3x"></i>
                                        </a>
                                    </nav>
                
                
                                    <nav id="nav-dots"
                                         class="nav-dots visible-xs visible-sm hidden-md hidden-lg">
                                        <span class="nav-dot-current"></span> <span></span> <span></span> <span></span>
                                    </nav>
                
                                </div>-->
                <!-- /slider-wrapper -->
            </section>
            <style>
                .home__searchFilters a {
                    -webkit-box-flex: 1;
                    -ms-flex: 1 0 auto;
                    flex: 1 0 auto;
                    padding: 7px 7px 3px;
                    border-bottom: 2px solid transparent;
                    text-align: center;
                    font-size: 12px;
                    text-transform: uppercase;
                    color: white;
                }
                .home__searchFilters a:hover {
                    -webkit-box-flex: 1;
                    -ms-flex: 1 0 auto;
                    flex: 1 0 auto;
                    padding: 7px 7px 3px;
                    border-bottom: 2px solid transparent;
                    text-align: center;
                    font-size: 12px;
                    text-transform: uppercase;
                    color: #A18029;
                }
                .number-table{
                    margin-top:20px;
                    background-color: #A18029;
                    margin-bottom:20px;
                }
                *, :after, :before {
                    -webkit-box-sizing: border-box;
                    -moz-box-sizing: border-box;
                    box-sizing: border-box;
                }
                .home__searchFilters {
                    background: #d8b03f;
                    display: -webkit-box;
                    display: -ms-flexbox;
                    display: flex;
                    overflow: auto;
                    max-width: 700px;
                    color: #fff;
                }
                .home__header {
                    background-color: #71b171;
                    background-size: cover;
                    background-position: center;
                    color: #fff;
                    position: relative;
                }

                .noUnderline, .noUnderline:focus, .noUnderline:hover, a.inherit.noUnderline, a.inherit.noUnderline:focus, a.inherit.noUnderline:hover {
                    text-decoration: none;
                }
                .home .search-box {
                    max-width: 700px;
                }

                button, input, select, textarea {
                    font-family: inherit;
                    font-size: inherit;
                    line-height: inherit;
                }

                button, input {
                    color: inherit;
                    font: inherit;
                    margin: 0;
                }
                button, input {
                    font-size: 100%;
                }
                button, input{
                    vertical-align: baseline;
                }
                button, html, input, md-bottom-sheet .md-subheader{
                    font-family: Roboto,"Helvetica Neue",sans-serif;
                }
                .search-box input {
                    border: none;
                    padding-right: 1.42857142857rem;
                    width: 100%;
                    overflow: hidden;
                    text-overflow: ellipsis;
                }
                .search-box .search-box__submit {
                    position: absolute;
                    right: 0;
                    margin: 15px 22px;
                    top: 0;
                    font-size: 1.60714285714125rem;
                    border: none;
                    cursor: pointer;
                }
                .search-box{
                    background: #fff;
                    color: #444;
                    padding: 12px 20px;
                    max-width: 700px;
                    position: relative;
                    -webkit-transition: box-shadow .2s ease;
                    transition: box-shadow .2s ease;
                    box-shadow: 0 2px 2px 0 rgba(0,0,0,.16);
                }
                *, :after, :before {
                    -webkit-box-sizing: border-box;
                    -moz-box-sizing: border-box;
                    box-sizing: border-box;
                }
                div {
                    display: block;
                }
                .home__header__hero-text {
                    padding-bottom: 2rem;
                }
                .form {
                    height: 30px;
                }
                .w{
                    display: -webkit-box;
                    display: -ms-flexbox;
                    display: flex;
                    max-width: 700px;
                    color:grey;
                    padding-right: 1.42857142857rem;
                    margin: 0px 15px 10px 15px;
                    text-align: justify;
                    line-height: 30px;
                }
                html {
                    font-size: 12px;
                }
                html {
                    font-family: sans-serif;
                    -ms-text-size-adjust: 100%;
                    -webkit-text-size-adjust: 100%;
                }
                body.md-default-theme, body, html.md-default-theme, html {
                    color: rgba(0,0,0,0.87);
                    background-color: rgb(250,250,250);
                }
            </style>
            <!-- search section -->
            <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
            <div id="searchs" class="no-padding-bottom-section">
                <div class="container">
                    <div class="row">
                        <h4 class="w">
                            <spring:message code="home.description" />
                        </h4>

                        <div class="home__header__hero-text">
                            <div ng-app="">
                                <div class="home__searchFilters">
                                    <c:url var="documentslist" value="https://www.lemursportal.org/forum/documents?search=${keyword}"></c:url>
                                    <a href="${documentslist}{{s}}"><spring:message code="home.header.documents" /></a>
                                    <c:url var="specieslist" value="/results/specieslist?keyword=${keyword}"></c:url>
                                    <a href="${specieslist}{{s}}"><spring:message code="menu.species" /></a>
                                    <c:url var="occurrenceList" value="/results/occurrenceList?keyword=${keyword}"></c:url>
                                    <a href="${occurrenceList}{{s}}"><spring:message code="home.header.observations" /></a>
                                    <c:url var="expertslist" value="/results/expertslist?keyword=${keyword}"></c:url>
                                    <a href="${expertslist}{{s}}"><spring:message code="menu.experts" /></a> 
                                </div>
                                <div class="home__header__search-bar search-box">
                                    <c:url var="result" value="/results${keyword}"></c:url>
                                    <form method="get" class="form" action="${result}">
                                        <input type="text" name="keyword" ng-model="s"/> &nbsp;
                                        <button type="submit" class="search-box__submit fa fa-search btn-default"/>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div> 
                </div>
                <!-- end -->
                <!-- number section -->
                <div id="number" style="background-color: lightgray;">
                    <div class="container">
                        <div class="row">
                            <div class="text-center white animated fadeInDown">
                                <h2> <spring:message code="menu.number" /></h2>
                            </div>
                            <div class="col-md-3 animated fadeInUp">
                                <div class="number-table text-center">
                                    <span><spring:message code="text.users" /></span>
                                    <div class="value">
                                        <span></span> <span>${nbrUtilisateur}</span><br> <span><spring:message code="text.users.detail" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 animated fadeInUp" data-wow-delay="0.4s">
                                <div class="number-table text-center">
                                    <span><spring:message code="text.species" /></span>
                                    <div class="value">
                                        <span></span> <span>${nbrTaxonomi}</span><br> <span><spring:message code="text.species.detail" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 animated fadeInUp" data-wow-delay="0.8s">
                                <div class="number-table text-center">
                                    <span><spring:message code="text.obsercations" /></span>
                                    <div class="value">
                                        <span></span> <span>${nbrOccurrence}</span><br> <span><spring:message code="text.obsercations.detail" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 animated fadeInUp" data-wow-delay="0.8s">
                                <div class="number-table text-center">
                                    <span><spring:message code="home.document" /></span>
                                    <div class="value">
                                        <span></span> <span>${nbrDocument}</span><br> <span><spring:message code="home.available.document" /></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end --> 
                <!--            <div class="row text-center pad-top-20" style="background: #f8f8f8;padding: 25px 0;">
                                <div class="sec-title text-center animated fadeInDown" style="margin-bottom: 0px !important">
                                    <style type="text/css" media="screen">
                                        .inat-widget { font-family: Georgia, serif; padding: 10px; line-height: 1;}
                                        .inat-widget-header {margin-bottom: 10px;}
                                        .inat-widget td {vertical-align: top; padding-bottom: 10px;}
                                        .inat-label { color: #888; }
                                        .inat-meta { font-size: smaller; margin-top: 3px; line-height: 1.2;}
                                        .inat-observation-body, .inat-user-body { padding-left: 10px; }
                                        .inat-observation-image {text-align: center;}
                                        .inat-observation-image, .inat-user-image { width: 48px; display: inline-block; }
                                        .inat-observation-image img, .inat-user-image img { max-width: 48px; }
                                        .inat-observation-image img { vertical-align: middle; }
                                        .inat-widget-small .inat-observation-image { display:block; float: left; margin: 0 3px 3px 0; height:48px;}
                                        .inat-label, .inat-value, .inat-user { font-family: "Trebuchet MS", Arial, sans-serif; }
                                        .inat-user-body {vertical-align: middle;}
                                        .inat-widget td.inat-user-body {vertical-align: middle;}
                                        .inat-widget .inat-footer td.inat-value {vertical-align: middle; padding-left: 10px;}
                                    </style>
                                    <div class="inat-widget">
                                        <div class="inat-widget-header">
                                            <a target="_blank" rel="noopener noreferrer" href="https://www.inaturalist.org"><img
                                                    alt="iNaturalist.org"
                                                    src="https://www.inaturalist.org/assets/logo-small-27dadf5468502c764c7a2cf8e30617d3.png" /></a>
                                        </div>
                                        <script type="text/javascript" charset="utf-8"
                                        src="https://www.inaturalist.org/observations/project/23226.widget?layout=small&limit=6&order=desc&order_by=observed_on"></script>
                                        <span>
                                            <a target="_blank" rel="noopener noreferrer" href="https://www.inaturalist.org/observations/project/23226">
                <spring:message code="view.observation.inaturalist.txt" /> <br><nobr>iNaturalist.org»</nobr>
            </a></span>
                                        <h2 class="animated bounceInLeft"></h2> 
         table class="inat-footer">
                <tr class="inat-user">
                        <td class="inat-value">&nbsp;</td>
                </tr>
        </table
    </div>
    </div>
    </div>-->
                <style>
                    .resized-img {
                        width: unset;
                        height: unset;
                        max-width: 12vw;
                        max-height: unset;
                    }
                    @media (max-width: 979px) and (min-width: 768px) {
                        .species-item {
                            width: unset;
                        }
                        .species-item figcaption {
                            display: none;
                        }
                        .species-item ul {
                            display: none;
                        }
                    }
                    .service-clickable:hover {
                        border: solid;
                        border-width: 3px;
                        border-radius: 5px;
                        border-color: #d3d3d34f;
                    }

                    .service-desc {
                        color: #818181 !important; 
                        display: none;
                    }

                    /*                .service-desc:hover {
                                        display: block;
                                    }*/

                    .new-second {
                        height: 22vh; 
                        overflow: hidden;
                        margin-top: 5px;
                        max-height: 150px;
                    }
                </style>
                <!--div class="row text-center pad-top-20">
                                  <div class="sec-title text-center animated fadeInDown">
                                        <a href="#" target="_blank" class=""><img src="img/googleplay.png"></a>
                                  </div>
                                </div--> <!-- species section -->
                <section id="species" style="padding: 20px 0; border-top: solid; 
                         border-width: 1px; border-color: lightgrey; margin-top: 25px;
                         background-color: #d3d3d314;">
                    <!--<div class="container">-->
                    <!--                <div class="row">
                    
                                                                <div class="sec-title text-center animated fadeInDown">
                                                                    <h2><spring:message code="menu.species" /></h2>
                                                                    <p></p>
                                                                </div>
                    
                    
                                        <ul class="project-wrapper animated fadeInUp">
                                            <li class="species-item"><img
                                                    src="${resourcesPath}/img/species/item.jpg" class="img-responsive resized-img"
                                                    alt="--">
                                            <figcaption class="mask">
                                                <h3>
                                                    <i>Varecia variegata subcincta</i>
                                                </h3>
                                                <p>--</p>
                                            </figcaption>
                                            <ul class="external">
                                                <li><a class="fancybox"
                                                       title="<i>Varecia variegata subcincta</i>"
                                                       data-fancybox-group="works"
                                                       href="${resourcesPath}/img/species/item.jpg"><i
                                                            class="fa fa-search"></i></a></li>
                                                <li><a href="species/getDetailTaxo?id=110"><i
                                                            class="fa fa-link"></i></a></li>
                                            </ul></li>
                    
                                            <li class="species-item"><img
                                                    src="${resourcesPath}/img/species/item2.jpg"
                                                    class="img-responsive resized-img" alt="--">
                                            <figcaption class="mask">
                                                <h3>
                                                    <i>Hapalemur alaotrensis</i>
                                                </h3>
                                                <p>--</p>
                                            </figcaption>
                                            <ul class="external">
                                                <li><a class="fancybox" title="<i>Hapalemur alaotrensis</i>"
                                                       href="${resourcesPath}/img/species/item2.jpg"
                                                       data-fancybox-group="works"><i class="fa fa-search"></i></a></li>
                                                <li><a href="species/getDetailTaxo?id=33"><i
                                                            class="fa fa-link"></i></a></li>
                                            </ul></li>
                    
                                            <li class="species-item"><img
                                                    src="${resourcesPath}/img/species/item3.jpg"
                                                    class="img-responsive resized-img" alt="--">
                                            <figcaption class="mask">
                                                <h3>
                                                    <i>Propithecus diadema</i>
                                                </h3>
                                                <p>--</p>
                                            </figcaption>
                                            <ul class="external">
                                                <li><a class="fancybox" title="<i>Propithecus diadema</i>"
                                                       data-fancybox-group="works" href="${resourcesPath}/img/species/item3.jpg"><i
                                                            class="fa fa-search"></i></a></li>
                                                <li><a href="species/getDetailTaxo?id=103"><i
                                                            class="fa fa-link"></i></a></li>
                                            </ul></li>
                    
                                            <li class="species-item"><img
                                                    src="${resourcesPath}/img/species/item4.jpg"
                                                    class="img-responsive resized-img" alt="--">
                                            <figcaption class="mask">
                                                <h3>
                                                    <i>Propithecus candidus</i>
                                                </h3>
                                                <p>--</p>
                                            </figcaption>
                                            <ul class="external">
                                                <li><a class="fancybox" title="<i>Propithecus candidus</i>"
                                                       data-fancybox-group="works" href="${resourcesPath}/img/species/item4.jpg"><i
                                                            class="fa fa-search"></i></a></li>
                                                <li><a href="species/getDetailTaxo?id=99"><i
                                                            class="fa fa-link"></i></a></li>
                                            </ul></li>
                    
                                            <li class="species-item"><img
                                                    src="${resourcesPath}/img/species/item5.jpg"
                                                    class="img-responsive resized-img" alt="--">
                                            <figcaption class="mask">
                                                <h3>
                                                    <i>Daubentonia madagascariensis</i>
                                                </h3>
                                                <p>--</p>
                                            </figcaption>
                                            <ul class="external">
                                                <li><a class="fancybox"
                                                       title="<i>Daubentonia madagascariensis</i>"
                                                       data-fancybox-group="works" href="${resourcesPath}/img/species/item5.jpg"><i
                                                            class="fa fa-search"></i></a></li>
                                                <li><a href="species/getDetailTaxo?id=20"><i
                                                            class="fa fa-link"></i></a></li>
                                            </ul></li>
                    
                                            <li class="species-item"><img
                                                    src="${resourcesPath}/img/species/item6.jpg"
                                                    class="img-responsive resized-img" alt="--">
                                            <figcaption class="mask">
                                                <h3>
                                                    <i>Indri indri</i>
                                                </h3>
                                                <p>--</p>
                                            </figcaption>
                                            <ul class="external">
                                                <li><a class="fancybox" title="<i>Indri indri</i>"
                                                       data-fancybox-group="works" href="${resourcesPath}/img/species/item6.jpg"><i
                                                            class="fa fa-search"></i></a></li>
                                                <li><a href="species/getDetailTaxo?id=40"><i
                                                            class="fa fa-link"></i></a></li>
                                            </ul></li>
                                        </ul>
                    
                                    </div>-->
                    <style>
                        .new-a {
                            color: gray;
                        }
                        .new-a:hover {
                            color: #A18029;
                        }
                    </style>
                    <div class="container">
                        <div class="row" style="height: 45vh; overflow: hidden; max-height: 300px;">
                            <div class="col-sm-8">
                                <a class="new-a" href="https://doi.org/10.1371/journal.pone.0216593">
                                    <div class="col-sm-7 col-md-7 col-lg-7">
                                        <img src="https://journals.plos.org/plosone/article/figure/image?size=inline&id=info:doi/10.1371/journal.pone.0216593.g001" alt="--">
                                    </div>
                                    <div class="col-sm-5 col-md-5 col-lg-5">
                                        <h3 style="margin-top: 0px;">A national survey of household pet lemur ownership in Madagascar</h3>
                                        <span>Primates are extracted from the wild for the pet trade across the world. In Madagascar, lemurs are kept as illegal pets and an understanding of lemur pet ownership at the national level is lacking. In 2013 and 2016, we undertook a national survey in 11 of Madagascar’s 22 administrative regions (n = 28 towns) with 1,709 households. To our knowledge, this is the first national survey of the household ownership of pet primates in a country where they are endemic. In the 1.5 years prior to being surveyed, 8% ± 4% (towns as replicates) of respondents had seen a captive lemur while a further 0.7% ± 0.5% of respondents had owned one personally. We estimate that 33,428 ± 24,846 lemurs were kept in Malagasy households in the six months prior to our survey efforts, with 18,462 ± 12,963 of these pet lemurs estimated in urban household alone. Rates of lemur ownership did not differ by province but increased with the human population of a town and with the popularity of the town on Flickr (a proxy indicator for tourism). We found that the visibility of pet lemur ownership did not differ across the country, but it did increase with the size of the town and popularity with tourists. Areas with visible pet lemurs were not always the areas with the highest rates of pet lemur ownership, highlighting that many pet lemurs are hidden from the general public. Our study highlights the need for conservation programs to consider both the proportion of inhabitants that own pet lemurs and the total number of lemurs that are potentially being kept as pets in those towns. We close by noting that for some species, even just a small amount of localized live extraction for pet ownership could be enough to cause localized population extinctions over time. Moreover, an urgent response is needed to combat a recent and alarming rise in illegal exploitation of biodiversity across Madagascar.</span>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-4">
                                <a class="new-a" href="https://www.rtl.fr/actu/debats-societe/madagascar-les-lemuriens-en-danger-7797625070?fbclid=IwAR0LwwlAIk7Qd_VdV8wZvUMvB_bt8N9irY57MWOd0xzLytvd4qwVnJZuLj8">
                                    <div class="row new-second">
                                        <div class="col-sm-6 col-md-8">
                                            <img src="https://cdn-media.rtl.fr/online/image/2019/0514/7797628415_les-lemuriens-de-madagascar-en-danger.jpg" alt="--">
                                        </div>
                                        <div class="col-sm-6 col-md-4">
                                            <h4>Madagascar : les lémuriens en danger</h4>
                                            <span>D'après l'ONU près d'1 million d'espèces seraient menacées d'extinction. À Madagascar, ce sont les lémuriens qui sont en première ligne.</span>
                                        </div>
                                    </div>
                                </a>
                                <a class="new-a" href="https://www.bbc.com/news/science-environment-48113501?fbclid=IwAR1ySxtvFP5lzcU3fMGPsBUMANbRlZ6I7b92dvI_HJpNipV0uCoJ4NQeUYY">
                                    <div class="row new-second">
                                        <div class="col-sm-8">
                                            <img src="https://ichef.bbci.co.uk/news/1024/branded_news/4B18/production/_106742291_mediaitem106742290.jpg" alt="--">
                                        </div>
                                        <div class="col-sm-4">
                                            <h4>Biodiversity heroes: The teenagers saving Madagascar's wildlife</h4>
                                            <span>The island nation of Madagascar has a dubious accolade: it is the world-leader in deforestation. Now, some of the island's teenagers have started a farming revolution - working to stop food production from destroying the island's rich rainforest.</span>
                                        </div>
                                    </div>
                                </a>
                                <!--                            <div class="row new-second">
                                                                <div class="col-sm-8">
                                                                    <img src="${resourcesPath}/img/species/item2.jpg" alt="--">
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <h4>Titre d'un new ou article etc ...</h4>
                                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</span>
                                                                </div>
                                                            </div>-->
                            </div>
                        </div>
                    </div>
                    <!--</div>-->
                </section>

                <!--                <section id="experts" class="parallax">
                                    <div class="overlay">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <img class="resized-img" src="https://www.lemursportal.org/forum/resources/profil/default.png" alt="Experts"></a>
                                                </div>
                                                <div class="col-md-10">
                                                    <span>${experts[0].nom} ${experts[0].prenom}</span>
                                                    <div class="show-read-more">${experts[0].biographie}</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>-->

                <!-- end --> 
                <!-- experts section -->
                <section id="experts" class="parallax">
                    <div class="overlay">
                        <div class="container">
                            <div class="row">

                                <div class="sec-title text-center white animated fadeInDown">
                                    <h2><a style="color: white;" href="https://www.lemursportal.org/forum/experts/"><spring:message code="menu.experts" /></a></h2>
                                </div>

                                <div id="expert" class=" animated fadeInUp">
                                    <c:forEach var="user" items="${experts}">
                                        <div class="expert-item text-center">
                                            <a href="https://www.lemursportal.org/forum/experts/${user.id}">
                                                <c:choose>
                                                    <c:when test="${empty user.photoProfil}">
                                                        <img src="https://www.lemursportal.org/forum/resources/profil/default.png" alt="Experts"></a>
                                                    </c:when>    
                                                    <c:otherwise>
                                                    <img src="https://www.lemursportal.org/forum/resources/profil/blanc.png" style="background-image: url('https://www.lemursportal.org/forum/resources/${user.photoProfil}');" alt="Experts"></a> 
                                                    <br />
                                                </c:otherwise>
                                            </c:choose>
                                            <!-- 							<div class="clearfix home-bio"> -->
                                            <div class="clearfix">
                                                <span>${user.nom} ${user.prenom}</span>
                                                <!-- p class="show-read-more">Biography: user.biographie</p-->
                                                <div class="show-read-more">${user.biographie}</div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>

                        </div>
                    </div>
            </div>
        </section>
        <!-- end --> 

        <style>
            .comment-feedback {
                color: white;
            }
        </style>
        <!--inaturalist section-->
        <section id="">
            <div class="">
                <div class="row">
                    <div class="row text-center pad-top-20" style="background: #f8f8f8;">
                        <div class="sec-title text-center animated fadeInDown" style="margin-bottom: 0px !important">
                            <style type="text/css" media="screen">
                                .inat-widget { font-family: Georgia, serif; line-height: 1;}
                                .inat-widget td {vertical-align: top; padding-bottom: 10px;}
                                .inat-label { color: #888; }
                                .inat-meta { font-size: smaller; margin-top: 3px; line-height: 1.2;}
                                .inat-observation-body, .inat-user-body { padding-left: 10px; }
                                .inat-observation-image {text-align: center;}
                                .inat-observation-image, .inat-user-image { width: 100px; display: inline-block; }
                                .inat-observation-image img, .inat-user-image img { max-width: 100px; }
                                .inat-observation-image img { vertical-align: middle; }
                                .inat-widget-small .inat-observation-image { display:block; float: left; margin: 0 3px 3px 0; height:48px;}
                                .inat-label, .inat-value, .inat-user { font-family: "Trebuchet MS", Arial, sans-serif; }
                                .inat-user-body {vertical-align: middle;}
                                .inat-widget td.inat-user-body {vertical-align: middle;}
                                .inat-widget .inat-footer td.inat-value {vertical-align: middle; padding-left: 10px;}
                                #inaturalist{
                                    margin-left:100px;
                                    margin-right:100px;
                                }
                                #img-inaturalist{
                                    margin: 40px;
                                }
                                #mobileapp{
                                    margin-top: 90px;
                                }
                                #mobileapp-img{
                                    margin: 10px; 
                                }
                            </style>
                            <div class="col-sm-7">
                                <div class="inat-widget">
                                    <div class="inat-widget-header">
                                        <a target="_blank" rel="noopener noreferrer" href="https://www.inaturalist.org"><img
                                                alt="iNaturalist.org"
                                                src="https://static.inaturalist.org/sites/1-logo.svg?1573071870" style="width:150px;height: 150px;"/></a>
                                    </div>
                                    <div id="inaturalist">
                                        <script type="text/javascript" charset="utf-8"
                                        src="https://www.inaturalist.org/observations/project/23226.widget?layout=small&limit=6&order=desc&order_by=observed_on"></script>
                                    </div>
                                    <div id="img-inaturalist">
                                        <span>
                                            <a target="_blank" rel="noopener noreferrer" href="https://www.inaturalist.org/observations/project/23226">
                                                <spring:message code="view.observation.inaturalist.txt" /> <br><nobr>iNaturalist.org»</nobr>
                                            </a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="inat-widget">
                                    <div id="mobileapp">
                                        <div id="">                                       
                                            <span><spring:message code="text.mobileapp" /></span>
                                        </div>
                                        <div>
                                            <a class="btn btn-success" href="${resourcesPath}/app/lemursportalapp.apk" style="margin-top:50px;"><spring:message code="download_mobile_app" /> <span><i class=""></i>
                                                </span></a>
                                        </div>
                                        <div class="">
                                            <a target="_blank" href="${resourcesPath}/app/Manuel-d'utilisation-AP-MLP" style="margin-top:100px;">
                                                <h4 style="font-size:12px;color:#A18029;"><spring:message code="manuel_ap_mlp" /><span><img src="${resourcesPath}/img/icons/pdf.png"/></span></h4>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="inat-widget">
                                    <div id="mobileapp-img">
                                        <div id="">                                       
                                            <span>
                                                <img src="${resourcesPath}/img/icons/icon_apk2.png" alt="<spring:message code="home.pageTitle" />" style="width:400px;height: 300px;"/>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section
        <!--Fin inaturalist section-->
        <!--How to section-->
        <!--            <section id="">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 animated fadeInUp">
                                    <h3>How to upload observations</h3>
                                    <span style="font-weight: 100;">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                                    </span>
                                </div>
                                <div class="col-md-6 animated fadeInUp" data-wow-delay="0.4s">
                                    <iframe style="height: 20vh; width: 100%;"
                                            src="https://www.youtube.com/embed/Hdi7OqUlEt8">
                                    </iframe>
                                </div>
                            </div>
                        </div>
                    </section>
        <!--Fin how to section-->
        <!-- Social section -->
        <section id="social" class="parallax">
            <div class="overlay">
                <div class="container">
                    <div class="row">
                        <div class="sec-title text-center white animated fadeInDown">
                            <h2><spring:message code="text.follow_us" /></h2>
                            <p><img src="${path}visit" alt="Nombre de visite"></p>
                            <p><h4 style="color:white;font-weight: bold;"><spring:message code="number.visit" /></h4></p>
                        </div>
                        <ul class="social-button">
                            <li class="animated zoomIn" data-wow-delay="0.3s"><a href="#"><i
                                        class="fa fa-twitter fa-2x"></i></a></li>
                            <li class="animated zoomIn" data-wow-delay="0.6s"><a href="#"><i
                                        class="fa fa-facebook-square fa-2x"></i></a></li>
                            <li class="animated zoomIn" data-wow-delay="0.6s"><a href="#"><i
                                        class="fa fa-youtube fa-2x"></i></a></li>
                        </ul>

                    </div>
                </div>
            </div>
        </section>
        <!-- end --> <!-- Contact section -->
        <section id="contact" style="background-color: lightgray;">
            <div class="container">
                <div class="row">

                    <div class="sec-title text-center animated fadeInDown">
                        <h2><spring:message code="menu.contact_us" /></h2>
                        <p></p>
                    </div>

                    <div style="text-align: center" class="animated fadeInRight">
                        <address class="contact-details">
                            <p>
                                <i class="fa fa-pencil"></i>Madagascar Lemurs Portal<span>Lot
                                    II K 44 Ankadivato</span> <span>Antananarivo 101</span><span>Madagascar</span>
                            </p>
                            <br>
                            <p>
                                <i class="fa fa-phone"></i>Phone: (+261 20) 22 605 13
                            </p>
                            <p>
                                <i class="fa fa-phone"></i>Fax : (+261 20) 22 621 44
                            </p>
                            <p>
                                <i class="fa fa-envelope"></i>lemursportal@gmail.com
                            </p>

                        </address>
                    </div>

                </div>
            </div>
        </section>
        <!-- end -->
        <section id="partner-area" style="padding: 10px 0 30px">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="block">
                            <div class="block-heading">
                                <h2><spring:message code="our.partners" /></h2>
                            </div>
                        </div>	<!-- End of /.block -->
                        <div id="owl-example" class="owl-carousel">

                            <div> <a href="http://www.ecologie.gov.mg/" target="_blank"><img
                                        src="${resourcesPath}/logos/MEEF_logo.png"></a>
                            </div>
                            <div> <a href="http://www.tourisme.gov.mg/" target="_blank"><img
                                        src="${resourcesPath}/logos/05_2016-Logo-300x297.png"></a>
                            </div>
                            <div> <a href="#" target="_blank"><img
                                        src="${resourcesPath}/logos/logo_ADD.jpg"></a>
                            </div>
                            <div> <a href="https://www.aspinallfoundation.org/the-aspinall-foundation/working-around-the-world/madagascar/" target="_blank"><img
                                        src="${resourcesPath}/logos/logo_Aspinall.jpg"></a>
                            </div>
                            <div> <a href="https://www.dpz.eu/en/unit/sociobiology-homepage/study-sites/madagascar.html" target="_blank"><img
                                        src="${resourcesPath}/logos/logo_DPZ.jpg"></a>
                            </div>
                            <div> <a href="#" target="_blank"><img
                                        src="${resourcesPath}/logos/logo_DREEF-Atsinanana.jpg"></a>
                            </div>
                            <div> <a href="http://www.issedd-univ.mg/" target="_blank"><img
                                        src="${resourcesPath}/logos/logo_ISSEDD.png"></a>
                            </div>
                            <div> <a href="https://www.stonybrook.edu/commcms/centre-valbio/" target="_blank"><img
                                        src="${resourcesPath}/logos/logo_Valbio.jpg"></a>
                            </div>
                            <div> <a href="https://www.madagasikara-voakajy.org/" target="_blank"><img
                                        src="${resourcesPath}/logos/MV_logo.png"></a>
                            </div>
                            <div> <a href="https://www.peregrinefund.org/projects/madagascar-project" target="_blank"><img
                                        src="${resourcesPath}/logos/PGF_logo.png"></a>
                            </div>
                            <div> <a href="https://www.conservation.org/global/madagascar/Pages/default.aspx" target="_blank"><img
                                        src="${resourcesPath}/logos/CI_logo.png"></a>
                            </div>
                            <div> <a href="http://www.parcs-madagascar.com/" target="_blank"><img
                                        src="${resourcesPath}/logos/mnp.png"></a>
                            </div>
                        </div>	<!-- End of /.Owl-Slider -->
                    </div>	<!-- End of /.col-md-12 -->
                </div> <!-- End Of /.Row -->
            </div> <!-- End Of /.Container -->
        </section>	<!-- End of Section -->
        <section id="google-map">

            <div id="map-canvas" class="animated fadeInUp"></div>
        </section>

    </main>
    <div id="supWrapperToPreventFeedbackFlickering">
        <section id="supDonateWrapper">
            <div id="supColumnWrapper" class="x-hidden-focus">
                <div id="supDonateContainer">
                    <section id="supDT" class="ocDT">
                        <div id="supFBCont">
                            <form class="supStickyDonateMarginBottom" 
                                  data-support-available="true">
                                <div class="ocSmartDonateBegin x-hidden-focus" role="region">
                                    <div id="beginDonateHeader">
                                        Don't let lemurs disappear from the wild on our watch.</h2>
                                    </div>
                                    <div class="donateButtons">
                                        <a href="#"
                                           class="ocDonateButton"
                                           name="" type="button" data-bi-mto="">Donate</a>
                                    </div>
                                </div>
                            </form>
                            <div
                                class="ocDonateThxMessage ocHidden">
                                <h2>Thank you for your donation!</h2>
                            </div>
                        </div>
                    </section>
                </div>

                <a href="javascript:removeStickyDonate();" id="supDisableStickyFeedbackButton" class="">×</a>
            </div>
        </section>
    </div>
    <footer id="footer">
        <div class="container">
            <div class="row">

                <!-- 				<div class="col-md-1 animated" align="center" id="lg-footer"> -->
                <%-- 					<img src="${resourcesPath}/img/logo-lemurs-blanc.png" style="width: 75%; margin-left: 15px;" alt=""> --%>
                <!-- 				</div> -->

                <!-- 				<div class="col-md-2 animated fadeInUp" data-wow-delay="0.4s"> -->
                <!-- 					<ul style="padding-left: 20px;"> -->
                <!-- 						<li class="animated zoomIn"><a href="https://www.lemursportal.org/forum/">Post</a></li> -->
                <!-- 						<li class="animated zoomIn"><a href="https://www.lemursportal.org/forum/documents">Documents</a></li> -->
                <!-- 						<li class="animated zoomIn"><a href="https://www.lemursportal.org/forum/experts">Experts</a></li> -->
                <!-- 					</ul> -->
                <!-- 				</div> -->

                <!-- 				<div class="col-md-2 animated fadeInUp" data-wow-delay="0.4s"> -->
                <!-- 					<ul style="padding-left: 20px;"> -->
                <!-- 						<li class="animated zoomIn"><a href="https://www.lemursportal.org/forum/formation/">Opportunities</a></li> -->
                <!-- 						<li class="animated zoomIn"><a href="#">Help</a></li> -->
                <!-- 						li class="animated zoomIn"><a href="#">Mentions légales</a></li -->
                <!-- 						<li class="animated zoomIn"><a href="#contact">Contact</a></li> -->
                <!-- 					</ul> -->
                <!-- 				</div> -->

                <div class="col-md-5">
                    <div class="row">

                        <div class="col-xs-3 animated fadeInUp" data-wow-delay="0.4s">
                            <img src="${resourcesPath}/img/logo-lemurs-blanc.png" style="height: 78px; margin-left: 15px;" alt="">
                        </div>

                        <div class="col-xs-4 animated fadeInUp" data-wow-delay="0.4s">
                            <ul style="padding-left: 20px;">
                                <!-- 						<li class="animated zoomIn"><a href="www.lemursportal.org">Home</a></li> -->
                                <li class="animated zoomIn"><a
                                        href="https://www.lemursportal.org/forum/">Post</a></li>
                                <li class="animated zoomIn"><a
                                        href="https://www.lemursportal.org/forum/documents">Documents</a></li>
                                <li class="animated zoomIn"><a
                                        href="https://www.lemursportal.org/forum/experts">Experts</a></li>
                            </ul>
                        </div>
                        <div class="col-xs-4 animated fadeInUp" data-wow-delay="0.4s">
                            <ul style="padding-left: 20px;">
                                <li class="animated zoomIn"><a
                                        href="https://www.lemursportal.org/forum/formation/">Opportunities</a></li>
                                <li class="animated zoomIn"><a href="#">Help</a></li>
                                <!--li class="animated zoomIn"><a href="#">Mentions légales</a></li-->
                                <li class="animated zoomIn"><a href="#contact">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 animated fadeInUp" data-wow-delay="0.8s">
                    <div class="row" style="padding-left: 15px !important;">
                        <div class="col-xs-2">
                            <a href="http://www.fapbm.org/" target="_blank"><img
                                    src="${resourcesPath}/img/part1.png"></a>
                        </div>
                        <div class="col-xs-2">

                            <a href="http://www.gerp.mg" target="_blank"><img
                                    src="${resourcesPath}/img/part2.png"></a>
                        </div>
                        <div class="col-xs-2">
                            <a href="http://www.primate-sg.org/" target="_blank"><img
                                    src="${resourcesPath}/img/part3.png"></a>
                        </div>
                        <div class="col-xs-2">
                            <a href="http://madagascar.wcs.org" target="_blank"><img
                                    src="${resourcesPath}/img/part4.png"></a>
                        </div>
                        <div class="col-xs-2">
                            <a href="http://data.rebioma.net/" target="_blank"><img
                                    src="${resourcesPath}/img/part5.png"></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 animated fadeInUp" data-wow-delay="0.8s">
                    <a href="http://jrsbiodiversity.org/" class="donor" target="_blank"><img
                            src="http://jrsbiodiversity.org/wp-content/themes/zero/images/jrs-logo.svg"
                            style="border-radius: 4%; /*margin-top: 3%*/;padding:2%;"></a>
                </div>
            </div>
        </div>
        <div style="background: #2E2E2E; margin-top: 35px">
            <div class="row text-center">
                <div class="footer-content">
                    <p>Copyright &copy; - Lemurs Portal 2019</p>
                </div>
            </div>
    </footer>

    <style>
        .tail-select {
            width: 100%!important;
        }
    </style>
    <div id="modal-ajout-document" class="modal edit-profil-form">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title"><spring:message code="document.add_document.title"/></h4>
                </div>
                <form action="javascript:sendAddDocument();" autocomplete="off">
                    <div class="modal-body" style="overflow-y: auto;max-height:  500px;background-color:white;">
                        <div style=" font-size: 10px; color: #999;"><span style="color: red;">NB</span><spring:message code="document.add_document.nb"/></div>
                        <div id="errorMdp"></div>
                        <input type="hidden" id="id">
                        <spring:message code="metadata.topics"/><sup>*</sup>
                        <select title="<spring:message code="metadata.popup.bubble.topics"/>" required multiple="" id="id_thematique" class="form-control tailed">
                            <c:forEach items="${topics}" var="topThematique">
                                <option value="${topThematique.id}"><spring:message code="document.thematique.id.${topThematique.id}"/></option>
                            </c:forEach>                                
                        </select><br>                            
                        <spring:message code="metadata.type"/><sup>*</sup>
                        <select required title="<spring:message code="metadata.popup.bubble.type"/>" class="form-control" id="type" style="width: 100%!important;">
                            <option disabled selected value> -- select an option -- </option>
                            <option style="background-color: #f9efc9;" value="4">Document</option>
                            <option style="background-color: #f9efc9;" value="1">Photo</option>
                            <option style="background-color: #f9efc9;" value="2">Video</option>
                            <option style="background-color: #f9efc9;" value="3">Audio</option>
                        </select>                            
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.year"/><sup>*</sup>                        
                            <input title="<spring:message code="metadata.popup.bubble.year"/>" required type="text" class="form-control" id="year">
                        </div>
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.title"/><sup>*</sup>
                            <input title="<spring:message code="metadata.popup.bubble.title"/>" required type="text" class="form-control" id="title">
                        </div>
                        <spring:message code="global.label.file"/>
                        <input type="file" class="form-control" id="document">
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.url"/>
                            <input title="<spring:message code="metadata.popup.bubble.url"/>" placeholder="ex: https://www.lemursportal.org/forum/resources/upload/1530798561545Ziheng&Yoder2003.pdf" type="text" class="form-control" id="url">
                        </div>
                        <div class="" style="width: 100%;">
                            <spring:message code="metadata.species"/>
                            <select title="<spring:message code="metadata.popup.bubble.species"/>" multiple class="form-control tailed" id="modal-species" style="width: 100%!important;"></select>
                        </div>
                        <spring:message code="metadata.date"/>
                        <input title="<spring:message code="metadata.popup.bubble.date"/>" type="date" class="form-control" id="datePublication">
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.bibliographicResource"/>
                            <select title="<spring:message code="metadata.popup.bubble.bibliographicResource"/>" class="form-control" id="bibliographic_resource" style="width: 100%!important;">
                                <option style="background-color: #f9efc9;" value="">none</option>                                    
                                <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.paper"/>"><spring:message code="metadata.bibliographicResource.paper"/></option>                                    
                                <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.journal"/>"><spring:message code="metadata.bibliographicResource.journal"/></option>                                    
                                <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.book"/>"><spring:message code="metadata.bibliographicResource.book"/></option>                                    
                                <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.report"/>"><spring:message code="metadata.bibliographicResource.report"/></option>                                    
                                <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.memory"/>"><spring:message code="metadata.bibliographicResource.memory"/></option>                                    
                                <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.thesis"/>"><spring:message code="metadata.bibliographicResource.thesis"/></option>                                    
                                <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.map"/>"><spring:message code="metadata.bibliographicResource.map"/></option>                                    
                                <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.poster"/>"><spring:message code="metadata.bibliographicResource.poster"/></option>                                    
                                <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.others"/>"><spring:message code="metadata.bibliographicResource.others"/></option>                                    
                            </select>
                        </div>                                                
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.coverage"/>
                            <input title="<spring:message code="metadata.popup.bubble.coverage"/>" placeholder="ex: SAINTE LUCE | FORT-DAUPHIN | MADAGASCAR" type="text" class="form-control" id="coverage">
                        </div>
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.description"/>
                            <textarea title="<spring:message code="metadata.popup.bubble.description"/>" class="form-control" id="description">
                                    
                            </textarea>
                        </div>
                        <spring:message code="metadata.language"/>
                        <select title="<spring:message code="metadata.popup.bubble.language"/>" class="form-control" id="language" style="width: 100%!important;">
                            <option style="background-color: #f9efc9;" selected="" value="MLG">MG</option>
                            <option style="background-color: #f9efc9;" value="EN">EN</option>
                            <option style="background-color: #f9efc9;" value="FR">FR</option>
                            <option style="background-color: #f9efc9;" value="FR">OTHERS</option>
                        </select>
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.relation"/>
                            <input title="<spring:message code="metadata.popup.bubble.relation"/>" placeholder="ex: Relation" type="text" class="form-control" id="relation">
                        </div>
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.source"/>
                            <input title="<spring:message code="metadata.popup.bubble.source"/>" placeholder="ex: Syst. Biol. 52(5):705–716, 2003" type="text" class="form-control" id="source">
                        </div>
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.subject"/>
                            <input title="<spring:message code="metadata.popup.bubble.subject"/>" placeholder="ex: Mouse lemur Species | Bayesian Methods" type="text" class="form-control" id="subject">
                        </div>                        
                        <!--<div class="autocomplete" style="width: 100%;">-->
                        <%--<spring:message code="metadata.format"/>--%>
                        <input title="<spring:message code="metadata.popup.bubble.format"/>" placeholder="ex: text" type="hidden" class="form-control" id="format">
                        <!--</div>-->
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.fileFormat"/>
                            <input title="<spring:message code="metadata.popup.bubble.fileFormat"/>" placeholder="ex: PDF" type="text" class="form-control" id="fileFormat">
                        </div>
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.identifier"/>
                            <input title="<spring:message code="metadata.popup.bubble.identifier"/>" placeholder="ex :ISSN: 1063-5157 print / 1076-836X online | DOI: 10.1080/10635150390235557" type="text" class="form-control" id="identifier">
                        </div>                        
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.contributor"/>
                            <input title="<spring:message code="metadata.popup.bubble.contributor"/>" placeholder="ex: Department of Biology, University College London | Department of Ecology and Evolutionary Biology, Yale University" type="text" class="form-control" id="contributor">
                        </div>
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.creator"/>
                            <input title="<spring:message code="metadata.popup.bubble.creator"/>" placeholder="ex: ZIHENG YANG | ANNE D. YODER" type="text" class="form-control" id="creator">
                        </div>
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.publisher"/>
                            <input title="<spring:message code="metadata.popup.bubble.publisher"/>" placeholder="ex: Society of Systematic Biologists" type="text" class="form-control" id="publisher">
                        </div>
                        <div class="autocomplete" style="width: 100%;">
                            <spring:message code="metadata.rights"/>
                            <input title="<spring:message code="metadata.popup.bubble.rights"/>" placeholder="ex: Syst. Biol. 52(5):705–716, 2003 | Copyright(c) Society of Systematic Biologists" type="text" class="form-control" id="rights">                        
                        </div>                            
                    </div>
                    <div class="modal-footer" style="background-color:white">
                        <button style="float: right;" type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="global.btn.cancel"/></button>
                        <input type="submit" style="float: right;" class="btn btn-success" value="<spring:message code="global.btn.save"/>">
                        <!--<button style="float: right;" type="submit" class="btn btn-default" data-dismiss="modal"><spring:message code="global.btn.save"/></button>-->
                        <div id="delete"></div>
                    </div>
                </form>
            </div>
        </div>                        
    </div>
    <!--        <div id="modal-upload-darwincore" class="modal edit-profil-form">
                <div class="modal-dialog">
                     Modal content
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title"><spring:message code="document.add_document.title"/></h4>
                        </div>
                        <form action="javascript:sendAddDocument();" autocomplete="off">
                            <div class="modal-body" style="overflow-y: auto;max-height:  500px;">
                                                            
                            </div>
                            <div class="modal-footer">
                                <button style="float: right;" type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="global.btn.cancel"/></button>
                                <input type="submit" style="float: right;" class="btn btn-default" value="<spring:message code="global.btn.save"/>">
                                <button style="float: right;" type="submit" class="btn btn-default" data-dismiss="modal"><spring:message code="global.btn.save"/></button>
                                <div id="delete"></div>
                            </div>
                        </form>
                    </div>
                </div>                        
            </div>-->

    <div id='modal-upload_spinner' class='modal fade' role='dialog' style='display:none !important' tabindex="-1">
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class="modal-header">
                    <button data-dismiss='modal' class='close' type='button'>x</button>
                    <h4 class="modal-title"><center>Upload</center></h4>
                </div>
                <div class='modal-body'>
                    <div class='row'>
                        <div class='col-md-10 col-md-offset-1'>                                                        
                            <img src="https://www.lemursportal.org/species/resources/assets/img/loaderB32.gif" class="img-responsive" style="margin: 5px auto;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id='modal-alert' class='modal fade' role='dialog' style='display:none !important' tabindex="-1">
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class="modal-header">
                    <button data-dismiss='modal' class='close' type='button'>x</button>
                    <h4 class="modal-title"><center>ERREUR</center></h4>
                </div>
                <div class='modal-body'>
                    <div class='row'>
                        <div class='col-md-10 col-md-offset-1'>                            
                            <div class="col-sm-12">
                                <span id="messageAlerte">Un erreur est survenu lors du t&eacute;l&eacute;chargement. Veuiller v&eacute;rifier votre acr&eacute;ditation ou la structure des donn&eacute;es.</span>
                            </div>                                    
                        </div>
                    </div>
                </div>
                <div class='modal-footer'>
                    <button type='button' class='btn btn-default btn-sm' data-dismiss='modal'>OK</button>                    
                </div>
            </div>
        </div>
    </div>

    <div id='modal-upload-darwincore' class='modal'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class="modal-header">
                    <button data-dismiss='modal' class='close' type='button'>x</button>
                    <h4 class="modal-title"><center><spring:message code="observation.upload.title"/></center></h4>
                </div>
                <div class='modal-body row'>                       
                    <form id="uploadForm" method="POST" class="col-md-offset-1 col-md-11" enctype="multipart/form-data">
                        <label for="sep">Format file</label>
                        <select class="form-control" id="sep" style="width: 92%;height: 42px;border-radius: 5px;">
                            <option value="2"><spring:message code="observation.popup.upload_dwc.semicolon"/></option>
                            <option value="0"><spring:message code="observation.popup.upload_dwc.comma"/></option>
                            <option value="1">Excel (*.xlsx)</option>                                                        
                        </select><br>
                        <label for="csv-xl" id="buttonlabel">
                            <span role="button" aria-controls="filename" tabindex="0">
                                File path
                            </span>
                        </label>
                        <input type="file" class="form-control" name="excelfile" ng-model="file" id="csv-xl">
                        <!--                            <label for="filename" class="hide">
                                                        uploaded file
                                                    </label>
                                                    <input type="text" id="filename" autocomplete="off" readonly placeholder="no file uploaded">  <br>-->
                        <!--<input id="publique" type="checkbox" value="1"> publique --> <br>
                        <div class="">
                            <input id="publique-modal" type="checkbox" value="1">
                            <label for="publique-modal"><spring:message code="checkbox.public"/></label>
                        </div>
                        <spring:message code="observation.popup.upload_dwc.term"/> <a href="#" onclick="window.open('resources/assets/policy.pdf', '_blank')">(<spring:message code="global.download"/>)</a>
                    </form>
                </div>
                <div class='modal-footer'>                        
                    <input data-toggle='modal' data-target='#modal-upload_spinner' data-dismiss='modal' class="btn btn-success btn-sm" type="submit" id="publique" onclick="upload()" value="<spring:message code="global.import"/>">                        
                    <button type='button' class='btn btn-default btn-sm' data-dismiss='modal'><spring:message code="global.btn.cancel"/></button>                    
                </div>                    
            </div>
        </div>
    </div>

    <script src="${resourcesPath}/js/jquery-1.11.1.min.js"></script>

    <script src="${resourcesPath}/js/bootstrap.min.js"></script>

    <script src="${resourcesPath}/js/jquery.singlePageNav.min.js"></script>

    <script src="${resourcesPath}/js/jquery.fancybox.pack.js"></script>

    <script
    src="https://maps.google.com/maps/api/js?key=AIzaSyDC9ch_Ee_RiaM4H_270yzyI8n2OxdbCcY&callback=initMap"></script>

    <script src="${resourcesPath}/js/owl.carousel.min.js"></script>

    <script src="${resourcesPath}/js/jquery.easing.min.js"></script>

    <script src="${resourcesPath}/js/jquery.slitslider.js"></script>

    <script>
                        $(function () {
                            $('.sl-content-wrapper').css('height', '350px!important');
                        });
    </script>

    <script src="${resourcesPath}/js/jquery.ba-cond.min.js"></script>

    <script src="${resourcesPath}/js/wow.min.js"></script>

    <script src="${resourcesPath}/js/main.js"></script>
    <script src="${resourcesPath}/js/jquery.li-scroller.1.0.js"></script>

    <script type="text/javascript">
                        function sendAddDocument() {
                            var formData = new FormData();
                            var id = $('#id').val();
                            if (id !== 0 && id !== undefined && id !== null) {
                                formData.append('id', id);
                            }
                            formData.append('file', $('#document').get(0).files[0]);
                            formData.append('bibliographicResource', $('#bibliographic_resource').val());
                            formData.append('date', $('#datePublication').val());
                            formData.append('idThematique', $('#id_thematique').val());
                            formData.append('coverage', $('#coverage').val());
                            formData.append('description', $('#description').val());
                            formData.append('language', $('#language').val());
                            formData.append('relation', $('#relation').val());
                            formData.append('source', $('#source').val());
                            formData.append('subject', $('#subject').val());
                            formData.append('title', $('#title').val());
                            formData.append('format', $('#format').val());
                            formData.append('fileFormat', $('#fileFormat').val());
                            formData.append('identifier', $('#identifier').val());
                            formData.append('type', $('#type').val());
                            formData.append('contributor', $('#contributor').val());
                            formData.append('creator', $('#creator').val());
                            formData.append('publisher', $('#publisher').val());
                            formData.append('rights', $('#rights').val());
                            formData.append('year', $('#year').val());
                            formData.append('url', $('#url').val());
                            formData.append('species', $('#species').val());
                            $.ajax({
                                method: 'POST',
                                data: formData,
                                contentType: false,
                                processData: false,
                                url: 'https://www.lemursportal.org/forum_test/secured/document/post',
                                success: function (json) {
                                    $('#bibliographic_resource').val('');
                                    $('#datePublication').val('');
                                    $('#id_thematique').val('');
                                    $('#coverage').val('');
                                    $('#description').val('');
                                    $('#id').val('');
                                    $('#language').val('');
                                    $('#relation').val('');
                                    $('#source').val('');
                                    $('#subject').val('');
                                    $('#title').val('');
                                    $('#format').val('');
                                    $('#fileFormat').val('');
                                    $('#identifier').val('');
                                    $('#contributor').val('');
                                    $('#creator').val('');
                                    $('#publisher').val('');
                                    $('#rights').val('');
                                    $('#year').val('');
                                    $('#url').val('');
                                    $('#species').val('');
                                    $('#errorMdp').html("<p style='color: red;'> " + "</p>");
                                    //                                        closeModal('modal-ajout-document');
                                    location.reload();
                                },
                                error: function (json) {
                                    $('#errorMdp').html("<p style='color: red;'> " + "Le téléchargement du document est un échec. Veuiller réessayer.</p>");
                                }
                            });
                        }

                        function setGetParameter(paramName, paramValue) {
                            if (paramValue == '${pageContext.response.locale}')
                                return;
                            var url = window.location.href;
                            var hash = location.hash;
                            url = url.replace(hash, '');
                            if (url.indexOf(paramName + "=") >= 0) {
                                var prefix = url.substring(0, url.indexOf(paramName));
                                var suffix = url.substring(url.indexOf(paramName));
                                suffix = suffix.substring(suffix.indexOf("=") + 1);
                                suffix = (suffix.indexOf("&") >= 0) ? suffix.substring(suffix
                                        .indexOf("&")) : "";
                                url = prefix + paramName + "=" + paramValue + suffix;
                            } else {
                                if (url.indexOf("?") < 0)
                                    url += "?" + paramName + "=" + paramValue;
                                else
                                    url += "&" + paramName + "=" + paramValue;
                            }
                            window.location.href = url + hash;
                        }

                        $(document)
                                .ready(
                                        function () {
                                            var maxLength = 310;
                                            $('.show-read-more p').contents().unwrap();
                                            $(".show-read-more")
                                                    .each(
                                                            function () {
                                                                var myStr = $(this).text();
                                                                if ($.trim(myStr).length > maxLength) {
                                                                    var newStr = myStr
                                                                            .substring(0,
                                                                                    maxLength);
                                                                    var removedStr = myStr
                                                                            .substring(
                                                                                    maxLength,
                                                                                    $
                                                                                    .trim(myStr).length);
                                                                    $(this).empty().html(
                                                                            newStr + "...");
                                                                    var link = $(this).parent()
                                                                            .parent().children(
                                                                            'a').attr(
                                                                            'href');
                                                                    $(this)
                                                                            .append(
                                                                                    ' <a href="' + link + '" class="read-more"> read more</a>');
                                                                    //$(this)
                                                                    // 															.append(
                                                                    // 																	'<span class="more-text">'
                                                                    // 																			+ removedStr
                                                                    // 																			+ '</span>');
                                                                }
                                                            });
                                            //$(".read-more").click(function(){
                                            //	$(this).siblings(".more-text").contents().unwrap();
                                            //	$(this).remove();
                                            //});
                                            // 							$('#lang-select').val('${pageContext.response.locale}');
                                            // 							$('#lang-select').change(function(){
                                            // 								setGetParameter('lang', this.value);
                                            // 							});
                                            $('#lang-select span').html(
                                                    '${pageContext.response.locale} ');

                                            //activate menu of selected language
                                            if ('${pageContext.response.locale}' != null) {
                                                $("#lang-select li").removeClass("active");
                                                $("#${pageContext.response.locale}").addClass(
                                                        "active");
                                            }

                                            $('#lang-select li a').click(
                                                    function () {
                                                        setGetParameter('lang', $(this)
                                                                .parents('#lang-select li')
                                                                .attr('id'));
                                                    });
                                            //donate button
                                            if (isDonateClosed()) {
                                                removeStickyDonate();
                                            }
                                        });

                        $(function () {
                            $.ajax({
                                url: "https://www.lemursportal.org/forum/alerts?alert=1",
                                success: function (json) {
                                    if (json != null && json.length != 0) {
                                        $("ul#alert-list").show();
                                        $("ul#alert-list").liScroll(0.07, json);
                                    } else {
                                        $("ul#alert-list").hide();
                                    }
                                }, error: function () {
                                    $("ul#alert-list").hide();
                                }
                            });
                            $.ajax({
                                method: "POST",
                                url: "https://www.lemursportal.org/species_test/findByespeceTaxo",
                                success: function (json) {
                                    //                                                                if (json != null && json.length != 0) {
                                    //                                                                }
                                    var selectBody = "";
                                    for (var i = 0; i < json.length; i++) {
                                        selectBody += "<option>" + json[i].scientificname + "</option>";
                                    }
                                    $("#modal-species").html(selectBody);
                                    tail.select(".tailed");
                                }, error: function () {
                                    $("#modal-species").html("<option>None</option>");
                                    console.log("there is a problem with species ajax");
                                    tail.select(".tailed");
                                }
                            });
                        });

                        function upload() {
                            var formData = new FormData();
                            var file = $('#csv-xl')[0].files[0];
                            formData.append("excelfile", file);
                            console.log(document.getElementById("publique-modal").checked);
                            if (document.getElementById("publique-modal").checked) {
                                formData.append("publique", 1);
                            } else
                                formData.append("publique", 0);
                            if ($('#sep').val() == 0) {
                                formData.append("sep", 0);
                            }
                            $.ajax({
                                method: 'POST',
                                url: 'https://www.lemursportal.org/species_test/processExcel',
                                data: formData,
                                processData: false,
                                contentType: false,
                                success: function (response) {
                                    if (response == null) {
                                        console.log(response);
                                        $('#messageAlerte').text(response.data[0].message);
                                        $('#modal-upload_spinner').modal('hide');
                                        $('#modal-alert').modal({backdrop: 'static'});
                                    } else {
                                        console.log(response);
                                        $('#modal-upload_spinner').modal('hide');
                                    }
                                }, error: function (response) {
                                    $('#messageAlerte').text('Un erreur est survenu lors du téléchargement. Veuiller vérifier votre acréditation ou la structure des données.');
                                    $('#modal-alert').modal({backdrop: 'static'});
                                    $('modal-upload_spinner').modal('hide');
                                }
                            });
                        }
    </script>
</body>
</html>
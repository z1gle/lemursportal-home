<%-- 
    Document   : graphics
    Created on : 15 oct. 2019, 14:51:34
    Author     : OC-USER6
--%>
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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--link rel="stylesheet" href="${resourcesPath}/css/styles.css"-->
        <link rel="stylesheet" href="${resourcesPath}/css/ol.css"></script>
    <script src="${resourcesPath}/js/modernizr-2.6.2.min.js"></script>
    <script src = "${resourcesPath}/js/jquery.min.js">
    </script>
    <script src = "${resourcesPath}/js/highcharts.js"></script> 
    <script src = "${resourcesPath}/js/data.js"></script>

    <script src="${resourcesPath}/js/jquery.highchartTable.js" type="text/javascript"></script>
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
        .map {
            height: 400px;
            width: 100%;
        }
        caption {
            padding-bottom: 15px;
            font-family: 'Verdana';
            font-size: 1.2em;
            color:#555;
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
            class="navbar-inverse animated-header">
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
                    <li class="act"><a href="https://www.lemursportal.org" onclick="window.location = 'https://www.lemursportal.org'"><spring:message code="menu.home" /></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Forum <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="https://www.lemursportal.org/forum" onclick="window.location = 'https://www.lemursportal.org/forum'">Publier</a></li>
                            <li class="divider"></li>
                            <li><a href="https://www.lemursportal.org/forum/documents" onclick="window.location = 'https://www.lemursportal.org/forum/documents'"><spring:message code="home.header.documents" /></a></li>
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
                    <li><a href="https://www.lemursportal.org/species/visualisations" onclick="window.location = 'https://www.lemursportal.org/species/visualisations'"><spring:message code="home.header.map" /></a></li>
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
    </header>

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
        *, :after, :before {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        .home__searchFilters {
            background: #FFD700;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            overflow: auto;
            max-width: 700px;
            color: #fff;
        }
        .noUnderline, .noUnderline:focus, .noUnderline:hover, a.inherit.noUnderline, a.inherit.noUnderline:focus, a.inherit.noUnderline:hover {
            text-decoration: none;
        }
        .home .search-box {
            max-width: 700px;
        }
        form {
            display: block;
            margin-top: 0em;
        }
        input, select, textarea {
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
        }
        input{
            color: inherit;
            font: inherit;
            margin: 0;
        }
        input{
            font-size: 100%;
        }
        input{
            vertical-align: baseline;
        }
        html, input {
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
            margin: 8px 15px;
            top: 0;
            font-size: 1.60714285714125rem;
        }
        .search-box {
            background: #fff;
            color: #444;
            padding: 12px 20px;
            max-width: 100%;
        }
        .search-box {
            position: relative;
        }
        .search-box {
            -webkit-transition: box-shadow .2s ease;
            transition: box-shadow .2s ease;
            box-shadow: 0 2px 2px 0 rgba(0,0,0,.16);
        }
        .search-box {
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
            padding: 5.71428571428rem 0;
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
    <div class="row">
        <div class="well ">
            <center><h4><spring:message code="text.graphics" /></h4></center>
        </div>
    </div>
    <script language = "JavaScript">
        $(document).ready(function () {
            var data = {
                table: 'datatable'
            };
            var chart = {
                type: 'pie'
            };
            var title = {
                text: '<spring:message code="species.according.IUCN.status" />'
            };
            var yAxis = {
                allowDecimals: false,
                title: {
                    text: '<spring:message code="text.count" />'
                }
            };
            var tooltip = {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                            this.point.y + ' ' + this.point.name.toLowerCase();
                }
            };
            var credits = {
                enabled: false
            };
            var json = {};
            json.chart = chart;
            json.title = title;
            json.data = data;
            json.yAxis = yAxis;
            json.credits = credits;
            json.tooltip = tooltip;
            $('#container').highcharts(json);
        });
        $(document).ready(function () {
            var data = {
                table: 'datatablebyfamily'
            };
            var chart = {
                type: 'column'
            };
            var title = {
                text: '<spring:message code="species.family" />'
            };
            var yAxis = {
                allowDecimals: false,
                title: {
                    text: '<spring:message code="text.count" />'
                }
            };
            var tooltip = {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                            this.point.y + ' ' + this.point.name.toLowerCase();
                }
            };
            var credits = {
                enabled: false
            };
            var json = {};
            json.chart = chart;
            json.title = title;
            json.data = data;
            json.yAxis = yAxis;
            json.credits = credits;
            json.tooltip = tooltip;
            $('#speciesbyfamily').highcharts(json);
        });
        $(document).ready(function () {
            var data = {
                table: 'datatablebygenus'
            };
            var chart = {
                type: 'column'
            };
            var title = {
                text: '<spring:message code="species.genus" />'
            };
            var yAxis = {
                allowDecimals: false,
                title: {
                    text: '<spring:message code="text.count" />'
                }
            };
            var tooltip = {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                            this.point.y + ' ' + this.point.name.toLowerCase();
                }
            };
            var credits = {
                enabled: false
            };
            var json = {};
            json.chart = chart;
            json.title = title;
            json.data = data;
            json.yAxis = yAxis;
            json.credits = credits;
            json.tooltip = tooltip;
            $('#speciesbygenus').highcharts(json);
        });
        $(document).ready(function () {
            var data = {
                table: 'datatableocc'
            };
            var chart = {
                type: 'area'
            };
            var title = {
                text: '<spring:message code="occurrence.per.year" />'
            };
            var yAxis = {
                allowDecimals: false,
                title: {
                    text: '<spring:message code="text.count" />'
                }
            };
            var tooltip = {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                            this.point.y + ':' + this.point.name.toLowerCase();
                }
            };
            var credits = {
                enabled: false
            };
            var json = {};
            json.chart = chart;
            json.title = title;
            json.data = data;
            json.yAxis = yAxis;
            json.credits = credits;
            json.tooltip = tooltip;
            $('#graph_occurrence').highcharts(json);
        });
        $(document).ready(function () {
            var data = {
                table: 'datatableSpecies'
            };
            var chart = {
                type: 'column'
            };
            var title = {
                text: '<spring:message code="document.by.studied.species" />'
            };
            var yAxis = {
                allowDecimals: false,
                title: {
                    text: '<spring:message code="text.count" />'
                }
            };
            var tooltip = {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                            this.point.y + ':' + this.point.name.toLowerCase();
                }
            };
            var credits = {
                enabled: false
            };
            var json = {};
            json.chart = chart;
            json.title = title;
            json.data = data;
            json.yAxis = yAxis;
            json.credits = credits;
            json.tooltip = tooltip;
            $('#MetadataSpecies').highcharts(json);
        });
        $(document).ready(function () {
            var data = {
                table: 'datatableYear'
            };
            var chart = {
                type: 'area'
            };
            var title = {
                text: '<spring:message code="document.per.publication.year" />'
            };
            var yAxis = {
                allowDecimals: false,
                title: {
                    text: '<spring:message code="text.count" />'
                }
            };
            var tooltip = {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                            this.point.y + ':' + this.point.name.toLowerCase();
                }
            };
            var credits = {
                enabled: false
            };
            var json = {};
            json.chart = chart;
            json.title = title;
            json.data = data;
            json.yAxis = yAxis;
            json.credits = credits;
            json.tooltip = tooltip;
            $('#metadatabyYear').highcharts(json);
        });
        $(document).ready(function () {
            var data = {
                table: 'datatableBL'
            };
            var chart = {
                type: 'column'
            };
            var title = {
                text: '<spring:message code="document.bibliographic.level" />'
            };
            var yAxis = {
                allowDecimals: false,
                title: {
                    text: '<spring:message code="text.count" />'
                }
            };
            var tooltip = {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                            this.point.y + ':' + this.point.name.toLowerCase();
                }
            };
            var credits = {
                enabled: false
            };
            var json = {};
            json.chart = chart;
            json.title = title;
            json.data = data;
            json.yAxis = yAxis;
            json.credits = credits;
            json.tooltip = tooltip;
            $('#MetadatabyBL').highcharts(json);
        });
    </script>
    <div class="container">

        <div class="col-sm-12" id="graph_occurrence" style="min-width: 310px; height: 400px; margin: 0 auto">
            <table id = "datatableocc" class="table table-responsive table-striped">
                <thead>
                <th><spring:message code="text.year" /></th>
                <th><spring:message code="occurrence.all.occurrences" /></th>
                <th><spring:message code="occurrence.all.reliables" /></th>
                </thead>
                <c:forEach items="${occurrencePerYearlist}" var="occ">
                    <tbody>
                    <td><c:out value="${occ[0]}"></c:out></td>
                    <td><c:out value="${occ[1]}"></c:out></td>
                    <td><c:out value="${occ[2]}"></c:out></td>
                        </tbody>
                </c:forEach>
            </table>
        </div>
        <div class="col-sm-12" id="listspecies">
            <div class="row">
                <center> <h4><spring:message code="menu.species" /></h4></center>
            </div>
            <div class="row">
                <div class="col-sm-8" id="speciesbyfamily" style="min-width: 310px; height: 400px; margin: 0 auto">
                    <table id = "datatablebyfamily" class="table table-responsive table-striped">
                        <thead>
                        <th><spring:message code="text.family" /></th>
                        <th><spring:message code="text.count" /></th>
                        </thead>
                        <c:forEach items="${speciesGpByFamilylist}" var="taxonomi_base">
                            <tbody>
                            <td><c:out value="${taxonomi_base[0]}"></c:out></td>
                            <td><c:out value="${taxonomi_base[1]}"></c:out></td>
                                </tbody>
                        </c:forEach>
                    </table>
                </div>
                <div class="col-sm-4" id="">
                    <div id = "container" style = "width: 350px; height: 400px; margin: 0 auto">
                        <table id = "datatable" class="table table-responsive table-striped">
                            <thead>
                            <th><spring:message code="text.iucn.status" /></th>
                            <th><spring:message code="text.count" /></th>
                            </thead>
                            <c:forEach items="${speciesGpByIUCNStatuslist}" var="taxonomi_base">
                                <tbody>
                                <td><c:out value="${taxonomi_base[0]}"></c:out></td>
                                <td><c:out value="${taxonomi_base[1]}"></c:out></td>
                                    </tbody>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>

            <div class="row" id="">
                <div class="col-sm-12" id="speciesbygenus" style="min-width: 310px; height: 400px; margin: 0 auto">
                    <table id = "datatablebygenus" class="table table-responsive table-striped">
                        <thead>
                        <th><spring:message code="text.genus" /></th>
                        <th><spring:message code="text.count" /></th>
                        </thead>
                        <c:forEach items="${speciesGpByGenus}" var="taxonomi_base">
                            <tbody>
                            <td><c:out value="${taxonomi_base[0]}"></c:out></td>
                            <td><c:out value="${taxonomi_base[1]}"></c:out></td>
                                </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>      
        </div>
        <div class="col-sm-12" id="DocumentS">
            <div class="row">
                <center> <h4><spring:message code="home.document" /></h4></center>
            </div>
            <div class="row">
                <div class="col-sm-12" id="MetadataSpecies" style="min-width: 310px; height: 400px; margin: 0 auto">
                    <table id ="datatableSpecies" class="table table-responsive table-striped">
                        <thead><th><spring:message code="text.count" /></th><th>Species</th></thead>
                            <c:forEach items="${metadatabyspecies}" var="metsp">
                            <tbody>
                            <td><c:out value="${metsp[1]}"></c:out></td>
                            <td><c:out value="${metsp[0]}"></c:out></td>
                                </tbody>
                        </c:forEach>
                    </table>
                </div>
                <div class="col-sm-12" id="metadatabyYear" style="min-width: 310px; height: 400px; margin: 0 auto">
                    <table id ="datatableYear" class="table table-responsive table-striped">
                        <thead><th><spring:message code="text.year" /></th><th><spring:message code="text.count" /></th></thead>
                            <c:forEach items="${metadatabyYear}" var="metadatabyYear">
                            <tbody>
                            <td><c:out value="${metadatabyYear[0]}"></c:out></td>
                            <td><c:out value="${metadatabyYear[1]}"></c:out></td>
                                </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>

            <div class="row" id="">
                <div class="col-sm-12" id="MetadatabyBL" style="min-width: 310px; height: 400px; margin: 0 auto">
                    <table id = "datatableBL" class="table table-responsive table-striped">
                        <thead><th><spring:message code="text.bibliographic.level" /></th><th><spring:message code="text.count" /></th></thead>
                            <c:forEach items="${metadatabyBL}" var="mByBL">
                            <tbody>
                                <tr> 
                                    <td><c:out value="${mByBL[0]}"></c:out></td>
                                    <td><c:out value="${mByBL[1]}"></c:out></td>
                                    </tr>
                                </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>      
        </div>
    </div>
    <footer id="footer">
        <div class="container">
            <div class="row">
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

    <script src="${resourcesPath}/js/main.js"></script>
    <script src="${resourcesPath}/js/bootstrap.min.js"></script>
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
                        });
    </script>                 
</body>
</html>



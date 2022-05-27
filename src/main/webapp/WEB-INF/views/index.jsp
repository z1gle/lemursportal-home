<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%-- <%@ taglib prefix="sec" uri="https://www.springframework.org/security/tags" %> --%>
<c:url value="/resources" var="resourcesPath" />
<c:url value="/" var="path" />
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1,requiresActiveX=true">
        <meta name="keywords" content="Madagascar lemursportal, portail des l&eacute;muriens">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>
            <spring:message code="home.pageTitle" />
        </title>
        <meta name="description" content=" Un portail où on trouve tous ce qui concerne les lémuriens. ">
        <!-- /// Favicons ////////  -->
        <link rel="shortcut icon" href="favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144-precomposed.ico">
        <!-- /// Google Fonts ////////  -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic">
        <!-- /// FontAwesome Icons 4.2.0 ////////  -->
        <link rel="stylesheet" href="${resourcesPath}/assets/fonts/fontawesome/font-awesome.min.css">
        <!-- /// Custom Icon Font ////////  -->
        <link rel="stylesheet" href="${resourcesPath}/assets/fonts/iconfontcustom/icon-font-custom.css">
        <!-- /// Template CSS ////////  -->
        <link rel="stylesheet" href="${resourcesPath}/assets/css/integrity.css">
        <link rel="stylesheet" href="${resourcesPath}/assets/css/custom.css">
        <!-- /// JS Plugins CSS ////////  -->
        <link rel="stylesheet" href="${resourcesPath}/assets/vendors/slick/slick.css">
        <link rel="stylesheet" href="${resourcesPath}/assets/vendors/bxslider/jquery.bxslider.css">
        <link rel="stylesheet" href="${resourcesPath}/assets/vendors/magnificpopup/magnific-popup.css">
        <link rel="stylesheet" href="${resourcesPath}/assets/vendors/animations/animate.min.css">
        <link rel="stylesheet" href="${resourcesPath}/assets/vendors/itplayer/css/YTPlayer.css">
    </head>

    <body class="sticky-header">
        <div id="wrap">
            <div id="header-top">
                <!-- /// HEADER-TOP  //////////////////////////////////////////////////////////////////////////////////////////////////////// -->
                <div class="row container-fluide" style="overflow: visible;">
                    <div class="" id="header-top-widget-area-2">
                        <div class="widget ewf_widget_contact_info">
                            <ul class="sp-menu">
                                <li>
                                    <span>
                                        <i class="fa fa-phone"></i>
                                    </span>
                                    <a href="callto://+261202260513">( +261 20 ) 22 605 13</a>
                                </li>
                                <li>
                                    <span>
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                    <a href="mailto:lemursportal@gmail.com">lemursportal@gmail.com</a>
                                </li>
                                <li class="dropdown language" id="lang-select">
                                    <a
                                        href="#"
                                        class="dropdown-toggle" 
                                        data-toggle="dropdown" 
                                        role="button"
                                        aria-haspopup="true" 
                                        aria-expanded="false"
                                        >
                                        <span style="-webkit-transform: rotate(0deg); transform: rotate(0deg);">EN </span>
                                        <i class="fa fa-caret-down"></i>
                                    </a>
                                    <ul class="dropdown-menu" style="left: -30px;">
                                        <li class="active" id="en">
                                            <a href="#">English</a>
                                        </li>
                                        <li  id="fr"><a href="#">Français</a></li>
                                        <li  id="mg"><a href="#">Malagasy</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div><!-- end .ewf_widget_contact_info -->
                    </div><!-- end .span6 -->
                </div><!-- end .row -->
                <!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
            </div><!-- end #header-top -->
            <div id="header">
                <!-- /// HEADER  //////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
                <div class="row container-fluide">
                    <div class="part1">
                        <!-- // Logo // -->
                        <a href="index.html" id="logo">
                            <img class="responsive-img" src="${resourcesPath}/assets/images/Logo_LemursPortal.png" alt="">
                        </a>
                    </div><!-- end .span3 -->
                    <div class="part2">
                        <!-- // Custom search // -->
                        <!--<form action="#" id="custom-search-form" method="get" role="search">
                        <input type="text" value="" name="s" id="s" placeholder="type and press enter to search...">
                        <input type="submit" id="custom-search-submit" value="">
                    </form>
    
                    <a id="custom-search-button" href="#"></a>-->

                        <!-- // Custom search // -->

                        <form action="results" id="custom-search-form" method="get" role="search">
                            <input type="text" value="" name="keyword" id="s" placeholder="<spring:message code="search.searchText" />">
                            <input type="submit" id="custom-search-submit" value="">
                        </form>

                        <a id="custom-search-button" href="#"></a>

                        <!-- // Menu // -->
                        <ul class="sf-menu fixed" id="menu">
                            <li class="current">
                                <a href="https://www.lemursportal.org/">
                                    <spring:message code="menu.home" />
                                </a>
                            </li>
                            <li class="">
                                <a href="https://www.lemursportal.org/forum"><spring:message code="service.online" /></a>
                            </li>
                            <li>
                                <a href="https://www.lemursportal.org/species/taxonomi">
                                    <spring:message code="menu.species" />
                                </a>
                            </li>
                            <li class="">
                                <a href="https://www.lemursportal.org/species/darwinportal">
                                    <spring:message code="menu.observations" />
                                </a>
                            </li>
                            <li class="">
                                <a href="https://www.lemursportal.org/species/visualisation">
                                    <spring:message code="service.visualization" />
                                </a>
                            </li>
                            <li>
                                <a href="https://www.lemursportal.org/graphics">
                                    <spring:message code="menu.graphics" />
                                </a>
                            </li>
                        </ul>
                    </div><!-- end .span6 -->
                    <div class="part3">
                        <!--// Mobile menu trigger // -->
                        <a href="#" id="mobile-menu-trigger">
                            <i class="fa fa-bars"></i>
                        </a>
                        <ul class="sf-menu fixed" id="menu">
                            <li class="">
                                <c:url value="/login" var="loginUrl"/>
                                <a href="${loginUrl}">
                                    <span>
                                        <i class="fa fa-sign-in"></i>
                                    </span>
                                    <spring:message code="home.login" />
                                </a>
                            </li>
                            <li class="">
                                <a data-animation="fadeInDown" data-delay="2s" id="join-us" class="" href="#inscription">
                                    <span>
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <spring:message code="login.signup" />
                                </a>
                            </li>
                        </ul>
                    </div>
                </div><!-- end .row -->
                <!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
            </div><!-- end #header -->
            <div id="content">
                <!-- /// CONTENT  /////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
                <div class="main-slider">
                    <div id="video-hero" role="banner">
                        <video autoplay="" id="heroVideo" loop muted poster="${resourcesPath}/assets/images/background/fd.jpg">
                            <source src="${resourcesPath}/assets/videos/video_hero.mp4" type="video/mp4" />
                            <!--<source src="https://raw.githubusercontent.com/solodev/hero-with-video-bg/blob/master/videos/hero-video.webm" type="video/webm" />
                        <source src="https://raw.githubusercontent.com/solodev/hero-with-video-bg/blob/master/videos/hero-video.ogv" type="video/ogv" />-->
                        </video>
                    </div>
                    <ul id="laptop-video-slider" class="main-slider__slides video-main-slider__slides" data-slick='{ "fade": true, "speed": 500, "autoplay": false, "infinite": true, "dots": true, "arrows": true }'>
                        <li style="">
                            <div class="main-slider-slide__content
                                 main-slider-slide__content--valign-middle
                                 main-slider-slide__content--align-center">
                                <div class="main-slider-slide__content-wrap">
                                    <h1 data-animation="fadeInDown" data-delay="0.5s">
                                        MADAGASCAR LEMURS PORTAL
                                    </h1>
                                    <p data-animation="fadeInDown" data-delay="1s">
                                        <spring:message code="slider.savelemurs.txt" />.<br class="hidden-xs">
                                    </p>
                                    <div data-animation="fadeInDown" data-delay="1.5s">
                                        <a id="join-us" class="btn btn-large" href="#inscription">
                                            <spring:message code="slider.join_us" /></a>
                                    </div>
                                </div><!-- end .main-slider-slide__content-wrap -->
                            </div><!-- end .main-slider-slide__content -->
                        </li>
                    </ul>
                    <ul id="laptop-img-slider" class="main-slider__slides" data-slick='{ "fade": true, "speed": 500, "autoplay": false, "infinite": true, "dots": true, "arrows": true }'>
                        <li class="hero-image" style="background-image: url('${resourcesPath}/assets/images/background/fd.jpg')">
                            <div class="main-slider-slide__content
                                 main-slider-slide__content--valign-middle
                                 main-slider-slide__content--align-center">
                                <div class="main-slider-slide__content-wrap">
                                    <h1 data-animation="fadeInDown" data-delay="0.5s">
                                        MADAGASCAR LEMURS PORTAL
                                    </h1>
                                    <p data-animation="fadeInDown" data-delay="1s">
                                        <spring:message code="slider.savelemurs.txt" />.<br class="hidden-xs">
                                    </p>
                                    <div data-animation="fadeInDown" data-delay="1.5s">
                                        <a class="btn btn-large" href="#">
                                            <spring:message code="slider.join_us" /></a>
                                    </div>
                                </div><!-- end .main-slider-slide__content-wrap -->
                            </div><!-- end .main-slider-slide__content -->
                        </li>
                    </ul>
                    <ul id="mobile-slider" class="main-slider__slides video-main-slider__slides" data-slick='{ "fade": true, "speed": 500, "autoplay": false, "infinite": true, "dots": true, "arrows": true }'>
                        <li style="">
                            <div class="main-slider-slide__content
                                 main-slider-slide__content--valign-middle
                                 main-slider-slide__content--align-center">
                                <div class="main-slider-slide__content-wrap">
                                    <h1 data-animation="fadeInDown" data-delay="0.5s">
                                        MADAGASCAR LEMURS PORTAL
                                    </h1>
                                    <p data-animation="fadeInDown" data-delay="1s">
                                        <spring:message code="slider.savelemurs.txt" />.<br class="hidden-xs">
                                    </p>
                                    <div data-animation="fadeInDown" data-delay="1.5s">
                                        <a class="btn btn-large" href="#">
                                            <spring:message code="slider.join_us" /></a>
                                    </div>
                                </div><!-- end .main-slider-slide__content-wrap -->
                            </div><!-- end .main-slider-slide__content -->
                        </li>
                    </ul>
                </div><!-- end .main-slider -->
                <div class="row">
                    <div class="span12">
                        <div class="headline">
                            <h2><spring:message code="service.component" /></h2>
                            <!--                        <h6>Madagascar Lemurs Portal est l'un des outils les plus sophistiqués d'Afrique permettant aux utilisateurs d'accéder à des informations sur toutes les espèces de lémuriens de Madagascar.</h6>-->
                        </div><!-- end .headline -->
                    </div><!-- end .span12 -->
                </div><!-- end .row -->
                <div class="row">
                    <div class="span3">
                        <div class="icon-box-2">
                            <a href="https://www.lemursportal.org/forum/">
                                <img src="${resourcesPath}/assets/images/forum.png" alt="Forum" />
                            </a>
                            <div class="icon-box-content">
                                <h4>
                                    <a href="https://www.lemursportal.org/forum/"><spring:message code="service.online" /></a>
                                </h4>
                                <p>
                                    <spring:message code="service.online.txt" />
                                    <!--Les membres de la communauté pourront poser des questions, discuter à temps réel sur différentes thématiques-->
                                </p>
                            </div><!-- end .icon-box-content -->
                        </div><!-- end .icon-box-2 -->
                    </div><!-- end .span3 -->
                    <div class="span3">
                        <div class="icon-box-2">
                            <a href="https://www.lemursportal.org/forum/documents">
                                <img src="${resourcesPath}/assets/images/documents.png" alt="Documents" />
                            </a>
                            <div class="icon-box-content">
                                <h4>
                                    <a href="https://www.lemursportal.org/forum/documents"><spring:message code="service.documents" /></a>
                                </h4>
                                <p>
                                    <spring:message code="service.documents.txt" />
                                    <!--                                Articles | Publications
                                                                    scientifiques | Mémoires| Thèses |
                                                                    Rapports d'études-->
                                </p>
                            </div><!-- end .icon-box-content -->
                        </div><!-- end .icon-box-2 -->
                    </div><!-- end .span3 -->
                    <div class="span3">
                        <div class="icon-box-2">
                            <a href="https://www.lemursportal.org/species/">
                                <img src="${resourcesPath}/assets/images/especes.png" alt="Espèces" />
                            </a>
                            <div class="icon-box-content">
                                <h4>
                                    <a href="https://www.lemursportal.org/species/"><spring:message code="service.species" /></a>
                                </h4>
                                <p>
                                    <spring:message code="service.species.txt" />
                                    <!--                                Photo | Taxonomie| Morphologie
                                                                    | Habitat | Ecologie|
                                                                    Comportement | Menance| Aire
                                                                    protégée | statut de conservation-->
                                </p>
                            </div><!-- end .icon-box-content -->
                        </div><!-- end .icon-box-2 -->
                    </div><!-- end .span3 -->
                    <div class="span3">
                        <div class="icon-box-2">
                            <a href="https://www.lemursportal.org/species/visualisation">
                                <img src="${resourcesPath}/assets/images/map.png" alt="Map" />
                            </a>
                            <div class="icon-box-content">
                                <h4>
                                    <a href="https://www.lemursportal.org/species/visualisation"><spring:message code="service.visualization" /></a>
                                </h4>
                                <p>
                                    <spring:message code="service.visualization.txt" />
                                    <!--Carte de distribution des espèces | Modèles de distribution-->
                                </p>
                            </div><!-- end .icon-box-content -->
                        </div><!-- end .icon-box-2 -->
                    </div><!-- end .span3 -->
                </div><!-- end .row -->
                <div class="row">
                    <div class="span12">
                        <!--<h4 class="text-center">Pour une meilleur practicité et une meilleure accessibilté, Madagascar lemurs portal est aussi disponible sur votre téléphone en téléchargeant l'application mobile dédié ou en utilisant inaturalist.</h4>-->
                        <h4 class="text-center"><spring:message code="text.mobile" /></h4>
                    </div><!-- end .span12 -->
                </div><!-- end .row -->
                <br><br><br>
                <div class="row">
                    <div class="span4">
                        <div class="icon-box-1">
                            <!--<span>
                            <i class="ifc-megaphone"></i>
                        </span>-->
                            <div class="icon-box-content">
                                <h4>
                                    <a><spring:message code="label.mobileApp" /></a>
                                </h4>
                                <p><spring:message code="text.mlpMobile" /></p>
                            </div><!-- end .icon-box-content -->
                        </div><!-- end .icon-box-1 -->
                        <div class="icon-box-1">
                            <!--<span>
                            <i class="ifc-type"></i>
                        </span>-->
                            <div class="icon-box-content">
                                <h4>
                                    <a>inaturalist</a>
                                </h4>
                                <p><spring:message code="text.inaturalist" /></p>
                            </div><!-- end .icon-box-content -->
                        </div><!-- end .icon-box-1 -->
                        <div class="icon-box-1">
                            <!--<span>
                            <i class="ifc-type"></i>
                        </span>-->
                            <div class="icon-box-content">
                                <h4>
                                    <a><spring:message code="label.download" /></a>
                                </h4>
                                <div>
                                    <a class="btn btn-download" href="https://play.google.com/store/apps/details?id=org.inaturalist.android&hl=fr&gl=US">
                                        <img style="max-height:70px;" class="responsive-img" src="${resourcesPath}/assets/images/Logo_LemursPortal.png" alt="Icone MLP" />
                                    </a>
                                    <a class="btn btn-download" href="https://play.google.com/store/apps/details?id=org.inaturalist.android&hl=fr&gl=US">
                                        <img class="responsive-img" src="${resourcesPath}/assets/images/logo_inaturalist.png" alt="Icon inaturalist" />
                                    </a>
                                </div>
                            </div><!-- end .icon-box-content -->
                        </div><!-- end .icon-box-1 -->
                    </div><!-- end .span4 -->
                    <div class="span8">
                        <p>
                            <img class="animate responsive-img" data-animation="fadeInRight" src="${resourcesPath}/assets/images/mobile.png" alt="">
                        </p>
                    </div><!-- end .span8 -->
                </div><!-- end .row -->
                <br /><br /><br />
                <div class="main-slider">
                    <ul class="main-slider__slides" data-slick='{ "fade": true, "speed": 500, "autoplay": false, "infinite": true, "dots": true, "arrows": true }'>
                        <li class="centre parallax parallax-enabled" style="background-image:url('${resourcesPath}/assets/images/background/jonah2.png');">
                            <div class="headline" style="margin-top:-2vh;">
                                <h2 class="expert-h"><spring:message code="menu.experts" /></h2>
                            </div>
                            <div class="main-slider-slide__content
                                 main-slider-slide__content--valign-middle
                                 main-slider-slide__content--align-center">
                                <div class="main-slider-slide__content-wrap">
                                    <div class="testimonial ">
                                        <span data-animation="fadeInDown" data-delay="1s">
                                            <img src="https://www.lemursportal.org/forum/resources/profil/DSC_0189 - Copie.JPG" alt="">
                                        </span>
                                    </div><!-- end .teatimonial -->
                                    <h3 class="expert-h" data-animation="fadeInDown" data-delay="1s">RATSIMBAZAFY Jonah</h3>
                                    <p data-animation="fadeInDown" data-delay="1s">
                                        Jonah
                                        Ratsimbazafy is a native of Madagascar. He received his PhD in Physical
                                        Anthropology from the State University of New York at Stony Brook. He is
                                        currently the Secretary General of the Madagascar Non-human Primate Group
                                        (GERP) and the Director of the Houston Zoo Madagascar Programs. He is also an
                                        Adjunct...
                                    </p>
                                    <div data-animation="fadeInDown" data-delay="1.5s">
                                        <a class="btn btn-large" href="#">Voir plus</a>
                                    </div>
                                </div><!-- end .main-slider-slide__content-wrap -->
                            </div><!-- end .main-slider-slide__content -->
                        </li>
                        <li class="centre parallax parallax-enabled" style="background-image:url('${resourcesPath}/assets/images/background/stacey.png');">
                            <div class="headline" style="margin-top:-2vh;">
                                <h2 class="expert-h">Experts</h2>
                            </div>
                            <div class="main-slider-slide__content
                                 main-slider-slide__content--valign-middle
                                 main-slider-slide__content--align-center">
                                <div class="main-slider-slide__content-wrap">
                                    <div class="testimonial ">
                                        <span data-animation="fadeInDown" data-delay="1s">
                                            <img src="https://www.lemursportal.org/forum/resources/profil/Stacey Tecot.png" alt="">
                                        </span>
                                    </div><!-- end .teatimonial -->
                                    <h3 class="expert-h" data-animation="fadeInDown" data-delay="1s">TECOT STACEY</h3>
                                    <p data-animation="fadeInDown" data-delay="1s">
                                        Stacey Tecot is an Associate Professor of Anthropology and the Director
                                        of the Laboratory for the Evolutionary Endocrinology of Primates (LEEP) at the University of Arizona. She uses a
                                        combination of field and lab methods to understand how social and physical
                                        environments shape the behavior and physiology of ...
                                    </p>
                                    <div data-animation="fadeInDown" data-delay="1.5s">
                                        <a class="btn btn-large" href="#">Voir plus</a>
                                    </div>
                                </div><!-- end .main-slider-slide__content-wrap -->
                            </div><!-- end .main-slider-slide__content -->
                        </li>
                    </ul>
                    <!--<div class="main-slider__pager main-slider__pager--align-center"></div>-->
                    <div class="main-slider__arrows"></div>
                </div>
                <br><br>
                <div class="row">
                    <div class="span12">
                        <div class="headline">
                            <h2><spring:message code="label.news" /></h2>
                            <h6><spring:message code="text.news" /></h6>
                        </div><!-- end .headline -->
                    </div><!-- end .span12 -->
                </div><!-- end .row -->
                <div class="row">
                    <div class="span12">
                        <div class="blog-post-slider">
                            <ul class="slides">
                                <li>
                                    <div class="blog-post">
                                        <div class="row">
                                            <div class="span6">
                                                <div class="blog-post-thumb">
                                                    <img src="${resourcesPath}/content/index/lemurs_week.jpg" alt="">
                                                    <div class="blog-post-info">
                                                        10
                                                        <small>Dec</small>
                                                    </div><!-- end .blog-post-info -->
                                                </div><!-- end .blog-post-thumb -->
                                            </div><!-- end .span6 -->
                                            <div class="span6">
                                                <div class="blog-post-title">
                                                    <h4>
                                                        <a href="blog.html">
                                                            Lemurs week
                                                        </a>
                                                    </h4>
                                                    <p><em>by <a href="#">Admin</a>
                                                            <!--in <a href="#">General Posts</a>--></em></p>
                                                </div><!-- end .blog-post-title -->
                                                <p>
                                                    À la découverte des lémuriens ! Vendredi 10 décembre, Madagascar Lemurs Portal, en collaboration avec Office Régional du Tourisme d'Antananarivo - ORTANA Fédération Nationale des Guides - FNG et la mention Anthropobiologie et développement durable de l’Université d’Antananarivo se sont mobilisés pour une journée de sensibilisation et d’information sur les lémuriens.🐒🌱
                                                </p>
                                                <p>
                                                    <em>
                                                        L'évennement s'est passé à ORTANA Antaninarenina, dans les respects des gestes barrière et le protocole sanitaire
                                                    </em>
                                                </p>
                                                <a class="btn" href="blog.html">Voir plus</a>
                                            </div><!-- end .span6 -->
                                        </div><!-- end .row -->
                                    </div><!-- end .blog-post -->
                                </li>
                                <li>
                                    <div class="blog-post">
                                        <div class="row">
                                            <div class="span6">
                                                <div class="blog-post-thumb">
                                                    <img src="${resourcesPath}/content/index/timbre.jpg" alt="">
                                                    <div class="blog-post-info">
                                                        04
                                                        <small>Nov</small>
                                                    </div><!-- end .blog-post-info -->
                                                </div><!-- end .blog-post-thumb -->
                                            </div><!-- end .span6 -->
                                            <div class="span6">
                                                <div class="blog-post-title">
                                                    <h4>
                                                        <a href="blog.html">
                                                            Timbre à l’effigie du Pr Jonah Ratsimbazafy : « un message de protection »
                                                        </a>
                                                    </h4>
                                                    <p><em>by <a href="#">GERP</a></em></p>
                                                </div><!-- end .blog-post-title -->
                                                <p>
                                                    Un évènement sans pareil, une première dans l’histoire ; le 28 Octobre 2021 fut la date à laquelle eu lieu la célébration de la création de 6 nouveaux timbres-poste. En l’honneur du courage sans faille du Professeur Henri Jonah RATSIMBAZAFY dans sa noble quête de fervent défenseur de l’environnement, il a été immortalisé sur les nouveaux timbres ainsi que 5 autres espèces de lémuriens. Une première car il est le premier primatologue mondial à figurer sur un timbre de son vivant. C’est un véritable symbole de courage et d’espoir pour la génération future.
                                                </p>
                                                <p>
                                                    <em>
                                                        La cérémonie a eu lieu au Carlton Anosy
                                                    </em>
                                                </p>
                                                <a class="btn" href="blog.html">Voir plus</a>
                                            </div><!-- end .span6 -->
                                        </div><!-- end .row -->
                                    </div><!-- end .blog-post -->
                                </li>
                            </ul>
                        </div><!-- end .blog-post-slider -->
                    </div><!-- end .span12 -->
                </div><!-- end .row -->
                <div class="fullwidth-section parallax" id="bg-2" style="background-image: url('${resourcesPath}/assets/images/background/fexpert.png') ">
                    <div class="fullwidth-section-content">
                        <div class="row">
                            <div class="span3">
                                <div class="milestone">
                                    <div class="milestone-content">
                                        <span class="milestone-value" data-stop="880" data-speed="1000"></span>
                                        <div class="milestone-description">
                                            <h4 class="text-uppercase"><spring:message code="text.users" /></h4>
                                            <!--<p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc mollis, lacus vel vulputate consequat, quam sapien
                                            tristique leo, eget placerat urna quam.
                                        </p>-->
                                        </div><!-- end .milestone-description -->
                                    </div><!-- end .milestone-content -->
                                </div><!-- end .milestone -->
                            </div><!-- end .span3 -->
                            <div class="span3">
                                <div class="milestone">
                                    <div class="milestone-content">
                                        <span class="milestone-value" data-stop="112" data-speed="1000"></span>
                                        <div class="milestone-description">
                                            <h4 class="text-uppercase"><spring:message code="text.species.detail" /></h4>
                                        </div><!-- end .milestone-description -->
                                    </div><!-- end .milestone-content -->
                                </div><!-- end .milestone -->
                            </div><!-- end .span3 -->
                            <div class="span3">
                                <div class="milestone">
                                    <div class="milestone-content">
                                        <span class="milestone-value" data-stop="16726" data-speed="1000"></span>
                                        <div class="milestone-description">
                                            <h4 class="text-uppercase"><spring:message code="text.obsercations" /></h4>
                                        </div><!-- end .milestone-description -->
                                    </div><!-- end .milestone-content -->
                                </div><!-- end .milestone -->
                            </div><!-- end .span3 -->
                            <div class="span3">
                                <div class="milestone">
                                    <div class="milestone-content">
                                        <span class="milestone-value" data-stop="1406" data-speed="1000"></span>
                                        <div class="milestone-description">
                                            <h4 class="text-uppercase"><spring:message code="service.documents" /></h4>
                                        </div><!-- end .milestone-description -->
                                    </div><!-- end .milestone-content -->
                                </div><!-- end .milestone -->
                            </div><!-- end .span3 -->
                        </div><!-- end .row -->
                    </div><!-- end .fullwidth-section-content -->
                </div><!-- end .fullwidth-section -->
                <div id="inscription">
                    <div class="row">
                        <div class="span12">
                            <div class="headline">
                                <h3><spring:message code="slider.join_us" /></h3>
                            </div><!-- end .headline -->
                        </div><!-- end .span12 -->
                    </div><!-- end .row -->
                    <div class="row">
                        <div class="span6">
                            <div class="headline-2">
                                <h3><spring:message code="text.joinus" /></h3>
                            </div><!-- end .headline-2 -->
                            <p><spring:message code="text.inscription" /></p>
                        </div><!-- end .span6 -->
                        <div id="inscr" class="span6">
                            <div class="widget ewf_widget_newsletter">                            
                                <form action="https://www.lemursportal.org/forum/register" method="POST" id="registrationForm" class="comment-form" novalidate>
                                    <!-- Text or HTML to be displayed before the set of comment form fields if the user is not logged in. -->
                                    <!--                                <p class="comment-notes">Your email address will not be published.</p>-->
                                    <p class="comment-form-author">
                                        <label for="author"><spring:message code="signin.name" /> <span class="required">*</span></label>
                                        <input class="span4" id="author" name="nom" type="nom" value="" size="30" aria-required="true" placeholder="<spring:message code="signin.name" />">
                                    </p>
                                    <p class="comment-form-author">
                                        <label for="author"><spring:message code="signin.firstname" /><span class="required">*</span></label>
                                        <input id="prenom" name="prenom" type="prenom" class="span4" value="" size="30" aria-required="true" placeholder="<spring:message code="signin.firstname" />">
                                    </p>
                                    <p class="comment-form-email">
                                        <label for="email"><spring:message code="signin.email" /><span class="required">*</span></label>
                                        <input id="email" name="email" type="email" class="span4" value="" size="30" aria-required="true" placeholder="<spring:message code="signin.email" />">
                                    </p>
                                    <p class="comment-form-url">
                                        <label for="url"><spring:message code="signin.password" /></label>
                                        <input type="password" name="password" id="password" class="span4"    value="" size="30" placeholder="<spring:message code="signin.password" />">
                                    </p>
                                    <p class="comment-form-comment">
                                        <label for="comment"><spring:message code="signin.confpassword" /></label>
                                        <input type="password" class="span4" id="comment"  value="" size="30" placeholder="<spring:message code="signin.confpassword" />">
                                    </p>
                                    <!-- Text or HTML to be displayed after the set of comment fields (and before the submit button) -->
                                    <p class="form-allowed-tags">You may use these <abbr title="HyperText Markup Language">HTML</abbr> tags and attributes: <code> allowed_tags() </code></p>
                                    <p class="form-submit">
                                        <input class="btn" name="submit" type="submit" id="submit" value="<spring:message code="login.signup" />">
                                    </p>
                                </form>
                            </div><!-- end .ewf_widget_newsletter -->
                        </div><!-- end .span6 -->
                    </div><!-- end .row -->
                </div><!-- end #subscribe -->
            </div><!-- end #content -->
            <div class="wrapper">
                <div onclick="window.location = 'https://www.facebook.com/lemursportal'" class="button-wrap">
                    <div class="icon-wrap">
                        <i class="fa fa-facebook fa-2x"></i>
                    </div>
                    <span>Facebook</span>
                </div>
                <div onclick="window.location = 'https://twitter.com/LemursPortal'" class="button-wrap">
                    <div class="icon-wrap">
                        <i class="fa fa-twitter fa-2x"></i>
                    </div>
                    <span>Twitter</span>
                </div>
                <div onclick="window.location = 'https://www.instagram.com/lemursportal/'" class="button-wrap">
                    <div class="icon-wrap">
                        <i class="fa fa-instagram fa-2x"></i>
                    </div>
                    <span>Instagram</span>
                </div>
                <div onclick="window.location = 'https://www.youtube.com/channel/UCNN2Zq7Ny8tGehZkcKpkjHg'" class="button-wrap">
                    <div class="icon-wrap">
                        <i class="fa fa-youtube fa-2x"></i>
                    </div>
                    <span>Youtube</span>
                </div>
            </div>
            <div class="partenaires">
                <div class="liste-footer">
                    <a href="https://www.lemursportal.org/forum/" class="publier"><spring:message code="footer.post" /></a>
                    <a href="https://www.lemursportal.org/forum/documents" class="documents"><spring:message code="service.documents" /></a>
                    <a href="https://www.lemursportal.org/forum/experts" class="expert"><spring:message code="menu.experts" /></a>
                    <a href="https://www.lemursportal.org/forum/formation/" class="opportunites"><spring:message code="footer.opportunities" /></a>
                    <!--<a href="" class="aide">Aide</a>-->
                    <!--<a href="" class="contacts">Contacts</a>-->
                </div>
                <div class="img-ressources">
                    <a href="https://www.fapbm.org/"><img src="${resourcesPath}/assets/images/ressource1.png" alt="" class="img-ressourcesliste"></a>
                    <a href="https://www.gerp.mg/"><img src="${resourcesPath}/assets/images/ressource2.png" alt="" class="img-ressourcesliste"></a>
                    <a href="https://www.primate-sg.org/"><img src="${resourcesPath}/assets/images/ressource3.png" alt="" class="img-ressourcesliste"></a>
                    <a href="https://www.wcs.org/"><img src="${resourcesPath}/assets/images/ressource4.png" alt="" class="img-ressourcesliste"></a>
                    <a href="https://www.rebioma.org/"><img src="${resourcesPath}/assets/images/ressource5.png" alt="" class="img-ressourcesliste"></a>
                </div>
                <div class="partenaire-princ">
                    <a href="https://jrsbiodiversity.org/"><img src="${resourcesPath}/assets/images/ressource6.svg" alt="" class="img-ressourcesliste2"></a>
                    <!--<img src="${resourcesPath}/logos/rewild-logo-color.svg" alt="" class="img-ressourcesliste2">-->
                    <a href="https://www.rewild.org/"><img src="${resourcesPath}/logos/Rewild_Logo_green.png" alt="" class="img-ressourcesliste2"></a>
                </div>

                <br>
                <!--<h3>Nos partenaires</h3>-->

                <div class="row">
                    <div class="container">
                        <section class="logo-carousel slider" data-arrows="true">
                            <div class="slide">
                                <a href="https://www.ecologie.gov.mg/">
                                    <img src="https://www.lemursportal.org/resources/logos/MEEF_logo.png">
                                </a>
                            </div>
                            <div class="slide">
                                <a href="https://www.tourisme.gov.mg/">
                                    <img src="https://www.lemursportal.org/resources/logos/05_2016-Logo-300x297.png">
                                </a>
                            </div>
                            <div class="slide">
                                <a href="#">
                                    <img src="https://www.lemursportal.org/resources/logos/logo_ADD.jpg">
                                </a>
                            </div>
                            <div class="slide">
                                <a href="https://www.aspinallfoundation.org/the-aspinall-foundation/working-around-the-world/madagascar/">
                                    <img src="https://www.lemursportal.org/resources/logos/logo_Aspinall.jpg">
                                </a>
                            </div>
                            <div class="slide">
                                <a href="https://www.dpz.eu/en/unit/sociobiology-homepage/study-sites/madagascar.html">
                                    <img src="https://www.lemursportal.org/resources/logos/logo_DPZ.jpg">
                                </a>
                            </div>
                            <div class="slide">
                                <a href="#">
                                    <img src="https://www.lemursportal.org/resources/logos/logo_DREEF-Atsinanana.jpg">
                                </a>
                            </div>
                            <div class="slide">
                                <a href="https://www.issedd-univ.mg/">
                                    <img src="https://www.lemursportal.org/resources/logos/logo_ISSEDD.png">
                                </a>
                            </div>
                            <div class="slide">
                                <a href="https://www.stonybrook.edu/commcms/centre-valbio/">
                                    <img src="https://www.lemursportal.org/resources/logos/logo_Valbio.jpg">
                                </a>
                            </div>
                            <div class="slide">
                                <a href="https://www.madagasikara-voakajy.org/">
                                    <img src="https://www.lemursportal.org/resources/logos/MV_logo.png">
                                </a>
                            </div>
                            <div class="slide">
                                <a href="https://www.peregrinefund.org/projects/madagascar-project">
                                    <img src="${resourcesPath}/logos/PGF_logo.png">
                                </a>
                            </div>
                            <div class="slide">
                                <a href="https://www.conservation.org/global/madagascar/Pages/default.aspx">
                                    <img src="https://www.lemursportal.org/resources/logos/CI_logo.png">
                                </a>
                            </div>
                            <div class="slide">
                                <img style="width: 1px; height: 1px;" src="${resourcesPath}/logos/blanc.png">
                            </div>
                            <!--<div class="slide"><img src=""></div>-->
                        </section>
                    </div>
                </div>

            </div>
            <div class="divcopyright">
                <p class="copiryght">Copyright © - Lemurs Portal 2022</p>
            </div>
        </div><!-- end #wrap -->
        <a id="back-to-top" href="#">
            <i class="ifc-up4"></i>
        </a>
        <!-- /// jQuery ////////  -->
        <script src="${resourcesPath}/assets/vendors/jquery-2.1.1.min.js"></script>
        <!-- /// ViewPort ////////  -->
        <script src="${resourcesPath}/assets/vendors/viewport/jquery.viewport.js"></script>
        <!-- /// Easing ////////  -->
        <script src="${resourcesPath}/assets/vendors/easing/jquery.easing.1.3.js"></script>
        <!-- /// Slick ////////  -->
        <script src="${resourcesPath}/assets/vendors/slick/slick.min.js"></script>
        <!-- /// Animations ////////  -->
        <script src="${resourcesPath}/assets/vendors/animations/animate.js"></script>
        <!-- /// Superfish Menu ////////  -->
        <script src="${resourcesPath}/assets/vendors/superfish/hoverIntent.js"></script>
        <script src="${resourcesPath}/assets/vendors/superfish/superfish.js"></script>
        <!-- /// bxSlider ////////  -->
        <script src="${resourcesPath}/assets/vendors/bxslider/jquery.bxslider.min.js"></script>
        <!-- /// Magnific Popup ////////  -->
        <script src="${resourcesPath}/assets/vendors/magnificpopup/jquery.magnific-popup.min.js"></script>
        <!-- /// Isotope ////////  -->
        <script src="${resourcesPath}/assets/vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="${resourcesPath}/assets/vendors/isotope/isotope.pkgd.min.js"></script>
        <!-- /// Parallax ////////  -->
        <script src="${resourcesPath}/assets/vendors/parallax/jquery.parallax.min.js"></script>
        <!-- /// EasyPieChart ////////  -->
        <script src="${resourcesPath}/assets/vendors/easypiechart/jquery.easypiechart.min.js"></script>
        <!-- /// YTPlayer ////////  -->
        <script src="${resourcesPath}/assets/vendors/itplayer/jquery.mb.YTPlayer.js"></script>
        <!-- /// Easy Tabs ////////  -->
        <script src="${resourcesPath}/assets/vendors/easytabs/jquery.easytabs.min.js"></script>
        <!-- /// Form validate ////////  -->
        <script src="${resourcesPath}/assets/vendors/jqueryvalidate/jquery.validate.min.js"></script>
        <!-- /// Form submit ////////  -->
        <script src="${resourcesPath}/assets/vendors/jqueryform/jquery.form.min.js"></script>
        <!-- /// gMap ////////  -->
        <!--    <script src="https://maps.google.com/maps/api/js?key=AIzaSyDG-gTAgMTtgV3DOK0UQIkcruOy2yDDauc&sensor=false"></script>-->
        <script src="${resourcesPath}/assets/vendors/gmap/jquery.gmap.min.js"></script>
        <!-- /// Custom JS ////////  -->
        <script src="${resourcesPath}/assets/js/integrity.js"></script>
        <!-- My JS -->
        <script>
                    $(function () {
                        var debit = navigator.connection.downlink;
                        console.log("Débit de la connexion : ");
                        console.log(debit);

                        if (debit < 1) {
                            console.log("Débit trop bas pour la vidéo");
                        } else {
                            $('#video-hero').removeClass("hide-video");
                            $('#video-hero').addClass("show-video");
                            $('#laptop-video-slider').removeClass("hide-video");
                            $('#laptop-video-slider').addClass("show-video");
                            $('#laptop-img-slider').removeClass("show-video");
                            $('#laptop-img-slider').addClass("hide-video");
                            /*$('#video-hero').show();
                             $('#laptop-video-slider').show();
                             $('#laptop-img-slider').remove();*/
                        }

                    });
        </script>
        <script type="text/javascript">
            function setGetParameter(paramName, paramValue) {
                //      verbose parameter
                console.log("set parameter :");
                console.log(paramName);
                console.log(paramValue);

                if (paramValue == '${pageContext.response.locale}')
                    return;

                var url = window.location.href;
                console.log("url : ");
                console.log(url);

                var hash = location.hash;
                console.log("hash : ");
                console.log(hash);

                url = url.replace(hash, '');
                console.log("url wihtout hash");
                console.log(url);

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
                                                    }
                                                });
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
                                //                if (isDonateClosed()) {
                                //                    removeStickyDonate();
                                //                }
                            });
        </script>

        <!-- Caroussel logo for partners -->
        <script>
            $(document).ready(function () {
                $('.logo-carousel').slick({
                    slidesToShow: 6,
                    slidesToScroll: 1,
                    autoplay: true,
                    autoplaySpeed: 1000,
                    arrows: true,
                    dots: false,
                    pauseOnHover: false,
                    responsive: [{
                            breakpoint: 768,
                            settings: {
                                slidesToShow: 4
                            }
                        }, {
                            breakpoint: 520,
                            settings: {
                                slidesToShow: 2
                            }
                        }]
                });
            });

            //         scroll animation
            var $root = $('html, body');

            $('#join-us').click(function () {
                $root.animate({
                    scrollTop: $($.attr(this, 'href')).offset().top
                }, 500);

                return false;
            });
        </script>
    </body>

</html>
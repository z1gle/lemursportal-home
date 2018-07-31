<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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

<link rel="stylesheet" href="${resourcesPath}/css/slit-slider.css">

<link rel="stylesheet" href="${resourcesPath}/css/animate.css">

<link rel="stylesheet" href="${resourcesPath}/css/main.css">

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

	<!-- preloader -->
	<div id="preloader">
            <div class="loder-box">
            	<div class="battery"></div>
            </div>
		</div>
	<!-- end -->

	<!-- Navigation -->
	<header id="navigation"
		class="navbar-inverse navbar-fixed-top animated-header">
		<div class="container">
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
					<li><a href="#body"><spring:message code="menu.home" /></a></li>
					<li><a href="#service"><spring:message code="menu.service" /></a></li>
					<li><a href="#species"><spring:message code="menu.species" /></a></li>
					<li><a href="#experts"><spring:message code="menu.experts" /></a></li>
					<li><a href="#number"><spring:message code="menu.number" /></a></li>
					<li><a href="#contact"><spring:message code="menu.contact" /></a></li>
                                        <!--<li><a href="https://www.lemursportal.org/forum/login" onclick="window.location='https://www.lemursportal.org/forum/login';"><spring:message code="home.login"/></a></li>-->
					<!--<li><a href="https://www.lemursportal.org/forum/signup" onclick="window.location='https://www.lemursportal.org/forum/signup';"><spring:message code="login.signup"/></a></li>-->
					<li><div style="padding-top: 12px;">
							<select id="lang-select">
								<option value="fr" selected="selected">Français</option>
								<option value="en" >English</option>
								<option value="mg" >Malagasy</option>
							</select>
						</div></li>
				</ul>
			</nav>
			<!-- /main nav -->

		</div>
	</header>


	<main class="site-content" role="main"> <!-- Slider -->

	<section id="home-slider">
		<div id="slider" class="sl-slider-wrapper">

			<div class="sl-slider">

				<div class="sl-slide" data-orientation="horizontal"
					data-slice1-rotation="3" data-slice2-rotation="3"
					data-slice1-scale="2" data-slice2-scale="2">

					<div class="bg-img bg-img-3"></div>
					<div class="slide-caption">
						<div class="caption-content">
							<h2><spring:message code="slider.lemursportal" /></h2>
							<span><spring:message code="slider.lemursportal.txt" /></span> <a href="https://www.lemursportal.org/forum/join_us"
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
							<h2 class="animated fadeInDown"><spring:message code="slider.lemurs" /></h2>
							<span class="animated fadeInDown"><spring:message code="slider.lemurs.txt" /></span>
							<!--a href="#" class="btn btn-blue btn-effect"><spring:message code="slider.join_us" /></a-->
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
							<a href="https://www.lemursportal.org/forum/login" class="btn btn-blue btn-effect"><spring:message code="slider.join_us" /></a>
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
							<a href="https://www.lemursportal.org/forum/login" class="btn btn-blue btn-effect"><spring:message code="slider.join_us" /></a>
						</div>
					</div>

				</div>

			</div>
			<!-- /sl-slider -->

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

		</div>
		<!-- /slider-wrapper -->
	</section>



	<!-- Service section -->
	<section id="service">
		<div class="container">
			<div class="row">

				<div class="sec-title text-center">
					<h2 class="animated bounceInLeft"><spring:message code="menu.service" /></h2>
					<p class="animated bounceInRight"><spring:message code="menu.service.description" /></p>
				</div>

				<div class="col-md-4 col-sm-6 col-xs-12 text-center animated zoomIn"
					data-wow-delay="0.6s">
					<a href="/forum"><div class="service-item">
							<div class="service-icon">
								<i class="fa fa-comments-o fa-3x"></i>
							</div>
							<h3><spring:message code="service.online" /></h3>
							<p style="color: #818181 !important"><spring:message code="service.online.txt" /></p>
						</div></a>
				</div>

				<div class="col-md-4 col-sm-6 col-xs-12 text-center animated zoomIn">
					<a href="/species"><div class="service-item">
							<div class="service-icon">
								<i class="fa fa-database fa-3x"></i>
							</div>
							<h3><spring:message code="service.species" /></h3>
							<p style="color: #818181 !important"><spring:message code="service.species.txt" /></p>
						</div></a>
				</div>

				<div class="col-md-4 col-sm-6 col-xs-12 text-center animated zoomIn"
					data-wow-delay="0.3s">
					<a href="/species/visualisation"><div class="service-item">
							<div class="service-icon">
								<i class="fa fa-globe fa-3x"></i>
							</div>
							<h3><spring:message code="service.visualization" /></h3>
							<p style="color: #818181 !important"><spring:message code="service.visualization.txt" /></p>
						</div></a>
				</div>

			</div>
		</div>
	</section>
	<!-- end -->

	<div class="row text-center pad-top-20" style="background: #f8f8f8;padding: 25px 0;">
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
				Afficher plus d'observations de Madagascar Lemurs Portal sur <br><nobr>iNaturalist.org»</nobr>
				</a></span>
<!-- 				<h2 class="animated bounceInLeft"></h2> -->
				<!-- table class="inat-footer">
					<tr class="inat-user">
						<td class="inat-value">&nbsp;</td>
					</tr>
				</table-->
			</div>
		</div>
	</div>

	<!--div class="row text-center pad-top-20">
			  <div class="sec-title text-center animated fadeInDown">
				<a href="#" target="_blank" class=""><img src="img/googleplay.png"></a>
			  </div>
			</div--> <!-- species section -->
	<section id="species">
		<div class="container">
			<div class="row">

				<div class="sec-title text-center animated fadeInDown">
					<h2><spring:message code="menu.species" /></h2>
					<p></p>
				</div>


				<ul class="project-wrapper animated fadeInUp">
					<li class="species-item"><img
						src="${resourcesPath}/img/species/item.jpg" class="img-responsive"
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
						class="img-responsive" alt="--">
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
						class="img-responsive" alt="--">
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
						class="img-responsive" alt="--">
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
						class="img-responsive" alt="--">
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
						class="img-responsive" alt="--">
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

			</div>
		</div>
	</section><table>
	
	<!-- end --> <!-- experts section -->
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
	<!-- end --> <!-- number section -->
	<section id="number">
		<div class="container">
			<div class="row">

				<div class="sec-title text-center animated fadeInDown">
					<h2><spring:message code="menu.number" /></h2>
					<p>--</p>
				</div>

				<div class="col-md-4 animated fadeInUp">
					<div class="number-table text-center">
						<span><spring:message code="text.users" /></span>
						<div class="value">
							<span></span> <span>${nbrUtilisateur}</span><br> <span><spring:message code="text.users.detail" /></span>
						</div>
					</div>
				</div>

				<div class="col-md-4 animated fadeInUp" data-wow-delay="0.4s">
					<div class="number-table text-center">
						<span><spring:message code="text.species" /></span>
						<div class="value">
							<span></span> <span>${nbrTaxonomi}</span><br> <span><spring:message code="text.species.detail" /></span>
						</div>
					</div>
				</div>

				<div class="col-md-4 animated fadeInUp" data-wow-delay="0.8s">
					<div class="number-table text-center">
						<span><spring:message code="text.obsercations" /></span>
						<div class="value">
							<span></span> <span>${nbrOccurrence}</span><br> <span><spring:message code="text.obsercations.detail" /></span>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- end --> <!-- Social section -->
	<section id="social" class="parallax">
		<div class="overlay">
			<div class="container">
				<div class="row">

					<div class="sec-title text-center white animated fadeInDown">
						<h2><spring:message code="text.follow_us" /></h2>
						<p><img src="${path}visit" alt="Nombre de visite"></p>
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
	<section id="contact">
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
							<i class="fa fa-envelope"></i>lemursportal@lemursportal.org
						</p>

					</address>
				</div>

			</div>
		</div>
	</section>
	<!-- end -->

	<section id="google-map">
		<div id="map-canvas" class="animated fadeInUp"></div>
	</section>

	</main>

	<footer id="footer">
		<div class="container">
			<div class="row">

				<div class="col-md-1 animated" align="center">
					<img src="${resourcesPath}/img/logo-lemurs-blanc.png" style="width: 75%; margin-left: 15px;" alt="">
				</div>

				<div class="col-md-2 animated fadeInUp" data-wow-delay="0.4s">
					<ul style="padding-left: 20px;">
<!-- 						<li class="animated zoomIn"><a href="www.lemursportal.org">Home</a></li> -->
						<li class="animated zoomIn"><a href="https://www.lemursportal.org/forum/">Post</a></li>
						<li class="animated zoomIn"><a href="https://www.lemursportal.org/forum/documents">Documents</a></li>
						<li class="animated zoomIn"><a href="https://www.lemursportal.org/forum/experts">Experts</a></li>
					</ul>
				</div>

				<div class="col-md-2 animated fadeInUp" data-wow-delay="0.4s">
					<ul style="padding-left: 20px;">
						<li class="animated zoomIn"><a href="https://www.lemursportal.org/forum/formation/">Opportunities</a></li>
						<li class="animated zoomIn"><a href="#">Help</a></li>
						<!--li class="animated zoomIn"><a href="#">Mentions légales</a></li-->
						<li class="animated zoomIn"><a href="#contact">Contact</a></li>
					</ul>
				</div>

				<div class="col-md-4 animated fadeInUp" data-wow-delay="0.8s">
					<div class="row">
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
					<a href="http://jrsbiodiversity.org/" target="_blank"><img
						src="http://jrsbiodiversity.org/wp-content/themes/zero/images/jrs-logo.svg"
						style="border-radius: 4%; margin-top: 3%;padding:2%;"></a>
				</div>
			</div>
				<div class="row text-center" style="border-bottom: solid 1px; border-top: solid 1px;border-color: #84bc00; margin: 30px 15px; padding-bottom: 30px;">
<!-- 					<div class="footer-content"> -->
						<div style="font-size: 16px;padding: 15px;font-weight: bold;">PARTNERS</div>
						<div class="footer-social">
							<ul>
								<li class=""><a href="#" target="_blank"><img
								src="${resourcesPath}/logos/logo_ADD.jpg"></a></li>
								<li class=""><a href="#" target="_blank"><img
								src="${resourcesPath}/logos/logo_Aspinall.jpg"></a></li>
								<li class=""><a href="#" target="_blank"><img
								src="${resourcesPath}/logos/logo_DPZ.jpg"></a></li>
								<li class=""><a href="#" target="_blank"><img
								src="${resourcesPath}/logos/logo_DREEF-Atsinanana.jpg"></a></li>
								<li class=""><a href="#" target="_blank"><img
								src="${resourcesPath}/logos/logo_ISSEDD.png"></a></li>
								<li class=""><a href="#" target="_blank"><img
								src="${resourcesPath}/logos/logo_Valbio.jpg"></a></li>
							</ul>
						</div>

<!-- 					</div> -->
				</div>
<!-- 				<div class="row"> -->
<!-- 		<div class="container"> -->
<!-- 			<section class="customer-logos slider"> -->
<%-- 				<div class="slide"><img src="${resourcesPath}/logos/logo_ADD.jpg"></div> --%>
<%-- 				<div class="slide"><img src="${resourcesPath}/logos/logo_Aspinall.jpg"></div> --%>
<%-- 				<div class="slide"><img src="${resourcesPath}/logos/logo_DPZ.jpg"></div> --%>
<%-- 				<div class="slide"><img src="${resourcesPath}/logos/logo_DREEF-Atsinanana.jpg"></div> --%>
<%-- 				<div class="slide"><img src="${resourcesPath}/logos/logo_ISSEDD.png"></div> --%>
<%-- 				<div class="slide"><img src="${resourcesPath}/logos/logo_Valbio.jpg"></div> --%>
<!-- 			</section> -->
<!-- 		</div> -->
<!-- 	</div> -->

	<script type="text/javascript">
		$(document).ready(function(){
			$('.customer-logos').slick({
				slidesToShow: 6,
				slidesToScroll: 1,
				autoplay: true,
				autoplaySpeed: 1000,
				arrows: false,
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
						slidesToShow: 3
					}
				}]
			});
		});
	</script>
			</div>
		<div style="background: #2E2E2E; margin-top: 60px">
			<div class="row text-center">
				<div class="footer-content">
					<p>Copyright &copy; - Lemurs Portal 2017</p>
				</div>
			</div>
	</footer>

	<script src="${resourcesPath}/js/jquery-1.11.1.min.js"></script>

	<script src="${resourcesPath}/js/bootstrap.min.js"></script>

	<script src="${resourcesPath}/js/jquery.singlePageNav.min.js"></script>

	<script src="${resourcesPath}/js/jquery.fancybox.pack.js"></script>

	<script
		src="https://maps.google.com/maps/api/js?key=AIzaSyDC9ch_Ee_RiaM4H_270yzyI8n2OxdbCcY&callback=initMap"></script>

	<script src="${resourcesPath}/js/owl.carousel.min.js"></script>

	<script src="${resourcesPath}/js/jquery.easing.min.js"></script>

	<script src="${resourcesPath}/js/jquery.slitslider.js"></script>
	<script src="${resourcesPath}/js/jquery.ba-cond.min.js"></script>

	<script src="${resourcesPath}/js/wow.min.js"></script>

	<script src="${resourcesPath}/js/main.js"></script>
	<script type="text/javascript">
		function setGetParameter(paramName, paramValue) {
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
						function() {
							var maxLength = 310;
							$('.show-read-more p').contents().unwrap();
							$(".show-read-more")
									.each(
											function() {
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
															.parent().children('a').attr(
																	'href');
													$(this)
															.append(
																	' <a href="'+link+'" class="read-more"> read more</a>');
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
							$('#lang-select').val('${pageContext.response.locale}');
							$('#lang-select').change(function(){
								setGetParameter('lang', this.value);
							});
						});
	</script>
</body>
</html>


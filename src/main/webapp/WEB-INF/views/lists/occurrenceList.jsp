<%-- 
    Document   : results
    Created on : 16 oct. 2019, 08:59:10
    Author     : OC-USER6
--%>
<%@include file="../header_meta.jsp" %>
<title><spring:message code="home.header.observations" /></title>
<%@include file="../header.jsp" %>
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
    .forum-item, .cadre {
        margin: -6px 0 25px;
        padding: 15px 20px;
        border: 1px solid #d7d7d7;
        background: #ede9e9;
    }
    * {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }
    p {
        margin: 0 0 10px;
    }

    * {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }
    user agent stylesheet
    p {
        display: block;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
    }
    .forum-item .forum-sub-title {
        color: #585858;
        margin-top: 10px;
        font-size: 12px;
        /* width: 75%; */
        width: 65%;
        float: left;
    }
    .table {
        width: 100%;
        max-width: 100%;
        margin-bottom: 10px;
    }

    .custab {
        border: 1px solid #ccc;
        padding: 5px;
        margin: 5% 0;
        transition: 0.5s;
    }
    table {
        background-color: transparent;
    }
    table {
        border-spacing: 0;
        border-collapse: collapse;
    }
    * {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }
    user agent stylesheet
    table {
        display: table;
        border-collapse: separate;
        border-spacing: 2px;
        border-color: grey;
    }
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
    .form {
        display: block;
        height: 30px;
    }
    input{
        font-family: inherit;
        font-size: inherit;
        line-height: inherit;
        color: inherit;
        font: inherit;
        margin: 0;
        font-size: 100%;
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
        margin: 15px 22px;
        top: 0;
        font-size: 1.60714285714125rem;
        border: none;
        cursor: pointer;
    }
    .search-box {
        background: #fff;
        color: #444;
        padding: 12px 12px;
        max-width: 80%;
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
    html {
        font-size: 12px;
        font-family: sans-serif;
        -ms-text-size-adjust: 100%;
        -webkit-text-size-adjust: 100%;
    }
    body.md-default-theme, body, html.md-default-theme, html {
        color: rgba(0,0,0,0.87);
        background-color: rgb(250,250,250);
    }
    .w{
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        max-width: 700px;
        color:grey;
        padding-right: 1.42857142857rem;
        margin: 0px 15px;
        text-align: justify;
        line-height: 30px;
    }
</style>
<div class="row">
    <div class="well ">
        <div class="container">
            <div class="search-box">
                <c:url var="results" value="/results${keyword}"></c:url>
                <form method="get" class="form" action="${results}">
                    <input type="text" name="keyword" value="${searchfield}" /> &nbsp;
                    <button type="submit" class="search-box__submit fa fa-search btn-default"/>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div>
        <h6 style="color:grey">${countoccurrence} <spring:message code="home.header.observations" /> <spring:message code="text.found" /></h6>
    </div>
    <div class="col-sm-9" id="resultat">
        <div class="row">
            <div class="panel panel-default well-sm">
                <div class="row">
                    <c:forEach items="${resultocc}" var="occ">      
                        <div class="col-sm-3"><c:out value="${occ[0]}"></c:out></div>
                        <div class="col-sm-1">Toutes(<c:out value="${occ[1]}"></c:out>)</span></div>
                        <div class="col-sm-2">Fiable(s)(<c:out value="${occ[2]}"></c:out>)</div>
                        <div class="col-sm-3">En attente de validation(<c:out value="${occ[3]}"></c:out>)</div>
                        <div class="col-sm-3">Questionnable(s)(<c:out value="${occ[4]}"></c:out>)</div>
                    </c:forEach>
                </div>
            </div>
        </div> 
    </div>                 
</div>
<!-- <div class="col-sm-3">
     <div class="col-sm-12">
         <center><h4>Carte</h4></center>
         <div class="panel panel-default well-sm">
             <div class="map" id="map">more</div>
         </div>
     </div>
 </div>-->
</div>
<%@include file="../footer.jsp" %>
<%-- 
    Document   : results
    Created on : 16 oct. 2019, 08:59:10
    Author     : OC-USER6
--%>
<%@include file="../header_meta.jsp" %>
<title><spring:message code="menu.species" /></title>
<%@include file="../header.jsp" %>
<style type="text/css">
    a.read-more {
        color: black /*#74ac00*/;
    }

    a.read-more:hover {
        text-decoration: underline;
        color: #000;
    }
    .table {
        width: 100%;
        max-width: 100%;
        margin-bottom: 10px;
    }
    * {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }
    .species-sidebar {
        padding: 0px;
        background: #f7f5f5 none repeat scroll 0 0;
        border: 0px solid #d7d7d7;
        margin-bottom: 50px;
        background-color: #fff;
        border-radius: 2px;
        box-shadow: 0 1px 3px #9e9e9e;
        display: inline-block;
        flex-grow: 1;
        position: relative;
        overflow: hidden;
        vertical-align: top;
        padding: 20px 20px 5px 20px;
    }
    .speciespic {
        position: relative;
        margin: 20px;
    }
    .species-name {
        color: #333;
        font-size: 14px;
        font-weight: bold;
        height: 44px;
        margin-bottom: 7px;
        text-overflow: ellipsis;
        overflow: hidden;
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
        <h6 style="color:grey">${counttax} <spring:message code="menu.species" />  <spring:message code="text.found" /></h6>
    </div>
    <div class="col-sm-9" id="resultat">
        <div class="row">
            <div class="forum-container">
                <div class="row expert">
                    <c:forEach items="${tax}" var="taxo">
                        <div class="col-md-3">
                            <div class="species-sidebar">
                                <div class="image speciespic">
                                    <c:choose>
                                        <c:when test="${empty taxo[2]}">
                                            <img src="${resourcesPath}/img/images.png" alt="<c:out value="${taxo[0]}" /> " style="background-position: center; margin: auto; width: 100%; height: 150px; background-image:  url('${resourcesPath}/img/images.png'); background-repeat: no-repeat; background-size: auto 100%;" class="img-responsive"/>
                                        </c:when>
                                        <c:otherwise>
                                            <img src="https://www.lemursportal.org/species/${taxo[2]}" alt="<c:out value="${taxo[0]}" /> " style="background-position: center; margin: auto; width: 100%; height: 150px; background-image:  url('https://www.lemursportal.org/species/${taxo[2]}'); background-repeat: no-repeat; background-size: auto 100%;" class="img-responsive"/>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div class="species-name">
                                    <a href="https://www.lemursportal.org/species/getDetailTaxo?id=${taxo[1]}">
                                        <div class="species-name"><c:out value="${taxo[0]}" /></div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>             
    </div>
</div>
<%@include file="../footer.jsp" %>
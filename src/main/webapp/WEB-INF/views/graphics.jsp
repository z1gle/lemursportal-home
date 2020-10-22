<%-- 
    Document   : graphics
    Created on : 15 oct. 2019, 14:51:34
    Author     : OC-USER6
--%>
<%@include file="./header_meta.jsp" %>
<title><spring:message code="text.graphics" /></title>
<%@include file="./header.jsp" %>
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
    caption {
        padding-bottom: 15px;
        font-family: 'Verdana';
        font-size: 1.2em;
        color:#555;
    }
    #datatable {
        font-family: Verdana, sans-serif;
        border-collapse: collapse;
        border: 1px solid #EBEBEB;
        margin: 10px auto;
        text-align: center;
        width: 100%;
        max-width: 500px;
    }
    #datatable caption {
        padding: 1em 0;
        font-size: 1.2em;
        color: #555;
    }
    #datatable th {
        font-weight: 600;
        padding: 0.5em;
    }
    #datatable td, #datatable th, #datatable caption {
        padding: 0.5em;
    }
    #datatable thead tr, #datatable tr:nth-child(even) {
        background: #f8f8f8;
    }
    #datatable tr:hover {
        background: #f1f7ff;
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
<section class="" >
    <div class="container">
        <div class="col-sm-12">
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
            <div id="listspecies" class="col-sm-12">
                <div class="row">
                    <center> <h4><spring:message code="menu.species" /></h4></center>
                </div>
                <div class="row">
                    <div class="col-sm-12" id="speciesbyfamily" style="min-width: 310px; height: 400px; margin: 0 auto">
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
                </div>
                <div class="row" id="">
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
                <div class="row" id="">
                    <div class="col-sm-12" id="speciesgpBytopics" style="min-width: 310px; height: 400px; margin: 0 auto">
                        <table id = "datatablebyspeciesGpBytopics" class="table table-responsive table-striped">
                            <thead>
                            <th><spring:message code="metadata.topics" /></th>
                            <th><spring:message code="text.count" /></th>
                            </thead>
                            <c:forEach items="${speciesGpBytopics}" var="speciesGpBytopic">
                                <tbody>
                                <td><c:out value="${speciesGpBytopic[0]}"></c:out></td>
                                <td><c:out value="${speciesGpBytopic[1]}"></c:out></td>
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
                <div class="row" id="">
                    <div class="col-sm-12" id="DocumentByTopic" style="min-width: 310px; height: 400px; margin: 0 auto">
                        <table id = "datatableDT" class="table table-responsive table-striped">
                            <thead><th><spring:message code="metadata.topics" /></th><th><spring:message code="text.count" /></th></thead>
                                <c:forEach items="${docbytopics}" var="dt">
                                <tbody>
                                    <tr> 
                                        <td><c:out value="${dt[1]}"></c:out></td>

                                            <td><c:out value="${dt[0]}"></c:out></td>
                                        </tr>
                                    </tbody>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@include file="./footer.jsp" %>
<script type="text/javascript">
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
            table: 'datatablebyspeciesGpBytopics'
        };
        var chart = {
            type: 'column'
        };
        var title = {
            text: '<spring:message code="species.by.topics" />'
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
        $('#speciesgpBytopics').highcharts(json);
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
                        '<spring:message code="text.year" />: ' + this.point.name.toLowerCase() + '</b><br/>' +
                        '<spring:message code="text.count" />: ' + this.point.y;
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
                return '<b>' + this.series.name + ':' +
                        this.point.y + '</b><br/><spring:message code="text.year" />:' + this.point.name.toLowerCase();
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
    $(document).ready(function () {
        var data = {
            table: 'datatableDT'
        };
        var chart = {
            type: 'column'
        };
        var title = {
            text: '<spring:message code="publication.by.topics" />'
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
        $('#DocumentByTopic').highcharts(json);
    });
</script>
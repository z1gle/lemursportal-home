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
                            <li class="animated zoomIn"><a
                                    href="https://www.lemursportal.org/forum/">Post</a></li>
                            <li class="animated zoomIn"><a
                                    href="https://www.lemursportal.org/forum/documents"><spring:message code="home.document" /></a></li>
                            <li class="animated zoomIn"><a
                                    href="https://www.lemursportal.org/forum/experts"><spring:message code="menu.experts" /></a></li>
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
                    <input title="<spring:message code="metadata.popup.bubble.source"/>" placeholder="ex: Syst. Biol. 52(5):705?716, 2003" type="text" class="form-control" id="source">
                </div>
                <div class="autocomplete" style="width: 100%;">
                    <spring:message code="metadata.subject"/>
                    <input title="<spring:message code="metadata.popup.bubble.subject"/>" placeholder="ex: Mouse lemur Species | Bayesian Methods" type="text" class="form-control" id="subject">
                </div>                        
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
                    <input title="<spring:message code="metadata.popup.bubble.rights"/>" placeholder="ex: Syst. Biol. 52(5):705?716, 2003 | Copyright(c) Society of Systematic Biologists" type="text" class="form-control" id="rights">                        
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
                    <input type="file" class="form-control" name="excelfile" ng-model="file" id="csv-xl"> <br>
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
<%--ito jerevo ihany an <script src="${resourcesPath}/js/jquery-1.11.1.min.js"></script>--%>
<script src = "${resourcesPath}/js/jquery.min.js"></script>
<script src = "${resourcesPath}/js/highcharts.js"></script> 
<script src = "${resourcesPath}/js/data.js"></script>
<script src = "${resourcesPath}/js/exporting.js"></script>
<script src = "${resourcesPath}/js/export-data.js"></script>
<script src="${resourcesPath}/js/jquery.highchartTable.js" type="text/javascript"></script>
<script src="${resourcesPath}/js/bootstrap.min.js"></script>
<script src="${resourcesPath}/js/jquery.singlePageNav.min.js"></script>
<script src="${resourcesPath}/js/jquery.fancybox.pack.js"></script>
<script
src="https://maps.google.com/maps/api/js?key=AIzaSyDC9ch_Ee_RiaM4H_270yzyI8n2OxdbCcY&callback"></script>
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
                            url: 'https://www.lemursportal.org/forum/secured/document/post',
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
                            url: "https://www.lemursportal.org/species/findByespeceTaxo",
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
                            url: 'https://www.lemursportal.org/species/processExcel',
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
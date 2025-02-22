<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Directory HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico">

		<!-- CSS here -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slicknav.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/flaticon.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/price_rangs.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/themify-icons.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slick.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nice-select.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
   </head>
   
   <!-- 눈누 - 한산스네오 레귤러 폰트 -->
	<style type="text/css">
	
		@font-face {
		    font-family: 'SpoqaHanSansNeo-Regular';
		    	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SpoqaHanSansNeo-Regular.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}
		
		body {
			font-family: 'SpoqaHanSansNeo-Regular';
		}
		
	</style>
	
	<!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder.jpg" alt="">
                </div>
            </div>
        </div>
    </div>

   <body>
    <!-- banner.jsp 시작 -->
    <c:import url="/WEB-INF/jsp/partial/banner.jsp"/>
    <!-- banner.jsp 끝 -->

    <main>

        <!-- Hero Start-->
        <div class="hero-area3 hero-overly2 d-flex align-items-center ">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8 col-lg-9">
                        <div class="hero-cap text-center pt-50 pb-20">
                            <h2>숙소 목록</h2>
                        </div>
                        <!--Hero form -->
                    
                    </div>
                </div>
            </div>
        </div>
        <!--Hero End -->
        <!-- listing Area Start -->
        <div class="listing-area pt-120 pb-120">
            <div class="container">
                <div class="row">
                    <!-- Left content -->
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="row">
                            <div class="col-12">
                                    <div class="small-section-tittle2 mb-45">
                                    <h4>Advanced Filter</h4>
                                </div>
                            </div>
                        </div>
                        
                        <!-- selectAccomProductBySearch -->
                        <form action="${pageContext.request.contextPath}/getAccomProductList" method="GET">
	                        <div class="category-listing mb-50">
	                            <div class="single-listing">
	                                <!-- input -->
	                                <div class="input-form">
	                                    <input type="text" name="searchWord" placeholder="What are you finding?">
	                                </div>
	                                <!-- Location -->
	                                <div class="small-section-tittle2 pt-15 pb-8">
	                                    <h4>Location</h4>
	                                </div>
	                                <div class="select-job-items1">
	                                    <select name="searchAddress">
	                                        <option value="">인기 지역으로 떠나보세요!</option>
	                                    	<c:forEach items="${addressZipByBest }" var="aa">
	                                    		<option value="${aa.accomAddressZip }">${aa.accomAddressZip }</option>
	                                    	</c:forEach>
	                                    </select>
	                                </div> 
	                                <!-- Facilities -->
	                                <div class="small-section-tittle2 pt-80">
	                                    <h4>Best Facilities</h4>
	                                </div> 
	                                <div class="select-Categories pt-10 pb-30" style="width: 50%; float: left;">
	                                	<c:forEach items="${facilityByBest}" var="af" varStatus="status">
	                                		<label class="container">${af.accomBuildingFacilityName }<span style="font-size: 0.8em; color: #03B92B; padding-left: 5%;">${af.accomBuildingFacilityBest }</span>
		                                        <input type="checkbox" name="searchFacilityList" value="${af.accomBuildingFacilityName }" onclick="doOpenCheck(this);">
		                                        <span class="checkmark"></span>
		                                        
		                                        
		                                        <script type="text/javascript">
		                                        
		                                        function doOpenCheck(chk){
		                                            var obj = document.getElementsByName("searchFacilityList");
		                                            for(var i=0; i<obj.length; i++){
		                                                if(obj[i] != chk){
		                                                    obj[i].checked = false;
		                                                }
		                                            }
		                                        }
		                                        </script>
		                                    </label>
		                                    <c:if test="${status.count == 3 }">
			                                    </div>
			                                    <div class="select-Categories pt-10 pb-30" style="width: 50%; float: left;">
		                                    </c:if>
	                                	</c:forEach>
	                                </div>
	                            </div>
	
	                            <div class="single-listing">
	                                <!-- Price range -->
	                                <aside class="left_widgets p_filter_widgets price_rangs_aside sidebar_box_shadow">
	                                    <div class="small-section-tittle2">
	                                        <h4 style="line-height: 2.1em; margin-bottom: -3%;">Price range</h4>
	                                    </div>
	                                    <div class="widgets_inner">
	                                        <div class="range_item">
	                                            <!-- <div id="slider-range"></div> -->
	                                            <input type="text" class="js-range-slider" value="" name="searchPrice"/>
	                                            <div class="d-flex align-items-center pb-30">
	                                                <div class="price_text">
	                                                    <p>Price :</p>
	                                                </div>
	                                                <div class="price_value d-flex justify-content-center">
	                                                    <input type="text" class="js-input-from" id="amount" readonly />
	                                                    <span>to</span>
	                                                    <input type="text" class="js-input-to" id="amount" readonly />
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </aside>
<!-- 	                                 <a href="#" class="btn list-btn mt-20">Reset</a> -->
									<button type="submit" class="btn list-btn mt-20">Search</button>
	                            </div>
	                        </div>
                        </form>
                    </div>
                    
                    <!-- Right content -->
                    <div class="col-xl-8 col-lg-8 col-md-6">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="count mb-35">
                                    <span>${totalCount} Listings are available</span>
                                </div>
                            </div>
                        </div>
                        <!-- listing Details Stat-->
                        <div class="listing-details-area">
                            <div class="container">
                                <div class="row">
                                	<c:forEach items="${accomBuilding}" var="ab">
	                                    <div class="col-lg-6 " class="accomBox">
	                                        <div class="single-listing mb-30">
	                                            <div class="list-img">
	                                            	<a href="${pageContext.request.contextPath}/accomBuildingOne?accomBuildingNo=${ab.accomBuildingNo }">
	                                            		<c:forEach items="${ab.accomBuildingImageList }" var="abi" varStatus="status">
	                                            			<img src="${pageContext.request.contextPath}/resources/image/accom_building/${abi.getAccomBuildingImageName() }" alt="">
	                                            		</c:forEach>
	                                               	</a>
	                                                <!-- <span>Open</span> -->
	                                            </div>
	                                            <div class="list-caption">
	                                                <span>
	                                                	<a href="${pageContext.request.contextPath}/accomBuildingOne?accomBuildingNo=${ab.accomBuildingNo }">
	                                                		Open
	                                                	</a>
	                                                </span>
	                                                <h3>
	                                                	<a href="${pageContext.request.contextPath}/accomBuildingOne?accomBuildingNo=${ab.accomBuildingNo }">
	                                                		${ab.getAccomBuildingName()}
	                                                	</a>
	                                                </h3>
                                                	<ul class="blog-info-link mb-0 pb-1">
							                           <li><a style="color: #555555;"><i class="fa fa-user"></i> 객실 수 ${ab.roomCnt}</a></li>
							                        </ul>
													<ul>
														<c:forEach items="${ab.accomBuildingFacilityList }" var="abf" varStatus="status">
												            <li style="color: #555555;">${abf.getAccomBuildingFacilityName()}</li>
														</c:forEach>
													</ul>
	                                                <div class="list-footer">
	                                                    <ul class="pb-15">
	                                                    	<li>
																<c:forEach items="${ab.hashtagList }" var="abh" varStatus="status">
														            ${abh.getHashtag()}
																</c:forEach>
															</li>	                                                    
	                                                    </ul>
	                                                    <ul>
	                                                    	<li style="width: 60%; text-align: left;">
		                                                        <c:choose>
															        <c:when test="${fn:length(ab.getAccomBuildingDescription()) gt 35}">
															        	<c:out value="${fn:substring(ab.getAccomBuildingDescription(), 0, 34)}···"></c:out>
															        </c:when>
															        <c:otherwise>
																        <c:out value="${ab.getAccomBuildingDescription() }">
																        </c:out>
															        </c:otherwise>
																</c:choose>
															</li>
	                                                        <li style="width: 40%; text-align: right;">${ab.getAccomBuildingPhone() }</li>
	                                                    </ul>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
                                	</c:forEach>
                                </div>
                            </div>
                        </div>
                        <!-- listing Details End -->
                        <!--Pagination Start  -->
                        <div class="pagination-area pt-70 text-center">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="single-wrap d-flex justify-content-center">
                                            <nav aria-label="Page navigation example">
                                            	<c:choose>
			                                    	<c:when test="${param.searchWord != null || param.searchAddress != null || param.searchPrice != null}">
			                                    		<c:if test="${totalCount > 0}">
															<div class="clear">
									                           <ul class="nav justify-content-center">
									                              <c:if test="${beginRow > (ROW_PER_PAGE * 10)}">
									                                 <li><a href="${pageContext.request.contextPath}/getAccomProductList?page=${pageNo-1}&searchWord=${param.searchWord}&searchFacilityList=${param.searchFacilityList}&searchAddress=${param.searchAddress}&searchPrice=${param.searchPrice}">&lt;</a></li>
									                              </c:if>
									                              <c:set var="doneLoop" value="false"></c:set>
									                              <c:forEach var="f" begin="${pageNo}" end="${pageNo + 9}">
									                                 <c:if test="${not doneLoop}">
									                                    <c:choose>
									                                       <c:when test="${page == f}">
									                                          <li class="active"><span class="nav-link">${f}</span></li>
									                                       </c:when>
									                                       <c:otherwise>
									                                          <li><a style="color: blue;" class="nav-link active" href="${pageContext.request.contextPath}/getAccomProductList?page=${page+1}&searchWord=${param.searchWord}&searchFacilityList=${param.searchFacilityList}&searchAddress=${param.searchAddress}&searchPrice=${param.searchPrice}">${f}</a></li>
									                                       </c:otherwise>
									                                    </c:choose>
									
									                                    <c:if test="${f == lastPage}">
									                                       <c:set var="doneLoop" value="true"></c:set>
									                                    </c:if>
									                                 </c:if>
									                              </c:forEach>
									                              <c:if test="${page + 10 <= lastPage}">
									                                 <li><a class="nav-link active" href="${pageContext.request.contextPath}/getAccomProductList?page=${page+10}&searchWord=${param.searchWord}&searchFacilityList=${param.searchFacilityList}&searchAddress=${param.searchAddress}&searchPrice=${param.searchPrice}">&gt;</a></li>
									                              </c:if>
									                           </ul>
									                        </div>
														</c:if>
			                                    	</c:when>
			                                    	<c:otherwise>
			                                    		<c:if test="${totalCount > 0}">
															<div class="clear">
									                           <ul class="nav justify-content-center">
									                              <c:if test="${beginRow > (ROW_PER_PAGE * 10)}">
									                                 <li><a href="${pageContext.request.contextPath}/getAccomProductList?page=${pageNo-1}">&lt;</a></li>
									                              </c:if>
									                              <c:set var="doneLoop" value="false"></c:set>
									                              <c:forEach var="f" begin="${pageNo}" end="${pageNo + 9}">
									                                 <c:if test="${not doneLoop}">
									                                    <c:choose>
									                                       <c:when test="${page == f}">
									                                          <li class="active"><span class="nav-link">${f}</span></li>
									                                       </c:when>
									                                       <c:otherwise>
									                                          <li><a style="color: blue;" class="nav-link active" href="${pageContext.request.contextPath}/getAccomProductList?page=${f}">${f}</a></li>
									                                       </c:otherwise>
									                                    </c:choose>
									
									                                    <c:if test="${f == lastPage}">
									                                       <c:set var="doneLoop" value="true"></c:set>
									                                    </c:if>
									                                 </c:if>
									                              </c:forEach>
									                              <c:if test="${page + 10 <= lastPage}">
									                                 <li><a class="nav-link active" href="${pageContext.request.contextPath}/getAccomProductList?page=${page+10}">&gt;</a></li>
									                              </c:if>
									                           </ul>
									                        </div>
														</c:if>
			                                    	</c:otherwise>
			                                    </c:choose>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Pagination End  -->
                    </div>
                </div>
            </div>
        </div>
        <!-- listing-area Area End -->
        
    </main>

    <!--footer.jsp 시작  -->
    <c:import url="/WEB-INF/jsp/partial/footer.jsp"/>
    <!--footer.jsp 끝  -->
    
    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>


    <!-- JS here -->
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
    
		<!-- All JS Custom Plugins Link Here here -->
        <script src="${pageContext.request.contextPath}/assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="${pageContext.request.contextPath}/assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="${pageContext.request.contextPath}/assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/slick.min.js"></script>
		<!-- One Page, Animated-HeadLin -->
        <script src="${pageContext.request.contextPath}/assets/js/wow.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/price-range.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/animated.headline.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.magnific-popup.js"></script>

		<!-- Nice-select, sticky -->
        <script src="${pageContext.request.contextPath}/assets/js/jquery.nice-select.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="${pageContext.request.contextPath}/assets/js/contact.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.form.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.validate.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/mail-script.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="${pageContext.request.contextPath}/assets/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
        
      
    </body>
</html>
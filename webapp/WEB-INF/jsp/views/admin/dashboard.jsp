<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
<meta name="author" content="Coderthemes">

<!-- <link rel="shortcut icon" href="images/favicon_1.ico"> -->

<title>KOSIGN WeCafe...</title>

<!-- Base Css Files -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Font Icons -->
<link
	href="${pageContext.request.contextPath}/resources/assets/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/assets/ionicon/css/ionicons.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/material-design-iconic-font.min.css"
	rel="stylesheet">

<!-- animate css -->
<link
	href="${pageContext.request.contextPath}/resources/css/animate.css"
	rel="stylesheet" />

<!-- Waves-effect -->
<link
	href="${pageContext.request.contextPath}/resources/css/waves-effect.css"
	rel="stylesheet">

<!-- sweet alerts -->
<link
	href="${pageContext.request.contextPath}/resources/assets/sweet-alert/sweet-alert.min.css"
	rel="stylesheet">
	
<!-- bootstrap switch  -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-switch.min.css"rel="stylesheet">

<!-- Custom Files -->
<link href="${pageContext.request.contextPath}/resources/css/helper.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css" />



<script src="${pageContext.request.contextPath}/resources/js/modernizr.min.js"></script>
<script	src="${pageContext.request.contextPath}/resources/js/numeral.min.js"></script>
<style>
	.out_stock{
			color: :red;
	};
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}

.panel-body:hover {
	cursor: pointer;
}

.panel-body img {
	width: 80px;
	height: 100px;
}

#addtocart {
	width: 80%;
}

.modal-content {
	border-radius: 0;
}

.hidebtn {
	display: none;
}
.borderRed {
	border-color: red;
}
</style>

</head>



<body class="fixed-left-void">

	Dear
	<strong><%-- ${user} --%></strong>, Welcome to Admin Page.

	<sec:authorize access="isFullyAuthenticated()">
		<label><a href="#">Create New User</a> | <a href="#">View
				existing Users</a></label>
	</sec:authorize>
	<sec:authorize access="isRememberMe()">
		<label><a href="#">View existing Users</a></label>
	</sec:authorize>

	<!-- Begin page -->
	<div id="wrapper">


		<%@ include file="topbar.jsp"%>

		<!-- ========== Left Sidebar Start ========== -->
		<%@ include file="left_sidebar.jsp"%>
		<!-- Left Sidebar End -->
		
		

		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">
					
					<!-- Page-Title -->
					<div class="row">
						<div class="col-sm-12">
							<h4 class="pull-left page-title">Welcome !</h4>
							<ol class="breadcrumb pull-right">
								<!-- <li><a href="#">KOSIGN WECAFE</a></li> -->
								<li class="active">Dashboard</li>
							</ol>
						</div>
					</div>

					<!-- Start Widget -->
					<div class="row">
						<div class="col-md-6 col-sm-6 col-lg-3">
							<div class="mini-stat clearfix bx-shadow">
								<span class="mini-stat-icon bg-info"><i
									class="ion-social-usd"></i></span>
								<div class="mini-stat-info text-right text-muted">
									<span class="counter" id="total_sales"></span> Total Sales
								</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-lg-3" >
							<div class="mini-stat clearfix bx-shadow">
								<span class="mini-stat-icon bg-purple"><i
									class="ion-ios7-cart"></i></span>
								<div class="mini-stat-info text-right text-muted">
									<span class="counter" id="total_request"></span> Total Stock
								</div>
							</div>
						</div>

						<div class="col-md-6 col-sm-6 col-lg-3" style="cursor: pointer;" id="request_money">
							<div class="mini-stat clearfix bx-shadow">
								<span class="mini-stat-icon bg-primary"><i
									class="ion-arrow-graph-up-right"></i></span>
								<div class="mini-stat-info text-right text-muted">
									<span class="counter" id="total_users"></span> Total Income
								</div>
							</div>
						</div>
						
						<div class="col-md-6 col-sm-6 col-lg-3" style="cursor: pointer;" id="request_stock">
							<div class="mini-stat clearfix bx-shadow">
								<span class="mini-stat-icon bg-primary"><i
									class="ion-ios7-settings"></i></span>
								<div class="mini-stat-info text-right text-muted">
									<span class="counter" id="exchangeRate">0</span> Exchange Rate
								</div>
							</div>
						</div>
					</div>
					<!-- End row-->
					
				</div>

			</div>
			<!-- content -->
			
	

			<%@ include file="footer.jsp"%>

		</div>
		<!-- ============================================================== -->
		<!-- End Right content here -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	
	
	<%@ include file="requeststocklist.jsp"%> 
	<%@ include file="requestcostmoney.jsp"%> 

	<script>
		var resizefunc = [];
	</script>

	<!-- jQuery  -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	
	<!-- Bootstrap switch -->
		<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-switch.min.js"></script>	
	
	<script src="${pageContext.request.contextPath}/resources/js/waves.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.scrollTo.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/chat/moment-2.2.1.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-detectmobile/detect.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-slimscroll/jquery.slimscroll.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-blockui/jquery.blockUI.js"></script>

	<!-- sweet alerts -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/sweet-alert/sweet-alert.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/sweet-alert/sweet-alert.init.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/assets/counterup/jquery.counterup.min.js"
		type="text/javascript"></script>

	<!-- CUSTOM JS -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.app.js"></script>

	<!-- Dashboard -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.dashboard.js"></script>

	<!-- Chat -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.chat.js"></script>

	<!-- Todo -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.todo.js"></script>
		
	<!-- bpopup -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.bpopup.min.js"></script>
<%-- 	<!-- Pageination -->
		<script
		src="${pageContext.request.contextPath}/resources/js/jquery.bootpag.min.js"></script> --%>
	
<!-- Pageination -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery.simplePagination.js"></script>
		
<script type="text/javascript">
	 
		var request_id="";
		var check = true;
		var products = {};
		var st=0;
		var data=[];
		var currentPage=1;
		var cost_monty = 0;
		var urmoney = 0;
		var totalStock = 0;
		
		$(function(){
			getExchangeRate();
			function loadDataInDashboard(){
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/admin/dashboardsize/" , 
				    type: 'GET',
				    dataType: 'JSON',
				    beforeSend: function(xhr) {
			               xhr.setRequestHeader("Accept", "application/json");
			               xhr.setRequestHeader("Content-Type", "application/json");
			           },
					    success: function(data) {
					    	totalStock = 0;
					    	var totalSale = 0;
					    	var totalIncome = 0;
					    	var totalpurchase = 0;
					    	for(i=0; i<data.TOTAL_SALES.length; i++){
					    		totalSale += (data.TOTAL_SALES[i].TOTAL);
					    	}
					    	$("#total_sales").html(totalSale.toFixed(2) + " $");
					    	for(i=0; i<data.AllProduct.length; i++){
					    		totalStock += ((data.AllProduct[i].unitPrice/data.AllProduct[i].unit.qty)*data.AllProduct[i].quantity);
					    	}
					    	$("#total_request").html(totalStock.toFixed(2) + " $");
					    	
					    	/* for(i=0; i<data.Total_Purchase.length; i++){
					    		totalpurchase += data.Total_Purchase[i].purchase_total_amount;
					    	} */
					    	
					    	totalIncome = totalStock + urmoney - cost_monty;
					    	$("#total_users").html(totalIncome.toFixed(2) + " $");
					    },
					    error:function(data,status,er) { 
					        console.log("error: ",data," status: ",status," er:",er);
					    }
				})
			}
			loadDataInDashboard();
			
	
			 $("#request_stock").click(function() {
					
				getExchangeRate();
				$('#request_stock_list').modal({
					"backdrop":"static"
				}) ;
				
			}); 
			 
			 $("#request_money").click(function() {
					
					getExchangeRate();
					$('#request_cost_money').modal({
						"backdrop":"static"
					}) ;
					
				}); 
			 
			 
			function getExchangeRate(){
				$.ajax({
					 url: "${pageContext.request.contextPath}/seller/getchangerate", 
					 type: 'GET',
					 datatype: 'JSON',
					beforeSend: function(xhr) {
			            xhr.setRequestHeader("Accept", "application/json");
			            xhr.setRequestHeader("Content-Type", "application/json");
			        },
					success: function(res){
						 console.log(res);
						 $("#txtexchange").val(res.data.exchangerate);
						 $("#exchangeRate").html(res.data.exchangerate);
						 cost_monty = res.data.costmoney;
						 urmoney = res.data.urmoney;
						 $("#txtcostmoney").val(cost_monty);
						 $("#txturmoney").val(urmoney);
					},
					error:function(data, status,er){
						console.log("error: " + data + "status: " + status + "er: ");
					}
				});
				
			}
			
			 $("#btnsave").click(function(){
				 var json = {
						 	"rate" : $("#txtexchange").val()
					};
				 
				 $.ajax({
					 url: "${pageContext.request.contextPath}/admin/exchangeupdate", 
					 type: 'GET',
					 data: json,
					 dataType: 'JSON',
					beforeSend: function(xhr) {
			            xhr.setRequestHeader("Accept", "application/json");
			            xhr.setRequestHeader("Content-Type", "application/json");
			        },
					success: function(data){
						 console.log(data);
						 $("#exchangeRate").html($("#txtexchange").val());
						 $('#request_stock_list').modal("hide") ;
					},
					error:function(data, status,er){
						console.log("error: " + data + "status: " + status + "er: ");
					}
				});
				 
			 });
			 $("#btnsavecostmoney").click(function(){
				 var json = {
						 	"money" : $("#txtcostmoney").val(),
						 	"urmoney" : $("#txturmoney").val()
					};
				 $.ajax({
					 url: "${pageContext.request.contextPath}/admin/costmoneyupdate", 
					 type: 'GET',
					 data: json,
					 dataType: 'JSON',
					beforeSend: function(xhr) {
			            xhr.setRequestHeader("Accept", "application/json");
			            xhr.setRequestHeader("Content-Type", "application/json");
			        },
					success: function(data){
						 console.log(data);
						var income = 0;
						income = (parseFloat(totalStock) + parseFloat($("#txturmoney").val()) - $("#txtcostmoney").val());
						$("#total_users").html(income.toFixed(2));
						$('#request_cost_money').modal("hide") ;
					},
					error:function(data, status,er){
						console.log("error: " + data + "status: " + status + "er: ");
					}
				});
			 });
		});
	 	
	
		
		
		
		
			
		
	</script>

</body>
</html>
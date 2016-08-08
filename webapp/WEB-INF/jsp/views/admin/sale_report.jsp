<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
<meta name="author" content="Coderthemes">

<link rel="shortcut icon" href="images/favicon_1.ico">

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

<!-- Custom Files -->
<link href="${pageContext.request.contextPath}/resources/css/helper.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath}/resources/css/customize.css" rel="stylesheet" type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

<script src="${pageContext.request.contextPath}/resources/js/modernizr.min.js"></script>
<style>
a { 
	cursor: pointer;
}
.hidetable {
	display: none;
}
#addtocart {
	width: 80%;
}
 @media print {
  @page { margin: 0; }
  body { margin: 1cm; }
}
#tblprint{
	border-collapse: collapse;
}
#tblprint td{
	border: 1px solid black;
}
#tblholdprint, #tblprinthead td{
	border: 0 solid black;
}
</style>
</head>



<body class="fixed-left-void">

	<!-- Begin page -->
	<div id="wrapper" class="hidden-print">

		<!-- Top Bar Start -->
		<%@ include file="topbar.jsp"%>
		<!-- Top Bar End -->


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
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-default">
								<!-- <div class="panel-heading">
                                    <h4>Invoice</h4>
                                </div> -->
								<div class="panel-body">
									<div class="clearfix">
										<div class="pull-left">
											<h2 class="text-right">
												<%-- <img src="${pageContext.request.contextPath}/resources/images/logo_dark.png" alt="velonic"> --%>

												<strong>Sale Information</strong> 
												<small id="startfrom"></small>
												<!-- <small>start from</small> <small id="purchasemonth"></small> -->
											</h2>
										</div>
									</div>

									<hr>
									<div class="m-h-50 form-group hidden-print ">
										<div class="col-sm-9 ">
										<spen id="datelable" class="hidetable">
											<label class="col-sm-1 control-label">Date : </label> <input
												type="hidden" id="SEND_DT" data-id="SEND_DT" />
											<div id="sendFrdt" class="date-range col-sm-5">
												<input type="text" readonly="readonly" id="REGS_DATE_S"
													name="startdate" class="range-start"
													style="width: 100px; text-align: center;">&nbsp; <a
													href="#none" id="btnREGS_DATE_S"><img
													style="width: 20px; height: 20px;"
													src="${pageContext.request.contextPath}/resources/images/img/ico_calendar.png">
													</a><span id="EDate">&nbsp;~&nbsp;
												<input type="text" readonly="readonly" id="REGS_DATE_E"	name="stopdate" class="range-end" style="width: 100px; text-align: center;">&nbsp; 
												<a href="#none" id="btnREGS_DATE_E"><img style="width: 20px; height: 20px;" src="${pageContext.request.contextPath}/resources/images/img/ico_calendar.png"></a>
													</span>
											</div>
										</spen>
										<span id="monthcombo" class="hidetable">
											<select id="selectmonth">
												<option value="0">January</option>
												<option value="1">February</option>
												<option value="2">March</option>
												<option value="3">April</option>
												<option value="4">May</option>
												<option value="5">June</option>
												<option value="6">July</option>
												<option value="7">August</option>
												<option value="8">September</option>
												<option value="9">October</option>
												<option value="10">November</option>
												<option value="11">December</option>
											</select>
										</span>
										<span id="yearcombo">
											<select id="selectyear">
												<option value="2014">2014</option>
												<option value="2015">2015</option>
												<option value="2016">2016</option>												
											</select>
										</span>
										</div>
										<div class="col-sm-3 form-group">
											<select class="form-control" id="selectreport">
												<option value="0">Detail</option>
												<option value="1">Daily</option>
												<option value="2">Weekly</option>
												<option value="3">Monthly</option>
												<option value="4">Yearly</option>
											</select>
										</div>

									</div>

									<div class="row">
										<div class="col-md-12 col-sm-12 col-xs-12 overflow-x">
											<div class="hidetable" id="tbldaily">
												<table id="dailytable">
													<thead>
														<tr>	
															<th>#</th>														 
															<th>Item</th>
															<th>Qty</th>
															<th>Unit Price</th> 														
															<th>Total</th> 
														</tr> 
													</thead>
													<tbody id="tbodydaily">
													</tbody>
												</table>
											</div>
											<div id="tbldetail" class="overflow-x">
												<table id="detailtable">
													<thead>
														<tr> 
															<th>#</th> 
															<th>Invoice No</th> 
															<th>Date</th>
															<th>Sell By</th>  
															<th>Total Amount</th>
														</tr>
													</thead>
													<tbody id="tbodydetail"> 
													</tbody>
												</table>
											</div>
											<div>
												<div class="hidetable overflow-x" id="tblweekly">
													<table id="weeklytable">
														<thead>
															<tr> 
																<th rowspan="2">#</th>
																<th rowspan="2">Item</th>
																<th colspan="2" id="week1"></th>
																<th colspan="2" id="week2"></th>
																<th colspan="2" id="week3"></th>
																<th colspan="2" id="week4"></th>
																<th colspan="2" id="week5"></th>
																<th colspan="2" id="week6"></th>
																<th colspan="2" id="week7"></th>
																<th colspan="2">Total</th>
															</tr>
															<tr>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
															</tr>
														</thead>
														<tbody id="tbodyweekly"> 
														</tbody>
													</table>
												</div>
												<div id="tblmonthly" class="hidetable overflow-x">
													<table id="monthlytable">
														<thead id="tbl_header_month"> 
														</thead>
														<tbody id="tbodymonthly"> 
														</tbody>
													</table>
												</div>
												<div class="hidetable overflow-x" id="tblyearly">
													<table id="yearlytable">
														<thead>
															<tr> 
																<th rowspan="2">#</th>
																<th rowspan="2">Item</th>
																<th colspan="2" id="mon1">Jan</th>
																<th colspan="2" id="mon2">Feb</th>
																<th colspan="2" id="mon3">Mar</th>
																<th colspan="2" id="mon4">Air</th>
																<th colspan="2" id="mon5">May</th>
																<th colspan="2" id="mon6">Jun</th>
																<th colspan="2" id="mon7">Jul</th>
																<th colspan="2" id="mon7">Aug</th>
																<th colspan="2" id="mon7">Sep</th>
																<th colspan="2" id="mon7">Oct</th>
																<th colspan="2" id="mon7">Nov</th>
																<th colspan="2" id="mon7">Dec</th>
																<th colspan="2">Total</th>
															</tr>
															<tr>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th>
																<th>Qty</th>
																<th>Amt</th> 
																<th>Qty</th>
																<th>Amt</th>
															</tr>
														</thead>
														<tbody id="tbodyyearly"> 
														</tbody>
													</table>
												</div>
												
											</div>
										</div>
										
										<div class="row">
											<div class="col-md-2">
												<select id="PER_PAGE" class="form-control">
													<option value="15">15</option>
													<option value="30">30</option>
													<option value="50">50</option>
													<option value="100">100</option>
												</select>
											</div>
											<div class="col-md-10 form-horizontal" align="right">
												<label  class="control-label col-md-9">Total Amount : </label>
													<div class="col-md-3">
															<input class="form-control" readonly="readonly" id="allTotalAmount" type="text">
													</div>												
											</div>
											<div id="PAGINATION" class="pull-right"></div>
										</div>
										<div class="row hidetable" id="printAble" style="border-radius: 0px;">
											<div class="hidden-print">
											<div class="pull-right">
												<a href="javascrpt:"
													class="btn btn-inverse waves-effect waves-light" id ="print_report"><i class="fa fa-print"></i></a> 
												<a href="#" class="btn btn-primary waves-effect waves-light">Submit</a>
											</div>
										</div>
										</div>
										<br>
										
									</div>
								</div>

							</div>

						</div>

					</div>

					</div>
					<!-- container -->

				</div>
				<!-- content -->

				<%@ include file="footer.jsp"%>
				<%@ include file="print_report_sale_list.jsp"%>
			</div>
			<!-- ============================================================== -->
			<!-- End Right content here -->
			<!-- ============================================================== -->
		</div>
		<!-- END wrapper -->
		<!-- print_invoice -->
		<%@ include file="print_invoice.jsp" %>
		<%@ include file="../seller/print_invoice.jsp" %>
		<!-- ############################################################# --> 
		<div id="impDetail" style="display: none; width: 80%;">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" aria-hidden="true">
						<span class="button b-close"><span>×</span></span>
					</button>
					<h4 class="modal-title">Sale Detail</h4>

				</div>
				<div class="modal-body overflow-x" style="width: 100%;">
					<table>
						<thead>
							<tr>
								<th>#</th>
								<th>Produce Name</th>
								<th>Qty</th>
								<th>Unit Price</th> 
								<th>Total Amount</th>
							</tr>
						</thead>
						<tbody id="impProDetail"> 
						</tbody> 
					</table>
				</div> 
				<div class="modal-footer form-group form-horizontal" style="height: 80px;"> 
					<div align="right">
						<label  class="control-label col-lg-2">Total Amount : </label>
							<div class="col-lg-2">
									<input class="form-control" id="btotalamount"type="text">
							</div>
						<a href="javascrpt:" class="btn btn-inverse waves-effect waves-light b-close" id="print_invoice">
						<i class="fa fa-print"></i></a>
						<button class="btn btn-default b-close">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- ################################################################## -->

		<script id="CONTENT_TEMPLATE" type="text/x-jquery-tmpl">
	 

        </script>
		<script>
        var resizefunc = [];
        var ctx = "${pageContext.request.contextPath}";
    </script>

		<!-- jQuery  -->
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
		<script	src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
		<script	src="${pageContext.request.contextPath}/resources/js/jquery.ui.datepicker-ko.js"></script>
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">

		<script
			src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/waves.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.js"
			type="text/javascript"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.scrollTo.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/jquery-detectmobile/detect.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/fastclick/fastclick.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/jquery-slimscroll/jquery.slimscroll.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/assets/jquery-blockui/jquery.blockUI.js"></script>

		<script	src="${pageContext.request.contextPath}/resources/js/jquery.tmpl.min.js"></script>
		<script	src="${pageContext.request.contextPath}/resources/js/jquery.bootpag.min.js"></script>
		<!-- CUSTOM JS -->
		<script	src="${pageContext.request.contextPath}/resources/js/numeral.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/jquery.app.js"></script>
		<script	src="${pageContext.request.contextPath}/resources/js/jquery.bpopup.min.js"></script>
		
		<script src="${pageContext.request.contextPath}/resources/js/print.js"></script>
		
<!-- ============================  tbodydetail  ================================== -->		
	<script id="CONTENT_DETAIL" type="text/x-jquery-tmpl">
    	<tr>  
			<td>{{= order}}</td>
			<td ><a herf="javascript:;" id="saleid" class="ng-binding">{{= sale_id}}</a></td> 
			<td>{{= sale_date}} </td>
			<td >{{= username}} ​</td> 
			<td class="content-right">{{= total_amount}} </td>
		</tr>
    </script>
 
 <!-- ============================  tbodydaily  ================================== -->		
	<script id="CONTENT_DAILY" type="text/x-jquery-tmpl">
    	<tr>
			<td>{{= order}}</td>
			<td class="content-left"><span class="ellipsis">{{= pro_name}}</span></td>
			<td>{{= product_qty}}</td>
			<td>{{= pro_unit_price}}</td> 
			<td class="content-right">{{= total_amount}}​</td>
		</tr>
    </script>
 
 <!-- ============================  tbodyweekly  ================================== -->		
	<script id="CONTENT_WEEKLY" type="text/x-jquery-tmpl">
    	<tr>
			<td>{{= order}}</td>
			<td class="content-left"><span class="ellipsis">{{= pro_name}}</span></td>
			<td>{{= day1_qty}}</td>
			<td>{{= day1_amount}}</td>
			<td>{{= day2_qty}}</td>
			<td>{{= day2_amount}}</td>
			<td>{{= day3_qty}}</td>
			<td>{{= day3_amount}}</td>
			<td>{{= day4_qty}}</td>
			<td>{{= day4_amount}}</td>
			<td>{{= day5_qty}}</td>
			<td>{{= day5_amount}}</td>
			<td>{{= day6_qty}}</td>
			<td>{{= day6_amount}}</td>
			<td>{{= day7_qty}}</td>
			<td>{{= day7_amount}}</td>
			<td class="content-right">{{= total_qty}}</td>
			<td class="content-right">{{= total_amount}}</td>
		</tr>
    </script>
 <!-- ============================  tbodymonthly  ================================== -->		


 <!-- ============================  tbodyyearly  ================================== -->		
	<script id="CONTENT_YEARLY" type="text/x-jquery-tmpl">    
			<tr> 
			<td>{{= order}}</td>
			<td class="content-left"><span class="ellipsis">{{= pro_name}}<span></td>
			<td>{{= jan_qty}}</td>
			<td>{{= jan_amount}}</td>
			<td>{{= feb_qty}}</td>
			<td>{{= feb_amount}}</td>
			<td>{{= mar_qty}}</td>
			<td>{{= mar_amount}}</td>
			<td>{{= apr_qty}}</td>
			<td>{{= apr_amount}}</td>
			<td>{{= may_qty}}</td>
			<td>{{= may_amount}}</td>
			<td>{{= jun_qty}}</td>
			<td>{{= jun_amount}}</td>
			<td>{{= jul_qty}}</td>
			<td>{{= jul_amount}}</td>
			<td>{{= aug_qty}}</td>
			<td>{{= aug_amount}}</td>
			<td>{{= sep_qty}}</td>
			<td>{{= sep_amount}}</td>
			<td>{{= oct_qty}}</td>
			<td>{{= oct_amount}}</td>
			<td>{{= nov_qty}}</td>
			<td>{{= nov_amount}}</td>
			<td>{{= dec_qty}}</td>
			<td>{{= dec_amount}}</td>
			<td class="content-right">{{= total_qty}}</td>
			<td class="content-right">{{= total_amount}}</td>
		</tr>
    </script>
   <!-- ============================================================== -->   
 <script>
 var st = "";
 $(document).ready(function(){
	var sales ={};
	var check = true;
	var order = 1;
	var v=[];
	var b = true;
	
	 setCalendar();  
	
		var exchangerate = $.ajax({
			 url: "${pageContext.request.contextPath}/seller/getchangerate", 
			 type: 'GET',
			 datatype: 'JSON',
			 async: false,
			beforeSend: function(xhr) {
	            xhr.setRequestHeader("Accept", "application/json");
	            xhr.setRequestHeader("Content-Type", "application/json");
	        },
			success: function(res){
				 return (res);
			},
			error:function(data, status,er){
				console.log("error: " + data + "status: " + status + "er: ");
			}
		});
		
		exchangerate = JSON.parse(exchangerate.responseText).data.exchangerate;
	 /* $('#monthly_list').on('hidden.bs.modal', function (event) {
 		$("#select_yearly option[value='1']").attr("selected","selected");
 		$("#select_yearly option[value='1']").attr("selected","selected");
	  }) */
     
     // print pursurse monthly 
     $("#btn_print_monthly").click(function(){
  	   var divContents = $("#print_data_monthly").html(); 
         loadPrintPage(divContents,getLangScape());
         return false;
     });
     
     // print pursurse yearly 
     $("#btn_print_yearly").click(function(){
    	$("#row_break").show();
  	   var divContents = $("#print_data_yearly").html(); 
         loadPrintPage(divContents,getPortrait());
         return false;
     });
	 
	 
	 $('select#selectyear option[value="'+new Date().getFullYear()+'"]').attr("selected",true);
	 $("#selectyear").change(function(){
		 check = true;
		 switch($("#selectreport").val()){ 
			 case '0':  
				 checkFilter(1); 
				 break;
				 
			 case '3':
				 checkFilter(1); 
				 break;
				 
			 case '4':
				 checkFilter(1); 
				 break;
		 }
	 });
	 function checkFilter(currentPage){
		 
		 switch($("#selectreport").val()){
		 case '0': 
			 sales.listDetail(currentPage); 
			 
			 break;
		 case '1':
			 sales.listDaily(currentPage);
			 break;
		 case '2':
			 sales.listWeekly(currentPage);
			 break;
		 case '3':
			 sales.listMonthly(currentPage); 
			 break;
			 
		 case '4':
			 sales.listYearly(currentPage); 
			 break;
	 }
}
	 $("#PER_PAGE").change(function(){
		 check = true;
		 checkFilter(1);
	 });
	 sales.setPagination = function(totalPage, currentPage){
	    	$('#PAGINATION').bootpag({
		        total: totalPage,
		        page: currentPage,
		        maxVisible: 10,
		        leaps: true,
		        firstLastUse: true,
		        first: 'First',
		        last: 'Last',
		        wrapClass: 'pagination',
		        activeClass: 'active',
		        disabledClass: 'disabled',
		        nextClass: 'next',
		        prevClass: 'prev',
		        lastClass: 'last',
		        firstClass: 'first'
		    }).on("page", function(event, currentPage){
		    	check = false;
		    	checkFilter(currentPage);
		    }); 
		};
	 $("#selectmonth").change(function(){ 
		 setheadermonthly();
		 check = true;
		 sales.listMonthly();
	 });
	 sales.listDetail = function(currentPage){ 
		var byyear = $("#selectyear").val(); 
		$("#allTotalAmount").val('');
		 $.ajax({ 
			    url: "${pageContext.request.contextPath}/api/admin/reports/saledetail/" , 
			    type: 'GET', 
			    data: {
			    		"currentPage" : currentPage,
			    		"perPage"     : $("#PER_PAGE").val(), 
			    		"byYear" 	  : byyear 
			    },
				    beforeSend: function(xhr) {
	               xhr.setRequestHeader("Accept", "application/json");
	               xhr.setRequestHeader("Content-Type", "application/json");
	           },
			    success: function(data) {
			    	
			    	b =true;
					v=data;
					  if(data.reportdetail.length>0){
						 
					$("tbody#tbodydetail").html(''); 
						 for(var i=0;i<data.reportdetail.length;i++){							
							sales.formatDetail(data.reportdetail[i]);
						} 
						$("#CONTENT_DETAIL").tmpl(data.reportdetail).appendTo("tbody#tbodydetail");
					}else{
						$("tbody#tbodydetail").html(''); 
					} 
			    	if(check){
			    		sales.setPagination(data.pagination.totalPages,1);
			    		check=false;
			    	}   
			    },
			    error:function(data,status,er) { 
			        console.log("error: ",data," status: ",status," er:",er);
			    }
			}); 
	 }
	 sales.listDetail(1); 
	  sales.listDaily = function(currentPage){ 
		 $.ajax({ 
			    url: "${pageContext.request.contextPath}/api/admin/reports/salereportdaily/" , 
			    type: 'GET', 
			    data: {
			    		"currentPage" : currentPage,
			    		"perPage"     : $("#PER_PAGE").val(),
			    		"startDate"   : $("#REGS_DATE_S").val()			    		 
			    },
				    beforeSend: function(xhr) {
	               xhr.setRequestHeader("Accept", "application/json");
	               xhr.setRequestHeader("Content-Type", "application/json");
	           },
			    success: function(data) { 
			    	console.log(data);
			    	b =true;
					v=data;
			    	//var alltotal = 0;
				 	 if(data.reportdaily.length>0){
						$("tbody#tbodydaily").html('');
						   for(var i=0;i<data.reportdaily.length;i++){	
						//	alltotal += data.reportdaily[i].total_amount; 
							sales.formatDaily(data.reportdaily[i]); 
						}   
						$("#CONTENT_DAILY").tmpl(data.reportdaily).appendTo("tbody#tbodydaily"); 
						$("#allTotalAmount").val((data.getTotalAmount).toFixed(2));
					}else{
						$("tbody#tbodydaily").html("");
						$("#allTotalAmount").val('');
					}
			    	if(check){
			    		sales.setPagination(data.pagination.totalPages,1);
			    		check=false;
			    	} 
			    	 
			    },
			    error:function(data,status,er) { 
			        console.log("error: ",data," status: ",status," er:",er);
			    }
			}); 
	 }
	  sales.listWeekly = function(currentPage){ 
		 var json = {
				 	"currentPage" : currentPage,
		    		"perPage"     : $("#PER_PAGE").val(),
	   				"start_date" : $("#REGS_DATE_S").val(),
	   				"end_date"   : $("#REGS_DATE_E").val()
			};$.ajax({ 
			    url: "${pageContext.request.contextPath}/api/admin/reports/salereportweekly/", 
			    type: 'GET',  
			    data: json, 
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {
			    	
			    	b =true;
					v=data; 
			    	if(data.reportweekly.length>0){
						$("tbody#tbodyweekly").html('');
						   for(var i=0;i<data.reportweekly.length;i++){
							   sales.formatWeekly(data.reportweekly[i]);
						}   
						$("#CONTENT_WEEKLY").tmpl(data.reportweekly).appendTo("tbody#tbodyweekly");  
						$("#allTotalAmount").val((data.getTotalAmount).toFixed(2));
					}else{
						$("tbody#tbodyweekly").html("");
						$("#allTotalAmount").val('');
					}
			    	if(check){
			    		sales.setPagination(data.pagination.totalPages,1);
			    		check=false;
			    	}
			    },	
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			}); 		 
	 }  
	   sales.listMonthly = function(currentPage){
		 var json = {
				 	"currentPage" : currentPage,
		    		"perPage"     : $("#PER_PAGE").val(),
	   				"start_date" : $("#selectyear").val() + "-" + (parseInt($("#selectmonth").val()) + 1) + "-01",
	   				"end_date"   : $("#selectyear").val() + "-" + (parseInt($("#selectmonth").val()) + 1) + "-" + (new Date($("#selectyear").val(),parseInt($("#selectmonth").val()) + 1, 0).getDate())
			};$.ajax({
			    url: "${pageContext.request.contextPath}/api/admin/reports/salereportmonthly/", 
			    type: 'GET',  
			    data: json, 
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {
			    	
			    	b =true; 
			    	    if(data.reportmonthly){
				    	$("#monthlytable tbody").html('');
				    	var st = "" ; 
				    		st += "<tr>";
					    	for(var i=0;i<data.reportmonthly.length;i++){
					    	var total_qty = 0, total_amount = 0;
						    	if(b){
						 			order = data.pagination.perPage * (data.pagination.currentPage-1); 
						 			k = order + 1;
						 			st += "<td>"+ k +"</td>";
						 			b = false; 
						 		}
						 		else  
						 			{
						 			k += 1;
						 			st += "<td>"+ k +"</td>"; 
						 			}
				    		st += "<td class='content-left'><span class='ellipsis'>" + data.reportmonthly[i].pro_name + "</span></td>"; 
				    		for(var j=0; j<(new Date($("#selectyear").val(),parseInt($("#selectmonth").val()) + 1, 0).getDate());j++) {
				    				st += "<td>" + numeral(data.reportmonthly[i]['day' + (j+1) + '_qty']).format('0,0') + "</td>";
				    				st += "<td>" + numeral(data.reportmonthly[i]['day' + (j+1) + '_amount']).format('0,0') + "</td>";
				    				total_qty += data.reportmonthly[i]['day' + (j+1) + '_qty'];
				    				total_amount += data.reportmonthly[i]['day' + (j+1) + '_amount'];
				    		}
				    		st += "<td class='content-right'>" + numeral(total_qty).format('0,0') + "</td>";
				    		st += "<td class='content-right'>" + numeral(total_amount).format('0,0') + "</td>";
				    		st += "</tr>";
				    		//total_all += total_amount;
						}
				    	$("#monthlytable tbody").html(st);
				    	$("#allTotalAmount").val((data.getTotalAmount).toFixed(2));
				    } 
			    	    if(check){
				    		sales.setPagination(data.pagination.totalPages,1);
				    		check=false;
				    	}
			    },	
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			}); 
	 } 
	   
	  sales.listYearly = function(currentPage){
		 var json = {
				 	"currentPage" : currentPage,
		    		"perPage"     : $("#PER_PAGE").val(),
	   				"start_date" : $("#selectyear").val() + "-01-01",
	   				"end_date"   : $("#selectyear").val() + "-12-31"
			};$.ajax({ 
			    url: "${pageContext.request.contextPath}/api/admin/reports/salereportyearly/", 
			    type: 'GET',  
			    data: json, 
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) {
			    	var total_amount = 0;
			    	b =true; 
			    	v = data;
			    
			    	if(data.reportyear){
				    	$("tbody#tbodyyearly").html('');
				    	for(var i=0;i<data.reportyear.length;i++){
				    	formatMonthlySaleReport(data.reportyear[i]);
				    	//total_amount += parseInt(data.reportyear[i].total_amount.replace(',',''));
				    	}
			    		 $("#CONTENT_YEARLY").tmpl(data.reportyear).appendTo("tbody#tbodyyearly");	
			    		 $("#allTotalAmount").val((data.getTotalAmount).toFixed(2));
			    	}
			    	else
			    		{
			    			$("#allTotalAmount").val("");
			    		}
			    	if(check){
			    		sales.setPagination(data.pagination.totalPages,1);
			    		check=false;
			    	}
			    },	
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			}); 
	 } 
	 sales.formatDetail = function(value){
		 value["total_amount"] =(value["total_amount"]).toFixed(2); 		 
		 if(value["purchase_type"] == 0)
		 		value["purchase_type"] = "Import";
		 else
			 	value["purchase_type"] = "Expense";
		 if(b){
	 			order = v.pagination.perPage * (v.pagination.currentPage-1);
	 			j = order + 1;
	 			value["order"] =j;
	 			b = false;
	 		}
	 		else  
	 		value["order"] = ++j; 
	 }
	 sales.formatDaily = function(value){
		 value["total_amount"] =(value["total_amount"]).toFixed(2); 
		 value["pro_unit_price"] = (value["pro_unit_price"]).toFixed(2);
		 value["product_qty"] = numeral(value["product_qty"]).format('0,0'); 
		 if(b){
	 			order = v.pagination.perPage * (v.pagination.currentPage-1);
	 			j = order + 1;
	 			value["order"] =j;
	 			b = false;
	 		}
	 		else  
	 		value["order"] = ++j; 
	 } 
	 formatDaily_print = function(value){
		 value["total_amount"] =(value["total_amount"]).toFixed(2); 
		 value["pro_unit_price"] = (value["pro_unit_price"]).toFixed(2);
		 value["product_qty"] = numeral(value["product_qty"]).format('0,0'); 
		 if(b){
	 			order = 0;
	 			j = order + 1;
	 			value["order"] =j;
	 			b = false;
	 		}
	 		else  
	 		value["order"] = ++j; 
	 } 
	 sales.formatWeekly = function(value){ 
		 value["total_amount"] = (value["day1_amount"] + 
					value["day2_amount"] + 
					value["day3_amount"] +
					value["day4_amount"] +
					value["day5_amount"] +
					value["day6_amount"] +
					value["day7_amount"]).toFixed(2);
		value["total_qty"] = numeral(value["day1_qty"] + 
				 value["day2_qty"] + 
				 value["day3_qty"] +
				 value["day4_qty"] +
				 value["day5_qty"] +
				 value["day6_qty"] +
				 value["day7_qty"] ).format('0,0')  ;
		for(j =1 ;j<=7; j++){
		value['day' +(j) + '_qty'] = numeral(value['day' +(j) + '_qty']).format('0,0'); 
		value['day' +(j) + '_amount'] = numeral(value['day' +(j) + '_amount']).format('0,0');
		}
		if(b){
	 			order = v.pagination.perPage * (v.pagination.currentPage-1); 
	 			k = order + 1;
	 			value["order"] =k;
	 			b = false; 
	 		}
	 		else  
	 		value["order"] = ++k;
	 }
	 sales.formatWeekly_print = function(value){ 
		 value["total_amount"] = numeral(value["day1_amount"] + 
					value["day2_amount"] + 
					value["day3_amount"] +
					value["day4_amount"] +
					value["day5_amount"] +
					value["day6_amount"] +
					value["day7_amount"]).format('0,0') ;
		value["total_qty"] = numeral(value["day1_qty"] + 
				 value["day2_qty"] + 
				 value["day3_qty"] +
				 value["day4_qty"] +
				 value["day5_qty"] +
				 value["day6_qty"] +
				 value["day7_qty"] ).format('0,0')  ;
		for(j =1 ;j<=7; j++){
		value['day' +(j) + '_qty'] = numeral(value['day' +(j) + '_qty']).format('0,0'); 
		value['day' +(j) + '_amount'] = numeral(value['day' +(j) + '_amount']).format('0,0');
		}
		if(b){
	 			order = 0; 
	 			k = order + 1;
	 			value["order"] =k;
	 			b = false; 
	 		}
	 		else  
	 		value["order"] = ++k;
	 }
	 function formatMonthlySaleReport(value){
			console.log(value);
			
	    	value["total_amount"] = numeral(value["jan_amount"] + 
	    							value["feb_amount"] + 
	    							value["mar_amount"] +
	    							value["apr_amount"] +
	    							value["may_amount"] +
	    							value["jun_amount"] +
	    							value["jul_amount"] +
	    							value["aug_amount"] +
	    							value["sep_amount"] +
	    							value["oct_amount"] +
	    							value["nov_amount"] +
	    							value["dec_amount"]).format('0,0') ;
	    	value["total_qty"] = numeral(value["jan_qty"] + 
								 value["feb_qty"] + 
								 value["mar_qty"] +
								 value["apr_qty"] +
								 value["may_qty"] +
								 value["jun_qty"] +
								 value["jul_qty"] +
								 value["aug_qty"] +
								 value["sep_qty"] +
								 value["oct_qty"] +
								 value["nov_qty"] +
								 value["dec_qty"]).format('0,0')  ;
	    	value["jan_amount"] = numeral(value["jan_amount"]).format('0,0');
	    	value["feb_amount"] = numeral(value["feb_amount"]).format('0,0');
			value["mar_amount"] = numeral(value["mar_amount"]).format('0,0');
			value["apr_amount"] = numeral(value["apr_amount"]).format('0,0');
			value["may_amount"] = numeral(value["may_amount"]).format('0,0');
			value["jun_amount"] = numeral(value["jun_amount"]).format('0,0');
			value["jul_amount"] = numeral(value["jul_amount"]).format('0,0');
			value["aug_amount"] = numeral(value["aug_amount"]).format('0,0');
			value["sep_amount"] = numeral(value["sep_amount"]).format('0,0');
			value["oct_amount"] = numeral(value["oct_amount"]).format('0,0');
			value["nov_amount"] = numeral(value["nov_amount"]).format('0,0');
			value["dec_amount"] = numeral(value["dec_amount"]).format('0,0');
			value["jan_qty"] =  numeral(value["jan_qty"]).format('0,0');
			value["feb_qty"] =  numeral(value["feb_qty"]).format('0,0');
			value["mar_qty"] = numeral(value["mar_qty"]).format('0,0');
			value["apr_qty"] = numeral(value["apr_qty"]).format('0,0');
			value["may_qty"] = numeral(value["may_qty"]).format('0,0');
			value["jun_qty"] = numeral(value["jun_qty"]).format('0,0');
			value["jul_qty"] = numeral(value["jul_qty"]).format('0,0');
			value["aug_qty"] = numeral(value["aug_qty"]).format('0,0');
			value["sep_qty"] = numeral(value["sep_qty"]).format('0,0');
			value["oct_qty"] = numeral(value["oct_qty"]).format('0,0');
			value["nov_qty"] = numeral(value["nov_qty"]).format('0,0');
			value["dec_qty"] = numeral(value["dec_qty"]).format('0,0');
			if(b){
	 			order = v.pagination.perPage * (v.pagination.currentPage-1); 
	 			k = order + 1;
	 			value["order"] =k;
	 			b = false; 
	 		}
	 		else  
	 		value["order"] = ++k;
	    	
	    }
	 
	 $("#selectreport").change(function(){
		 if($(this).val()==0){
			 $("#tbldetail").removeClass("hidetable");
			 $("#tbldaily").addClass("hidetable"); 
			 $("#tblweekly").addClass("hidetable");
			 $("#tblmonthly").addClass("hidetable");
			 $("#tblyearly").addClass("hidetable");
			// setCalendar();
			 $("#printAble").addClass("hidetable");
			// $("#startfrom").html(" in " +  new Date().getFullYear());
			 $("#yearcombo").removeClass("hidetable");
			 $("#monthcombo").addClass("hidetable");
			 $("#datelable").addClass("hidetable");
			 check = true;
			 sales.listDetail(1);
			 
		 }			 
		 else if($(this).val()==1){ 
			 $("#tbldetail").addClass("hidetable");
			 $("#tbldaily").removeClass("hidetable");
			 $("#tblweekly").addClass("hidetable");
			 $("#tblmonthly").addClass("hidetable");
			 $("#tblyearly").addClass("hidetable");
			 
			 $("#yearcombo").addClass("hidetable");
			 $("#monthcombo").addClass("hidetable");
			 $("#datelable").removeClass("hidetable");
			 $("#EDate").addClass("hidetable");
			 
			 $("#printAble").removeClass("hidetable");
			 setCalendar();
			 check = true;
			 sales.listDaily(1);
			 
		 }else if($(this).val()==2){ 
			 
			 $("#tbldetail").addClass("hidetable");
			 $("#tbldaily").addClass("hidetable");
			 $("#tblweekly").removeClass("hidetable");
			 $("#tblmonthly").addClass("hidetable");
			 $("#tblyearly").addClass("hidetable");
			 
			 $("#yearcombo").addClass("hidetable");
			 $("#datelable").removeClass("hidetable");
			 $("#EDate").removeClass("hidetable");	
			 $("#monthcombo").addClass("hidetable");
			 
			 $("#printAble").removeClass("hidetable");
			 setCalendar();
			 settableheader();
			 check = true;
			 sales.listWeekly(1);
			 /* $("#REGS_DATE_S").datepicker('setDate', new Date(startdate));
			 $("#REGS_DATE_E").datepicker('setDate', new Date(stopdate)); */
			 
		 }else if($(this).val()==3){
			 $("#tbldaily").addClass("hidetable");
			 $("#tbldetail").addClass("hidetable");
			 $("#tblweekly").addClass("hidetable");
			 $("#tblmonthly").removeClass("hidetable");
			 $("#tblyearly").addClass("hidetable");	
			 
			 $('select#selectyear option[value="'+new Date().getFullYear()+'"]').attr("selected",true);
			 $('select#selectmonth option[value="'+new Date().getMonth()+'"]').attr("selected",true);			 
			 $("#yearcombo").removeClass("hidetable");
			 $("#selectmonth").removeClass("hidetable");
			 $("#datelable").addClass("hidetable");
			 $("#monthcombo").removeClass("hidetable");
			 
			 $("#printAble").removeClass("hidetable");
			 check = true;
			 setheadermonthly();
			 sales.listMonthly();
			
		 }else if($(this).val()==4){
			 $("#tbldaily").addClass("hidetable");
			 $("#tbldetail").addClass("hidetable");
			 $("#tblweekly").addClass("hidetable");
			 $("#tblmonthly").addClass("hidetable");
			 $("#tblyearly").removeClass("hidetable");
			 
			 $("#printAble").removeClass("hidetable");
			 var startdate = new Date().getFullYear() + '/01/01';
			 var stopdate = new Date().getFullYear() + '/12/31';
			 check = true;
			 $("#selectmonth").addClass("hidetable");
			 sales.listYearly();
		 }		 
	 });
	function setheadermonthly(){ 
		var st = "";
			st += "<tr>";
			st += "<th rowspan='2'>#</th>";
			st += "<th rowspan='2'>Item</th>";
		for (i =0; i<(new Date($("#selectyear").val(), parseInt($("#selectmonth").val()) + 1, 0).getDate()) ;i++)
			{			
			st += "<th colspan='2'>" + (1+i) + "</th>";
			}
			st += "<th colspan='2'>Total</th></tr><tr>";		
			for (i =0; i<(new Date($("#selectyear").val(), parseInt($("#selectmonth").val()) + 1, 0).getDate()) ;i++)
			{			
			st += "<th>Qty</th><th>Amt</th>";
			}	
			st += "<th>Qty</th><th>Amt</th></tr>";	
			$("#tbl_header_month").html(st);
			
	}
	 
	function settableheader(){
		var monthOfyear = ['January', 'February', 'Match', 'April', 'May', 'June', 'July','Augest','Septemper', 'October', 'November', 'December'];
		//var mm = moment().isoWeekday(1);
		//var mm= moment($("#REGS_DATE_S").val());
		//mm = moment().weekday(6);
		//console.log(mm.weekday(0).get('date'));
		/* 	$("#startfrom").html(" in " +  mm.get('year'));
		$("#purchasemonth").html(monthOfyear[mm.get('month')]);	
		$("#startfrom").html("on" + monthOfyear[mm.get('month')] +" "+ mm.weekday(1).get('date') +", "+ mm.get('year'));
	*/
	//	var dd = moment(mm.weekday(0).get('date')).isoWeekday(1);
	 
		var dd = 0;
		var dayID ="";
		
			for (var i=0; i <7; i++) {
				dayID = "#week" + (i+1);
				dd=	moment($("#REGS_DATE_S").val()).add(i, 'days').get('date');
				$(dayID).html(dd);
			}; 
			 
		}
	 
	 function searchByDate(){
      	var startDate 		= $( "#REGS_DATE_S" ).val() + " 00:00:00";
		var endDate 		= $( "#REGS_DATE_E" ).val() + " 24:00:00"; 
		json = {
					"startdate"   		  : startDate,
					"enddate" 		  	  : endDate
		};
		console.log(JSON.stringify(json));
		$.ajax({
			 url: "${pageContext.request.contextPath}/admin/getsearchsellbydate", 
	    type: 'POST',
			datatype: 'JSON',
			data: JSON.stringify(json), 
			beforeSend: function(xhr) {
	            xhr.setRequestHeader("Accept", "application/json");
	            xhr.setRequestHeader("Content-Type", "application/json");
	        },
			success: function(data){
				st="";
				
            	var a = 1;
            	var total = 0;
            	
	            for(i=0; i<data.length; i++)	
		      	{ 
	            	a = i+1;
	            	total += data[i].Total ;
		    	  	st += "<tr>"
		    	  	st += "<td>" + a + "</td> "
		    	  	st += "<td>" + data[i].productName + "</td>";
		    	  	st += "<td>" + data[i].proQty + "</td>";
		    	  	st += "<td>" + data[i].UnitPrice + "</td>";
		    	  	st += "<td>" + data[i].Total + "</td>"; 
		    	  
		    	}
	            
      			$("#searchDetail").html(st);
      			$("#totalPrice").html(total);
			},
			error:function(data, status,er){
				console.log("error: " + data + "status: " + status + "er: ");
			}
		}); 
	 }
	  
	 
	 
	 
	 $("#btnREGS_DATE_S").click(function(){	
	 			$( "#REGS_DATE_S" ).datepicker("show");		
	 			
	 		});		
	 	$("#btnREGS_DATE_E").click(function(){
	 			$( "#REGS_DATE_E" ).datepicker("show");			
	 		});

	 function calculateDay(start, end){		
	         var days = (end - start) / (1000 * 60 * 60 * 24);
	         $("#totalday").val(days);
	         return;
	 }

	 function setCalendar(){		
	 		$("#REGS_DATE_S").datepicker({
	 		      defaultDate: new Date(),
	 		      setDate: new Date(),
	 		      changeMonth: true,
	 		      numberOfMonths: 1,
	 		      dateFormat: "yy-mm-dd",
	 		      onClose: function( selectedDate ) {			    	  
	 			    	    calculateDay($("#REGS_DATE_S").datepicker("getDate"),$("#REGS_DATE_E").datepicker("getDate"));
	 						//moneyPerDay($("#totalAmount").val(), $("#totalday").val());
	 						$("#REGS_DATE_E").datepicker("option", "minDate", selectedDate);
	 						if($("#EDate").hasClass("hidetable"))
	 							{
	 								check = true;
	 								sales.listDaily(1);
	 							}	 							
	 						else
	 							{
	 								settableheader();
	 								$("#REGS_DATE_E").datepicker('setDate', moment($("#REGS_DATE_S").val()).add(6, 'days').format('YYYY-MM-DD'));
	 								check = true;
	 								sales.listWeekly(1);
	 								 
	 							}
	 							
	 						searchByDate();
	 			      }
	 		});
	 		$("#REGS_DATE_E").datepicker({
	 		     defaultDate: new Date(),
	 		      setDate: new Date(),
	 		      changeMonth: true,
	 		      numberOfMonths: 1,
	 		      dateFormat: "yy-mm-dd",
	 		      onClose: function( selectedDate ) {

	 			    	  $("#REGS_DATE_S").datepicker("option", "maxDate", selectedDate);
	 			    	    calculateDay($("#REGS_DATE_S").datepicker("getDate"),$("#REGS_DATE_E").datepicker("getDate"));
	 						//moneyPerDay($("#totalAmount").val(), $("#totalday").val());
	 						$("#REGS_DATE_S").datepicker('setDate', moment($("#REGS_DATE_E").val()).subtract(6, 'days').format('YYYY-MM-DD'));
	 						settableheader();
	 						searchByDate();
	 						check = true;
	 						sales.listWeekly(1);
	 			      }
	 		});	
	 		if($("#EDate").hasClass("hidetable"))
	 			$("#REGS_DATE_S").datepicker('setDate', moment().format('YYYY-MM-DD'));
	 		else
	 			$("#REGS_DATE_S").datepicker('setDate', moment().subtract(6, 'days').format('YYYY-MM-DD'));
	 		//$("#REGS_DATE_E").datepicker('setDate', moment().add(30, 'days').format('YYYY-MM-DD'));
	 		$("#REGS_DATE_E").datepicker('setDate', moment().format('YYYY-MM-DD'));
	 }
	 $(document).on("click","#saleid", function(){
		   $.ajax({ 
			    url: "${pageContext.request.contextPath}/api/admin/reports/getsaledetail/" + $(this).html() , 
			    type: 'POST', 
			    dataType: 'JSON', 
			    beforeSend: function(xhr) {
                  xhr.setRequestHeader("Accept", "application/json");
                  xhr.setRequestHeader("Content-Type", "application/json");
              },
			    success: function(data) {
			    console.log(data);
			     	var st= "";
			    	var amount = 0;
			       for(i=0; i<data.saleDetail.length; i++){
			    	   st += "<tr><td>" + (i + 1) + "</td>";
			    	   st += "<td>" + data.saleDetail[i].pro_name +"</td>";
			    	   st += "<td>" + data.saleDetail[i].pro_qty + " " + data.saleDetail[i].pro_comment +"</td>";
			    	   st += "<td>" + data.saleDetail[i].pro_unit_price +"</td>";
			    	   st += "<td>" + data.saleDetail[i].amount +"</td></tr>"			    	   
			       }
			       $("#impProDetail").html(st);
			       $("#btotalamount").val(data.saleDetail[0].total_amount);  
			    },
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			});
		 
		  $("#impDetail").bPopup({follow: [false, false], position: ["10%","5%"]});  
	 });
	 $("#printInvoice").click(function(){
		 $('#orderdetail tr').each(function(i,e){
				var child = $(e).children();
				st += '<tr><td>' + child.eq(0).html() + '</td>';
				st += '<td>' + child.eq(1).html() + '</td>';
				st += '<td>' + child.eq(3).html() + '</td>';
				st += '<td>' + child.eq(2).html() + '</td>';
				st += '<td>' + child.eq(4).html() + '</td></tr>';
			});
	 	$("#tblprint").html(st);
	 	$("#printtotal").html($("#totalamount").val());
		$("#printtotalreil").html($("#totalreil").val());
		$("#printpaid").html($("#txtpay").val());
		$("#printpaidr").html($("#txtpayreil").val());
		$("#printchange").html($("#txtchange").val());
		$("#printdollar").html($("#txtchangedollar").val());
		$("#printrate").html($("#exchangerate").val());
		$("#printcusdate").html($("#cusdate").val());
			
			if($("#tocusname").val() != "")
				$("#printtocusname").html($("#tocusname").val());
			if($("#cusaddr").val() != "")
				$("#printcusaddr").html($("#cusaddr").val());
			if($("#cusphone").val() != "")
				$("#printcusphone").html($("#cusphone").val());	
		 window.print();
	 });
	 
	 $("#print_invoice").click(function(){
		 var st = "";
		for(var i=0; i<$("#impProDetail tr").length; i++){
			st += "<tr>"
				st += "<td>" + $("#impProDetail").children().eq(i).children().eq(0).text() + "</td>";
			    st += "<td>" + $("#impProDetail").children().eq(i).children().eq(1).text() + "</td>";
			    st += "<td>" + $("#impProDetail").children().eq(i).children().eq(3).text() + "</td>";
			    st += "<td>" + $("#impProDetail").children().eq(i).children().eq(2).text() + "</td>";
			    st += "<td>" + $("#impProDetail").children().eq(i).children().eq(4).text() + "</td>";
			st += "</tr>";
		}
		$("#orderdetail").html(st);
		$("#totalamount").val($("#btotalamount").val());
		$("#cusdate").val(moment().format('DD-MM-YYYY'));
		$("#totalreil").val(numeral($("#btotalamount").val()*exchangerate).format('0,0'));
		$("#exchangerate").val(exchangerate);
		$("#addtocart").bPopup({follow: [false, false], position: ["10%","5%"]});
	 });
	 
	 $("#txtpay").on("blur",function(){
			var paid = 0, paidreil = 0;
			
			if($(this).val() != ""){
				paid = ($("#totalamount").val() - $(this).val()).toFixed(2)
				if(paid <= 0){									
					paidreil = (paid * $("#exchangerate").val()).toFixed(0);
					$("#txtpayreil").val('0');
					$("#txtchange").val(numeral(Math.abs(paidreil)).format('0,0'));
					$("#txtchangedollar").val(Math.abs(paid));
				}
				else{
					paidreil = (paid * $("#exchangerate").val()).toFixed(0);
					$("#txtpayreil").val(numeral(paidreil).format('0,0'));
					$("#txtchange").val('0');
					$("#txtchangedollar").val('0');
				}
			}
		});
		$("#txtpayreil").on("dblclick",function(){
			$(this).removeAttr('readonly');
		});
		$("#txtpayreil").on("blur",function(){
			var paid = 0;
			var total = 0;
			$(this).removeAttr('readonly');
			paid = ($("#txtpay").val() != "") ? $("#txtpay").val() : 0;
			
			total = (paid * parseInt($("#exchangerate").val())) + parseInt($(this).val());
			totalreil = (parseInt($("#totalreil").val().replace(',', '')));
			if(total > totalreil){
				$("#txtchange").val(numeral(total - totalreil).format('0,0'));
				$("#txtchangedollar").val((total - totalreil)/parseInt($("#exchangerate").val()));
			}else
			{
				$("#txtchange").val('0');
				("#txtchangedollar").val('0');
			}
				
		});
		
  function print_daily(){
	  $.ajax({ 
		    url: "${pageContext.request.contextPath}/api/admin/reports/salereportdaily_print/" , 
		    type: 'GET', 
		    data: { 
		    		"startDate"   : $("#REGS_DATE_S").val()			    		 
		    },
			    beforeSend: function(xhr) {
             xhr.setRequestHeader("Accept", "application/json");
             xhr.setRequestHeader("Content-Type", "application/json");
         },
		    success: function(data) { 
		    	
		    	b =true; 
			 	 if(data.reportdaily_print.length>0){
					$("tbody#PRINT_CONTENTS_DAILY").html('');
					   for(var i=0;i<data.reportdaily_print.length;i++){
						   formatDaily_print(data.reportdaily_print[i]);
					}   
					$("#CONTENT_DAILY_PRINT").tmpl(data.reportdaily_print).appendTo("tbody#PRINT_CONTENTS_DAILY"); 
					$("#allTotalAmount_print_daily").html(numeral(data.getTotalAmount_print).format('0,0'));
				}else{
					$("tbody#PRINT_CONTENTS_DAILY").html("");
					$("#allTotalAmount_print_daily").html('');
				} 
			 	 var divContents = $("#print_data").html(); 
			     loadPrintPage(divContents,getPortrait());
			     			    
		    },
		    error:function(data,status,er) { 
		        console.log("error: ",data," status: ",status," er:",er);
		    }
		}); 
  }
  
  function print_weekly(){
	  var json = { 
 				"start_date" : $("#REGS_DATE_S").val(),
 				"end_date"   : $("#REGS_DATE_E").val()
		};$.ajax({ 
		    url: "${pageContext.request.contextPath}/api/admin/reports/salereportweekly_print/", 
		    type: 'GET',  
		    data: json, 
		    beforeSend: function(xhr) {
              xhr.setRequestHeader("Accept", "application/json");
              xhr.setRequestHeader("Content-Type", "application/json");
          },
		    success: function(data) {
		
		    	b =true; 
		    	if(data.reportweekly_print.length>0){
					$("tbody#PRINT_CONTENTS_WEEKLY").html('');
					   for(var i=0;i<data.reportweekly_print.length;i++){
						   sales.formatWeekly(data.reportweekly_print[i]);
					}   
					$("#CONTENT_WEEKLY_PRINT").tmpl(data.reportweekly_print).appendTo("tbody#PRINT_CONTENTS_WEEKLY");  
					$("#allTotalAmount_print_weekly").html(numeral(data.getTotalAmount_print).format('0,0'));
				}else{
					$("tbody#PRINT_CONTENTS_WEEKLY").html("");
					$("#allTotalAmount_print_weekly").html('');
				} 
		    	 var divContents = $("#print_data_weekly").html(); 
			     loadPrintPage(divContents,getPortrait());
		    },	
		    error:function(data,status,er) { 
		        console.log("error: "+data+" status: "+status+" er:"+er);
		    }
		}); 
  }
  listMonthly_print = function(){
		 var json = { 
	   				"start_date" : $("#selectyear").val() + "-" + (parseInt($("#selectmonth").val()) + 1) + "-01",
	   				"end_date"   : $("#selectyear").val() + "-" + (parseInt($("#selectmonth").val()) + 1) + "-" + (new Date($("#selectyear").val(),parseInt($("#selectmonth").val()) + 1, 0).getDate())
			};$.ajax({
			    url: "${pageContext.request.contextPath}/api/admin/reports/salereportmonthly_print/", 
			    type: 'GET',  
			    data: json, 
			    beforeSend: function(xhr) {
                 xhr.setRequestHeader("Accept", "application/json");
                 xhr.setRequestHeader("Content-Type", "application/json");
             },
			    success: function(data) {
			    	
			    	b =true; 
			    	    if(data.reportmonthly_print){
				    	$("#PRINT_CONTENTS_MONTHLY tbody").html('');
				    	var st = "" ; 
				    	var d="";
				    		st += "<tr>";
					    	for(var i=0;i<data.reportmonthly_print.length;i++){
					    	var total_qty = 0, total_amount = 0;
						    	if(b){
						 			order = 0; 
						 			k = order + 1;
						 			st += "<td>"+ k +"</td>";
						 			b = false; 
						 		}
						 		else  
						 			{
						 			k += 1;
						 			st += "<td>"+ k +"</td>"; 
						 			}
				    		st += "<td class='content-left'><span class='ellipsis'>" + data.reportmonthly_print[i].pro_name + "</span></td>"; 
				    		for(var j=0; j<(new Date($("#selectyear").val(),parseInt($("#selectmonth").val()) + 1, 0).getDate());j++) {
				    			 d=(j<=14)?"show1":"hide";
				    				st += "<td class='"+d+"'>" + numeral(data.reportmonthly_print[i]['day' + (j+1) + '_qty']).format('0,0') + "</td>";
				    				st += "<td class='"+d+"'>" + numeral(data.reportmonthly_print[i]['day' + (j+1) + '_amount']).format('0,0') + "</td>";
				    				total_qty += data.reportmonthly_print[i]['day' + (j+1) + '_qty'];
				    				total_amount += data.reportmonthly_print[i]['day' + (j+1) + '_amount'];
				    		}
				    		st += "<td class='content-right "+d+"'>" + numeral(total_qty).format('0,0') + "</td>";
				    		st += "<td class='content-right "+d+"'>" + numeral(total_amount).format('0,0') + "</td>";
				    		st += "</tr>";
				    		//total_all += total_amount;
						}
				    	$("#PRINT_CONTENTS_MONTHLY").html(st);
				    	$("#allTotalAmount_print_monthly").html(numeral(data.getTotalAmount_print).format('0,0'));
				    }  
			    	    else{
			    	    	$("#PRINT_CONTENTS_MONTHLY").html("");
					    	$("#allTotalAmount_print_monthly").html('');
			    	    }
			    },	
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			}); 
	 }
   listYearly_print = function(){
		 var json = { 
	   				"start_date" : $("#selectyear").val() + "-01-01",
	   				"end_date"   : $("#selectyear").val() + "-12-31"
			};$.ajax({ 
			    url: "${pageContext.request.contextPath}/api/admin/reports/salereportyearly_print/", 
			    type: 'GET',  
			    data: json, 
			    beforeSend: function(xhr) {
                 xhr.setRequestHeader("Accept", "application/json");
                 xhr.setRequestHeader("Content-Type", "application/json");
             },
			    success: function(data) {
			    	var total_amount = 0; 
			
			    	if(data.reportyear_print){
				    	$("tbody#PRINT_CONTENTS_YEARLY").html('');
				    	for(var i=0;i<data.reportyear_print.length;i++){
				    	formatMonthlySaleReport(data.reportyear_print[i]); 
				    	data.reportyear_print[i].order = i+1;
				    	}
			    		 $("#CONTENT_YEARLY_PRINT").tmpl(data.reportyear_print).appendTo("tbody#PRINT_CONTENTS_YEARLY");	
			    		 $("#allTotalAmount_print_yearly").html(numeral(data.getTotalAmount_print).format('0,0'));
			    	}
			    	else
			    		{
			    			$("tbody#PRINT_CONTENTS_YEARLY").html('');
			    			$("#allTotalAmount_print_yearly").html("");
			    		} 
			    },	
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			}); 
	 } 
	 $("#print_report").click(function() {
		
		 switch($("#selectreport").val()){
		 case '0':  
			 break;
		 case '1':
			 $("#report_start_daily").html(" Date : " + $("#REGS_DATE_S").val());
			 print_daily();
			 break;
		 case '2':
			 $("#report_start_weekly").html(" Date : " + $("#REGS_DATE_S").val());
			 $("#report_end_weekly").html(" Date : " + $("#REGS_DATE_E").val()); 
				var dd = 0;
				var dayID =""; 
					for (var i=0; i <7; i++) {
						dayID = "#week_print" + (i+1);
						dd=	moment($("#REGS_DATE_S").val()).add(i, 'days').get('date');
						$(dayID).html(dd);
					};
			print_weekly();
			 break;
		 case '3':
			 var d="";
			 var end=new Date($("#selectyear").val(), parseInt($("#selectmonth").val()) + 1, 0).getDate();
			 $("#end").html('16 -'+ end);
			 $("#select_yearly option[value='1']").attr("selected","selected");
			 $("#report_start_monthly").html(" Date : " + $("#selectmonth option:selected").text() + ", " + $("#selectyear").val());
			   var st = "";
				st += "<tr>";
				st += "<th rowspan='2'>#</th>";
				st += "<th rowspan='2'>Item</th>";
			for (i =0; i<(new Date($("#selectyear").val(), parseInt($("#selectmonth").val()) + 1, 0).getDate()) ;i++)
				{	
				 d=(i<=14)?"show1":"hide";
				st += "<th colspan='2' class='"+d+"' >" + (1+i) + "</th>";
				}
				st += "<th colspan='2' class='"+d+"'>Total</th></tr><tr>";		
				for (i =0; i<(new Date($("#selectyear").val(), parseInt($("#selectmonth").val()) + 1, 0).getDate()) ;i++)
				{		
					var d= d=(i<=14)?"show1":"hide";
				st += "<th class='"+d+"' style='padding-left:12px !important; padding-right:12px !important'>qty</th><th class='"+d+"' style='padding-left:22px !important; padding-right:22px !important'>Amount</th>";
				}	
				st += "<th class='"+d+"'>Qty</th><th class='"+d+"'>Amt</th></tr>";	
				$("#tbl_header_month_print").html(st);  
				listMonthly_print();
			 $('#monthly_list').modal({
					"backdrop":"static"
				}) ; 
			 break;
			 
		 case '4':
			 $("#report_start_yearly").html(" Date : " + $("#selectyear").val());
			 listYearly_print();
			 $('#yearly_list').modal({
					"backdrop":"static"
				}) ;
			 break;
	 }  	
		});
	 });
 
 </script>
</body>
</html>
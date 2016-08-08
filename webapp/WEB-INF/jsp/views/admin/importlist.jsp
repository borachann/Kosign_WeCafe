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



<style>
.hidetable {
	display: none;
}

</style>
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

<script
	src="${pageContext.request.contextPath}/resources/js/modernizr.min.js"></script>



<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<style>
.hidebtn {
	display: none;
}

.borderRed {
	border-color: red;
}
@media print {
	.content-page {
		margin-top: -100px;
		margin-left: 0px;
	}
	.content {
		margin-top: -100px;
		margin-bottom: 0px;
	}
}
</style>

</head> 
<body class="fixed-left" ng-app="wecafe">

	<!-- Begin page -->
	<div id="wrapper" ng-controller="ImportController as controller">

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
				<div class="container hidden-print">

					<!-- Page-Title -->
					<div class="row">
						<div class="col-sm-12">
							<h4 class="pull-left page-title">Import List</h4>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-default">
								<div class="panel-heading">

									<div class="row">
										<!-- <h3 class="panel-title">Product Lists</h3> -->
										<div class="col-md-10">
											<div class="m-h-50 form-group ">
												<label class="col-sm-1 control-label">Date : </label> <input
													type="hidden" id="SEND_DT" data-id="SEND_DT" />
												<div id="sendFrdt" class="date-range col-sm-5">
													<input type="text" readonly="readonly" id="REGS_DATE_S"
														name="startdate" class="range-start"
														style="width: 100px; text-align: center;">&nbsp; <a
														href="#none" id="btnREGS_DATE_S"><img
														style="width: 20px; height: 20px;"
														src="${pageContext.request.contextPath}/resources/images/img/ico_calendar.png"></a>&nbsp;~&nbsp;
													<input type="text" readonly="readonly" id="REGS_DATE_E"
														name="stopdate" class="range-end"
														style="width: 100px; text-align: center;">&nbsp; <a
														href="#none" id="btnREGS_DATE_E"><img
														style="width: 20px; height: 20px;"
														src="${pageContext.request.contextPath}/resources/images/img/ico_calendar.png"></a>
												</div>
											</div>
										</div>
										<div class="col-md-2 pull-right" style="text-align: right;">
											<button id="btn_add_import"  class="btn btn-primary hidden-print">Add Import</button>
										</div>
									</div>

								</div>
								<!-- End Panel Head -->
								<div class="panel-body" style="margin-top: -30px;">
									<div class="row">
										<div class="col-md-12 col-sm-12 col-xs-12 overflow-x">
											<table id="datatable">
												<thead>
													<tr>
														<th>#</th>
														<th>Invoice ID</th>
														<th style="text-align: center;">Date</th>
														<th>Name</th>
														<th style="text-align: right;">Total Amount</th>
														<th style="text-align: center;" class="hidden-print">Action</th>
													</tr>
												</thead>
												<tbody id="CONTENTS">

												</tbody>
											</table>

										</div>
									</div>
									<div class="row hidden-print">
										<div class="col-md-2">
											<select id="PER_PAGE" class="form-control"> 
												<option value="15">15</option>
												<option value="30">30</option>
												<option value="50">50</option>
												<option value="100">100</option>
											</select>
										</div>
										<div class="col-md-10 form-horizontal" align="right">
											<label class="control-label col-md-9">Total Amount :
											</label>
											<div class="col-md-3">
												<input class="form-control" readonly="readonly"
													id="allTotalAmount" type="text">
											</div>
										</div>
										<div id="PAGINATION" class="pull-right"></div> 
									</div>
									<div class="row" style="border-radius: 0px;">
											 <div class="hidden-print">
											<div class="pull-right">
												<a href="javascrpt:"
													class="btn btn-inverse waves-effect waves-light" id="print_report"><i class="fa fa-print"></i></a> 
													<!-- <a onclick="window.print();" href="#" class="btn btn-primary waves-effect waves-light">Print</a> -->
											</div>
										</div>
										</div>
								</div>
							</div>
						</div>

					</div>
					<!-- end Panel -->

				</div>
				<!-- container -->

			</div>
			<!-- content -->

			<%@ include file="footer.jsp"%>

		</div>

	</div>
	<!-- END wrapper -->

	<!-- ############################################################# -->


	<div id="impDetail" style="display: none; width: 90%;">
		<div class="modal-content">
			<div class="modal-header">

				<button type="button" class="close" aria-hidden="true">
					<span class="button b-close"><span>×</span></span>
				</button>
				<h4 class="modal-title">Import Detail</h4>

			</div>
			<div class="modal-body overflow-x">
				<table>
					<thead>
						<tr>
							<th>#</th>
							<th>Produce Name</th>
							<th>Qty</th>
							<th>Unit Price</th>
							<th>Supplier Name</th>
						</tr>
					</thead>
					<tbody id="impProDetail">

					</tbody>

				</table>
			</div>
			<div class="modal-footer" style="height: 80px;">
				<div style="float: left;">
					<div class="form-group form-horizontal">
						<label class="control-label col-lg-6">Total Amount</label>
						<div class="col-lg-6">
							<input class=" form-control" id="txttotal" type="text"
								readonly="readonly">
						</div>
					</div>
				</div>
				<div align="right">
					<button class="btn btn-default b-close">Close</button>
				</div>
			</div>
		</div>
	</div>


	<!-- ========== Include product add ========== -->
	<%@ include file="importadd.jsp"%>
	<%@ include file="print_report_import_list.jsp"%>
	<!-- ################################################################## -->

	<script>
		var resizefunc = [];
		var ctx = "${pageContext.request.contextPath}"
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script src="<c:url value='/resources/scripts/dirPagination.js' />"></script>
	<script src="<c:url value='/resources/scripts/app.js' />"></script>
	<script
		src="<c:url value='/resources/scripts/services/import_service.js' />"></script>
	<script
		src="<c:url value='/resources/scripts/controllers/import_controller.js' />"></script>

	<!-- jQuery  -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ui.datepicker-ko.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
	<%-- <script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script> --%>
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

	<!-- Counter-up -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/counterup/waypoints.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/counterup/jquery.counterup.min.js"
		type="text/javascript"></script>

	<!-- CUSTOM JS -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.app.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.tmpl.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.bootpag.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.bpopup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/numeral.min.js"></script>

	<!-- flot Chart -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.time.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.tooltip.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.resize.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.selection.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.stack.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.crosshair.js"></script>

	<!-- Counter-up -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/counterup/waypoints.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/counterup/jquery.counterup.min.js"
		type="text/javascript"></script>

	<!-- Dashboard -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.dashboard.js"></script>

	<!-- Chat -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.chat.js"></script>

	<!-- Todo -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.todo.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/js/print.js"></script>
	
		<script id="CONTENT_Importlist" type="text/x-jquery-tmpl">


	<tr>
		<td>{{= importDetail}} </td>
		<td><a herf="javascript:" style="cursor:pointer" id="impid">{{= impId}}</a></td>
		<td>{{= impDate}}</td>
		<td>{{= user.firstName +' '+ user.lastName}} </td>
		<td>{{= totalAmount}}</td>  
		<td class="actions hidden-print" style="text-align: center;">
			<a class="on-default edit-row" href="${pageContext.request.contextPath}/admin/viewById/{{= impId}}">
				<i class="fa fa-pencil"></i>
			</a> 
		</td>
	</tr>
</script>

<script
	src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.ui.autocomplete.scroll.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/js/print.js"></script>
	<script type="text/javascript">

		/* ==============================================
		Counter Up
		=============================================== */
		jQuery(document).ready(function($) {
			
			var check = true;
			var order = 1;
			var v=[];
			var b = true;
        	var _thisRow ;
        	var isAdded=false;
        	/* var exchangerate = $.ajax({
				 url: "${pageContext.request.contextPath}/seller/getchangerate", 
				 type: 'GET',
				 datatype: 'JSON',
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
			}); */
			 setCalendar();
		
			 getimportlist(1); 
			 		
			 
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
		 						$("#REGS_DATE_E").datepicker("option", "minDate", selectedDate);
		 						check = true;
		 						getimportlist(1);
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
		 			    	 check = true;
		 			    	 getimportlist(1);
		 			      }
		 		});		
		 		
		 		$("#REGS_DATE_S").datepicker('setDate', moment().subtract(30, 'days').format('YYYY-MM-DD'));
		 		$("#REGS_DATE_E").datepicker('setDate', moment().format('YYYY-MM-DD'));
		 		//$("#REGS_DATE_E").datepicker('setDate', moment().format('YYYY-MM-DD'));
		 }
			 function searchByDate(){
			      	var startDate 		= $( "#REGS_DATE_S" ).val() + " 00:00:00";
					var endDate 		= $( "#REGS_DATE_E" ).val() + " 24:00:00"; 
					json = {
								"startdate"   		  : startDate,
								"enddate" 		  	  : endDate
					};
					
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
			//$('#datatable').dataTable();
			 $(document).on("click","#impid", function(){
				   $.ajax({ 
					    url: "${pageContext.request.contextPath}/admin/getimportdetail/" + $(this).html() , 
					    type: 'GET', 
					    dataType: 'JSON', 
					    beforeSend: function(xhr) {
		                    xhr.setRequestHeader("Accept", "application/json");
		                    xhr.setRequestHeader("Content-Type", "application/json");
		                },
					    success: function(data) { 
					    	
					    	var	amount = 0;
					    	var st= "";
					       for(i=0; i<data.length; i++){
					    	   st += "<tr><td>" + (i + 1) + "</td>";
					    	   st += "<td>" + data[i].proname +"</td>";
					    	   st += "<td>" + numeral( data[i].proqty).format('0,0') +"</td>";
					    	   st += "<td>" + data[i].prounitprice +"</td>";
					    	   st += "<td>" + data[i].supname +"</td></tr>";
					    	   amount += (data[i].prounitprice * data[i].proqty);
					       }
					       $("#txttotal").val(amount.toFixed(2));
					       $("#impProDetail").html(st);
					    },
					    error:function(data,status,er) { 
					        console.log("error: "+data+" status: "+status+" er:"+er);
					    }
					});
				 
				  $("#impDetail").bPopup();  
			 });
			 function getimportlist(currentPage){
				 var json = {
						 	"currentPage" : currentPage,
				    		"perPage"     : $("#PER_PAGE").val(),
			   				"start_date" : $("#REGS_DATE_S").val(),
			   				"end_date"   : $("#REGS_DATE_E").val()
					};$.ajax({
					 url: "${pageContext.request.contextPath}/admin/getimportlist/",
					 type: 'GET',
					 data: json, 
					    beforeSend: function(xhr) {
		                    xhr.setRequestHeader("Accept", "application/json");
		                    xhr.setRequestHeader("Content-Type", "application/json");
		                },
					 success: function(data){ 
						b =true;
						v=data;				
						console.log(data);
						 if(data.imports.length>0){
							 
								$("tbody#CONTENTS").html('');					
								  for(i=0; i<data.imports.length;i++)
									{
										format(data.imports[i]); 
									}  
								$("#CONTENT_Importlist").tmpl(data.imports).appendTo("tbody#CONTENTS");
								$("#allTotalAmount").val(data.total_amount[0].total_amount);
							}else{
								$("tbody#CONTENTS").html('');
								$("#allTotalAmount").val("");
							}
					    	if(check){
					    		setPagination(data.pagination.totalPages,1);
					    		check=false;
					    	}
					 },
					 error:function(data,status,er){
						 console.log("error: "+data+" status: "+status+" er: "+ er);
					 } 
				 });
			 }
			 format = function(value){ 
				 		value["totalAmount"] = value["totalAmount"];				 		
				 	 	value["impDate"] =(value["impDate"]).substring(0, 10);
				 		if(b){
				 			order = v.pagination.perPage * (v.pagination.currentPage-1);
				 			j = order + 1;
				 			value["importDetail"] =j;
				 			b = false;
				 		}
				 		else  
				 		value["importDetail"] = ++j;   
			 }
			 format_print = function(value){ 
			 		value["totalAmount"] = value["totalAmount"];				 		
			 	 	value["impDate"] =(value["impDate"]).substring(0, 10);
			 		if(b){
			 			order = 0
			 			j = order + 1;
			 			value["importDetail"] =j;
			 			b = false;
			 		}
			 		else  
			 		value["importDetail"] = ++j; 
					
		 }
			 $("#PER_PAGE").change(function(){
     			check = true;
     			getimportlist(1);
 		    });

		setPagination = function(totalPage, currentPage){
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
		    	getimportlist(currentPage);
		    }); 
		};
		
		//Import add
		
            
            	
            	$('#btn_add_import').on('hidden.bs.modal', function (event) {
    	    		if(isAdded==true)getimportlist(1);
    			}); 
    			
    				$("#productName").change(function(){   					
            			$("#proID").val("");   
            			$("#supID").val("");
    				});
            		
            		$("#btn_cancel").click(function(){
            			$('#form_add_import').modal('hide');
            			
            		});
                		
        			$("#btn_add_import").click(function(){
        				  
        				clear();
        				$("#tbllistimport tr").remove();
        				searchProduct();
        			    searchSupplier();
        				$('#form_add_import').modal({
        					"backdrop":"static"
        				}) ;
        			});
            	
            	
                $(document).on('keypress','#qty, #UnitPrice', function(e){

    				if((e.keyCode == 8) || (e.keyCode == 46) || ((e.keyCode >=37) && (e.keyCode <= 40)))
    					return ;

    			var data = String.fromCharCode(e.which);	
    					var reg = new RegExp('^[0-9]+$');
    		    	    if(!reg.test(data)){
    		    	    	e.preventDefault();
    					}
    			     });
            	
            	$("#cencelBtn").click(function(){
            		if(confirm("Do you want to cancel?")){
            			clear();
            			$("#tbllistimport tr").remove();
            		}
            	});
            	$(document).on("click","#btndelete",function(){
            		$(this).parents("tr").remove();            		
            	});
            	
            	$(document).on("click","#btnedit",function(){
					

            		_thisRow = $(this).parents("tr");
            		
            		$("#productName").val($(this).parents("tr").children().eq(3).html());
            		$("#qty").val($(this).parents("tr").children().eq(4).html());
            		$("#UnitPrice").val($(this).parents("tr").children().eq(5).html());
            		$("#supplierName").val($(this).parents("tr").children().eq(6).html()); 
            		$("#addbtn").attr("id","editbtn");
            	});
            	$(document).on("click","#editbtn",function(){
            		_thisRow.children().eq(0).html($("#proID").val());
            		_thisRow.children().eq(1).html($("#supID").val());
            		_thisRow.children().eq(3).html($("#productName").val());
            		_thisRow.children().eq(4).html($("#qty").val());
            		_thisRow.children().eq(5).html($("#UnitPrice").val()); 
            		_thisRow.children().eq(6).html($("#supplierName").val());
            		$("#editbtn").attr("id","addbtn");
            		clear();
            	});
            	$("#canceladd").click(function(){ 
	            		clear(); 
	            		$("#editbtn").attr("id","addbtn");
            		 
            	});
            	$(document).on("blur","#productName ,#qty ,#UnitPrice ,#supplierName",function(){
            		
            	if($(this).val()=="")
        		{ 
        			$(this).addClass("borderRed");
        			return;
        		}
        		else
        				$(this).removeClass("borderRed"); 
            	});
            	$(document).on("click","#addbtn",function(){ 
            		
            		if($("#productName").val()=="")
            			{
            				$("#productName").addClass("borderRed");           				
            				return;
            			}
            		else
            			$("#productName").removeClass("borderRed");          		
            		
            		if($("#proID").val()==""){
            			alert("Product name does not exist");
            			$("#productName").addClass("borderRed");           				
        				return;
            		}else
            			$("#productName").removeClass("borderRed");
            		
            		if($("#supID").val()==""){
            			alert("Supplier name does not exist");
            			$("#supplierName").addClass("borderRed");           				
        				return;
            		}else
            			$("#supplierName").removeClass("borderRed");
            		
            		
            		if($("#qty").val()=="")
        			{
        				$("#qty").addClass("borderRed");
        				return;
        			}
            		else
        				$("#qty").removeClass("borderRed");
            		if($("#UnitPrice").val()=="")
        			{
        				$("#UnitPrice").addClass("borderRed");
        				return;
        			}
            		else{
        				$("#UnitPrice").removeClass("borderRed");
            		}
            		if($("#supplierName").val()=="")
        			{
        				$("#supplierName").addClass("borderRed");
        				return;
        			}
            		else
        				$("#supplierName").removeClass("borderRed");
            		
            		var isAdded=false;
					
					$('#tbllistimport tr').each(function() {						
						var pro_name=$(this).find("td").eq(3).text();
											
							if($.trim($("#productName").val())==$.trim(pro_name)){
								alert("Product is already added");
								isAdded=true ;
							}
					});
					
					if(isAdded==false){  
						if($("#tbllistimport tr").length == 0)
						//	exchangerate = JSON.parse(exchangerate.responseText).data.exchangerate;
            		var st="";
            		st += "<tr><td style='display: none;'>" + $('#proID').val() +"</td>";
            		st += "<td style='display: none;'>"+ $('#supID').val() +"</td>";
            		st += "<td>" + ($("#tbllistimport tr").length + 1) +"</td>"; 
            		st += "<td>" + $("#productName").val() +"</td>";
            		st += "<td>" + numeral($("#qty").val()).format('0,0') +"</td>";
            		st += "<td>" + $("#UnitPrice").val() +"</td>";
            		st += "<td>" + $("#supplierName").val() +"</td>";
            		st += "<td><a href= 'javascript:;' id='btnedit'>Edit</a> | <a href='javascript:;' id='btndelete'>Delete</a></td></tr>";
            		$("#tbllistimport").append(st);
            		clear();
            		
					}
            	});
            	
                $('.counter').counterUp({
                    delay: 100,
                    time: 1200
                });
                
                $("#savebtn").click(function(){ 
                	var importDetail = [];
                	if($('#tbllistimport tr').length==0){
                		alert("There is no data was added");
                		return;
                	}
                		$('#tbllistimport tr').each(function(){
                			json ={
                						"proId"				: ($(this).find("td").eq(0).text()),
                						"quantity" 		 	:($(this).find("td").eq(4).text()),
                						"unitPrice"		    :($(this).find("td").eq(5).text()),
                						"supplierId"	  	:($(this).find("td").eq(1).text())
                					};
                			console.log(json);
                				importDetail.push(json);	
                		}); 
                		
    	 			$.ajax({
    	 				 url: "${pageContext.request.contextPath}/admin/addImport", 
     				    type: 'POST',
    	 				datatype: 'JSON',
    	 				data: JSON.stringify(importDetail), 
    	 				beforeSend: function(xhr) {
    	 		            xhr.setRequestHeader("Accept", "application/json");
    	 		            xhr.setRequestHeader("Content-Type", "application/json");
    	 		        },
    	 				success: function(data){
    	 					console.log(data);
    	 					if(data==true){
    	 						alert(" Successfully Added");
    	 						getimportlist(1);
    	 						$('#form_add_import').modal('hide');
    	 						clear();
    	        				$("#tbllistimport tr").remove();
    	 					}else{
    	 						alert("Please try to insert again!");
    	 					}
    	 					
    	 				},
    	 				error:function(data, status,er){
    	 					console.log("error: " + data + "status: " + status + "er: ");
    	 				}
    	 			});    
                });

                 
                function searchSupplier(){
    				$.ajax({ 
    				    url: "${pageContext.request.contextPath}/admin/searchsupplier", 
    				    type: 'POST', 
    				    dataType: 'JSON', 
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) { 
    				       //console.log(data); 
    				       var availableTags=[];
    				       for(i=0; i<data.length; i++)
		   						{							
    				    	   availableTags[i]= 
		   						         {
		   						         	"label": data[i].supplierName,
		   									"dataid": data[i].supId 
		   						         };
		   						}
    				       $("#supplierName" ).autocomplete({
    				    	   
    				    	   select: function(event, ui){
    				    		   $("#supID").val(ui.item.dataid);
    				    	   },
    				    	  // maxShowItems: 8,
    				           source: availableTags
    				       });  
    				    },
    				    error:function(data,status,er) { 
    				        console.log("error: "+data+" status: "+status+" er:"+er);
    				    }
    				});
    				
    			}
                 
                function clear(){
            		$("#productName").val(""); 	$("#productName").removeClass("borderRed");
            		$('#proID').val("");		 
            		$('#supID').val("");		 
            		$("#qty").val("");			$("#qty").removeClass("borderRed");
            		$("#UnitPrice").val("");	$("#UnitPrice").removeClass("borderRed");
            		$("#supplierName").val(""); $("#supplierName").removeClass("borderRed");
            	}
                
                function searchProduct(){
                	 
    				$.ajax({ 
    				    url: "${pageContext.request.contextPath}/admin/searchproduct", 
    				    type: 'POST', 
    				    dataType: 'JSON', 
    				    beforeSend: function(xhr) {
    	                    xhr.setRequestHeader("Accept", "application/json");
    	                    xhr.setRequestHeader("Content-Type", "application/json");
    	                },
    				    success: function(data) { 
    				       console.log(data); 
    				       var availableTags=[];
    				       for(i=0; i<data.length; i++)
		   						{							
    				    	   availableTags[i]= 
		   						         {
		   						         	"label": data[i].productName,
		   									"dataid": data[i].productId 
		   						         };
		   						}
    				       $("#productName" ).autocomplete({
    				    	   
    				    	   select: function(event, ui){
    				    		   $("#proID").val(ui.item.dataid);
    				    	   },
    				    	  // maxShowItems: 8,
    				           source: availableTags
    				       });
    				       $(".ui-autocomplete").css("position", "absolute");
						   $(".ui-autocomplete").css("z-index", "2147483647");
    				    },
    				    error:function(data,status,er) { 
    				        console.log("error: "+data+" status: "+status+" er:"+er);
    				    }
    				});
    				return ;
    			} 
                $("#print_report").click(function() {
                	$("#report_start_date").html(" Date " + $("#REGS_DATE_S").val());
                	$("#report_end_date").html($("#REGS_DATE_E").val());
                	list_print_report();
    				
    			
    			});
                function list_print_report(){
                	var json = { 
			   				"start_date" : $("#REGS_DATE_S").val(),
			   				"end_date"   : $("#REGS_DATE_E").val()
					};$.ajax({
					 url: "${pageContext.request.contextPath}/admin/getimportlist_print/",
					 type: 'GET',
					 data: json, 
					    beforeSend: function(xhr) {
		                    xhr.setRequestHeader("Accept", "application/json");
		                    xhr.setRequestHeader("Content-Type", "application/json");
		                },
					 success: function(data){ 
						b =true;
						v=data;				
					
						 if(data.imports_print.length>0){
							 
								$("tbody#PRINT_CONTENTS").html('');					
								  for(i=0; i<data.imports_print.length;i++)
									{
									  format_print(data.imports_print[i]); 
									}  
								$("#CONTENT_Print_Import").tmpl(data.imports_print).appendTo("tbody#PRINT_CONTENTS");
							//	$("#allTotalAmount_print").val(numeral(data.total_amount_print[0].total_amount).format('0,0'));
								$("#allTotalAmount_print").html(data.total_amount_print[0].total_amount);
							}else{
								$("tbody#PRINT_CONTENTS").html('');
								$("#allTotalAmount_print").html("");
							} 
						  var divContents = $("#print_data").html(); 
		                   loadPrintPage(divContents);
					 },
					 error:function(data,status,er){
						 console.log("error: "+data+" status: "+status+" er: "+ er);
					 } 
				 });
                }
               // print import 
               /* $("#btn_print").click(function(){
            	   var divContents = $("#print_data").html(); 
                   loadPrintPage(divContents);
                   return false;
               }); */
              
            });
		
		
        </script>



</body>



</body>
</html>
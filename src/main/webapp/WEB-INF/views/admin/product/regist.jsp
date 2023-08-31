<%@page import="org.sp.app0828.domain.TopCategory"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	List<TopCategory> topList=(List)request.getAttribute("topList");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Dashboard</title>
<%@ include file="../inc/top_link.jsp"%>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake"
				src="/static/admin/dist/img/AdminLTELogo.png" alt="AdminLTELogo"
				height="60" width="60">
		</div>

		<!-- Navbar -->
		<%@ include file="../inc/top_navi.jsp"%>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<%@ include file="../inc/sidemenu.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">상품등록</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Dashboard v1</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">

					<form id="form1">
					<!-- cart 영역 시작 -->
					<div class="card card-default">
					
						<!-- cart 헤더 시작 -->
						<div class="card-header">
							<h3 class="card-title">맘에들어(Default Theme)</h3>

							<div class="card-tools">
								<button type="button" class="btn btn-tool" data-card-widget="collapse">
									<i class="fas fa-minus"></i>
								</button>
								<button type="button" class="btn btn-tool" data-card-widget="remove">
									<i class="fas fa-times"></i>
								</button>
							</div>
						</div>
						
						<!-- cart 헤더 끝 -->
						
						
						<!-- cart 바디 시작 -->
						<div class="card-body">
						
							<!-- row  시작-->
							<div class="row">
								
								<!-- 좌측 column 시작-->	
								<div class="col-md-6">
									<div class="form-group">
										<label>상위 카테고리</label> 
										
										<select name="topcategory_idx" class="form-control select2" style="width: 100%;">
											<option selected="selected">상위 카테고리 선택</option>
											<%for(TopCategory topCategory : topList){ %>
											<option value="<%= topCategory.getTopcategory_idx() %>"><%= topCategory.getTop_name() %></option>
											<%} %>
										</select>
									</div>
									<!-- /.form-group -->
								</div>
								<!-- 좌측 column  끝-->
								
								
								<!-- 우측 column  시작-->	
								<div class="col-md-6">
									<div class="form-group">
										<label>하위 카테고리</label> 
										<select id="subcategory_idx" name="subCategory.subcategory_idx" class="form-control select2" style="width: 100%;">
											
										</select>
									</div>
									<!-- /.form-group -->
								</div>
								<!-- 우측 column  끝-->
							</div>
							<!-- row 끝 -->
							
							
							
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="상품명" name="product_name">
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="브랜드명" name="brand">
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<input type="number" class="form-control" placeholder="가격" name="price">
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<textarea id="summernote" style="display: none;" name="detail"></textarea>
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<input type="file" name="photo">
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<button id="bt_regist" type="button" class="btn btn-block btn-primary">상품 등록</button>
									</div>
								</div>
							</div>
							
							
						</div>
						<!-- cart 바디 끝 -->
						
					</div>
					<!-- cart 영역 끝 -->
					</form>
					
					<div class="card-footer">
						Visit <a href="https://select2.github.io/">Select2
							documentation</a> for more examples and information about the plugin.
					</div>
				</div>
		</div>
		<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<footer class="main-footer">
		<strong>Copyright &copy; 2014-2021 <a
			href="https://adminlte.io">AdminLTE.io</a>.
		</strong> All rights reserved.
		<div class="float-right d-none d-sm-inline-block">
			<b>Version</b> 3.2.0
		</div>
	</footer>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<%@ include file="../inc/bottom_link.jsp"%>
	
	<script type="text/javascript">
		//현재 페이지가 새로고침 없이 화면의 일부만 변경이 되려면
		//통신을 백그라운드로 진행하고, 서버로부터 온전한 HTML 문서를 가져오지 말고
		//변경하고 싶은 일부 데이터만 가져옴
		function getSubList(topcategory_idx){
			$.ajax({
				url: "/admin/subcategory/list?topcategory_idx="+topcategory_idx,
				type: "GET",
				success:function(result, status, xhr){
					//console.log(result[0].sub_name);
					//기존의 서브 카테고리 option 요소 제거하기
					//how to remove all option in select box using jquery
					$("#subcategory_idx").empty();
					let tag="<option value='0'>하위 카테고리 선택</option>";
					for(let i=0; i<result.length; i++){
						tag+="<option value='"+result[i].subcategory_idx+"'>"+result[i].sub_name+"</option>";
						
					}
					$("#subcategory_idx").html(tag);
					
				}
			});
		}
	
		function regist() {
			$("#form1").attr({
				action: "/admin/product/regist",
				method: "post"
				
			});
			$("#form1").submit();
			
			
		}
		
		$(function(){
			//select박스에 change이벤트 연결
			$("select[name='topcategory_idx']").on("change", function(){
				//alert();
				//하위 카테고리 목록을 가져올 수 있도록 서버로 전송 -> topcategory_idx값
				//alert($(this).val());
				getSubList($(this).val()); //비동기 요청을 시도
			});
			
			//서머노트 연결하기 
			$("#summernote").summernote();
			
			//등록 버튼에 이벤트 연결
			$("#bt_regist").click(()=>{
				regist();
			});
			
		});
		
		
	</script>
</body>
</html>

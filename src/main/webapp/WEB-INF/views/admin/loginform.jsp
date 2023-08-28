<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Dashboard</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="/static/admin/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="/static/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="/static/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet" href="/static/admin/plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/static/admin/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="/static/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="/static/admin/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet" href="/static/admin/plugins/summernote/summernote-bs4.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper ">
		
		<div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Horizontal Form</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form id="form1" class="form-horizontal">
                <div class="card-body">
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">ID</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="admin_id" placeholder="ID">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-10">
                      <input type="password" class="form-control" name="admin_pass" placeholder="Password">
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="offset-sm-2 col-sm-10">
                      <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck2">
                        <label class="form-check-label" for="exampleCheck2">Remember me</label>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="button" class="btn btn-info" id="bt_login">Sign in</button>
                  <button type="button" class="btn btn-default float-right" id="bt_cancel">Cancel</button>
                </div>
                <!-- /.card-footer -->
              </form>
            </div>
	
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="/static/admin/plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="/static/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script src="/static/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script src="/static/admin/plugins/chart.js/Chart.min.js"></script>
	<!-- Sparkline -->
	<script src="/static/admin/plugins/sparklines/sparkline.js"></script>
	<!-- JQVMap -->
	<script src="/static/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
	<script src="/static/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="/static/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script src="/static/admin/plugins/moment/moment.min.js"></script>
	<script src="/static/admin/plugins/daterangepicker/daterangepicker.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="/static/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Summernote -->
	<script src="/static/admin/plugins/summernote/summernote-bs4.min.js"></script>
	<!-- overlayScrollbars -->
	<script
		src="/static/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/static/admin/dist/js/adminlte.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="/static/admin/dist/js/demo.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="/static/admin/dist/js/pages/dashboard.js"></script>
	
	<script type="text/javascript">
	
		$(function(){
			$("#bt_login").click(function(){
				//서버에 인증 요청
				$("#form1").attr({
					action: "/admin/login",
					method: "post"
				});
				$("#form1").submit();
			});
		});
		
	</script>
	
	
</body>
</html>

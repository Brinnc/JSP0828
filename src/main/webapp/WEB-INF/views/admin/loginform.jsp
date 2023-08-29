<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Dashboard</title>

<%@ include file="./inc/top_link.jsp" %>

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

	<%@ include file="./inc/bottom_link.jsp" %>

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

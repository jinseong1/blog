<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <%@include file="/WEB-INF/views/common/title.jsp" %>
    <%@include file="/WEB-INF/views/common/css.jsp" %>

</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- header start -->
				<%@include file="/WEB-INF/views/common/header.jsp"%>
				<!-- header end -->
                
                <!-- body start -->
            <!-- Contact Form -->
            <section class="contact-form">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-12">
                    <div class="section-heading">
                      <h2>LOGIN</h2>
                    </div>                   
                    <form action="/login/connect" accept-charset="UTF-8" method="POST">
                      <div class="row">
                        <div class="col-md-12">
                          <fieldset>
                            <input id="id" name="id"  type="text" class="form-control" placeholder="아이디를 입력하여주세요..." required >
                          </fieldset>
                        </div>
                        <div class="col-md-12">
                          <fieldset>
                            <input id="pwd" name="pwd" type="password" class="form-control" placeholder="비밀번호를 입력하여 주세요..." required >
                          </fieldset>
                        </div>
                        <div class="col-md-12">
                          <fieldset>
                            <button type="submit" id="form-submit" class="border-rounded-button width_100">LOGIN</button>
                          </fieldset>
                        </div>
                      </div>
                    </form> 
                  </div>
                </div>
              </div>
            </section>                
                <!-- body end -->
			</div>
		</div>

		<!-- menu start -->
		<%@include file="/WEB-INF/views/common/menu.jsp"%>
		<!-- menu end -->

	</div>

<%@include file="/WEB-INF/views/common/js.jsp" %>
<script type="text/javascript">
$(function(){
	const result = '${result}';
	
	if(result != ''){
		alert(result);
	}
});
</script>
</body>


</body>

</html>

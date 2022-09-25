<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <html>

<head>
    <title>VS CODE에서 JSP 동작시키기</title>
</head>

<body>
    <h1> test.jsp </h1>
    <a target="_blank" href="inging.html">홈으로 이동</a>
    <a target="_blank" href="taktak.jsp" class="nav-item nav-link">자유 게시판</a>
    <a target="_blank" href="">홈으로 이동</a>
</body>

</html> -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login page</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

    <link href="css/login_css.css" rel="stylesheet">    
    <script src="js/login.js" type="text/javascript"></script>

</head>
<body>
    <div class="row align-items-center py-3 px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a href="index.html" class="text-decoration-none">
                <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1"> </span>행.대.모</h1>
            </a>
        </div>
        <div class="col-lg-6 col-6 text-left">
            <form action="">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for products">
                    <div class="input-group-append">
                        <span class="input-group-text bg-transparent text-primary">
                            <i class="fa fa-search"></i>
                        </span>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-lg-3 col-6 text-right">
            
            <!--실시간 검색어-->
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle font-weight-semi-bold" data-toggle="dropdown">실시간 검색어</a>
                <div class="dropdown-menu rounded-0 m-0">
                    <a href="cart.html" class="dropdown-item">Shopping Cart</a>
                    <a href="checkout.html" class="dropdown-item">Checkout</a>
                </div>
            </div>
            <!--실시간 검색어 끝-->

        </div>
    </div>
    
    <!-- Navbar Start -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                    <h6 class="m-0">Categories</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical">
                    <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                        <a href="freeboard.html" class="nav-item nav-link">자유게시판</a>
                        <a href="HOTboard.html" class="nav-item nav-link">HOT 게시판</a>
                        <a href="Worryboard.html" class="nav-item nav-link">고민 게시판</a>
                        <a href="Infoboard.html" class="nav-item nav-link">정보 게시판</a>
                        <a href="Issueboard.html" class="nav-item nav-link">시사 - 이슈</a>
                        <a href="Shareboard.html" class="nav-item nav-link">나눠드려요</a>
                    </div>
                </nav>
            </div>
            <div>
        </div>
        <div class="mb-40">
            <h1>글쓰기</h1>
            <br>
        </div>
        <div>
            <form action="/" method="post">
                <table>
                    <tr>
                        <td>제목</td>
                        <td><input type="text" name="subject"></td>
                    </tr>
                    <tr>
                        <td>내용</td>
                        <td><textarea name="content" id="" cols="30" rows="10"></textarea></td>
                    </tr>
                </table>
                <input type="submit" value="글쓰기" style="float: right;">
            </form>
        </div>
    </div>
</div>
    <!-- Navbar End -->
    
    
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <title>COSVIEW</title>

    <%@include file="/WEB-INF/view/layout/config.jsp"%>
    <link rel="stylesheet" href="/WEB-INF/view/CSS/main.css">

</head>
<%@include file="/WEB-INF/view/layout/header.jsp"%>


<div style="position: sticky">
    <video autoplay loop muted id="bgvid">
        <source src="/resources/image/민수.mp4" type="video/mp4">
    </video>

    <h1 class="animate animate_1" style="z-index: 555;">화장품을 리뷰하다</h1>
    <div class="trigger trigger_1"></div>
    <h1 class="animate animate_2">
      
        모두의 리뷰를 공유하는 공간<br>
        리뷰를 일일이 찾아보는 수고로움은 이제그만
    </h1>
      <div class="trigger trigger_2"></div>
    <h1 class="animate animate_3">
       <p>COSVIEW에서 모든 리뷰를 한번에!</p>
       <p>COSVIEW를 통해 나에게 꼭 맞는</p>
       <p>화장품을 선택할 수 있도록</p>
       <p>당신과 함께 할게요.</p>
    </h1>
    <div class="trigger trigger_3"></div>
</div>
<main class="container" id="mains">

    <h1 class="mt-5">COSVIEW는</h1>
    <p>성별에 맞는 화장품 맞춤 랭킹 !!</p>
    <p>당신이 원하는 제품의 리뷰룰 한눈에 보여드립니다.</p>

    <div class="text-center talk">
        <img src="/resources/image/maintalk.png" width="80%">
    </div>
    <hr>
    <!-- 화장품 사진과 글 -->
    <div id="product-slick">
        <ul class="multiple-items">
            <li><img src="/resources/image/밤.png"></li>
            <li><img src="/resources/image/크림.png"></li>
            <li><img src="/resources/image/선크림.png"></li>
            <li><img src="/resources/image/크림.png"></li>
        </ul>
        <div>
            <h1>COSVIEW에서 만나는</h1>
            <h1>특별한 뷰티 컨텐츠</h1>
            <p>COSVIEW에서만 볼 수 있는 뷰티정보와 꿀팁을</p>
            <p>COSVIEW 이야기에서 만나보세요</p>
        </div>
    </div>
    <hr>
    <div id="vision-space">
        <div id="vision-text">
            <h5>VISION</h5> 
            <p>팀원 모두가 소통하며 <br>
                성장하는 자율적 성장 플랫폼</p>
        </div>
        <img src="/resources/image/lologo.png" alt="" height="300px">
    </div>
    <div id="value-space">
        <h5>Our values</h5>
        <h1>모두를 위한 성장</h1>
        <p>스스로의 자유로운 성장을 돕고,</p>
        <p>이 성장이 모두의 성장으로 이어지며,</p>
        <p>궁극적으로 고객에게 이로운 영향을 미치는것.</p>
        <p>이것이 바로 우리의 성장입니다.</p>
    </div>

    <div class="tmp mt-5">
        <ul class="one-time">
            <li><img src="/resources/image/회사이미지.jpg" alt="" width="100%"></li>
            <li><img src="/resources/image/회사이미지2.jpg" alt="" width="100%"></li>
            <li><img src="/resources/image/회사이미지3.jpg" alt="" width="100%"></li>
            <li><img src="/resources/image/회사이미지4.jpg" alt="" width="100%"></li>
        </ul>
    </div>
</main>

<%@include file="/WEB-INF/view/layout/footer.jsp"%>

</body>
</html>
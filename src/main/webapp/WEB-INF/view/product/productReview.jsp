<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <title>COSVIEW</title>

    <%@include file="/WEB-INF/view/layout/config.jsp" %>

</head>
<%@include file="/WEB-INF/view/layout/header.jsp"%>

<!-- 수정중!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

<style>
    .productInfo {
        display: flex;
    }

    .productPicture img {
        width: 250px;
        height: 250px;
    }

    .productPicture ul {
        list-style: none;
        padding: 0px;
    }

    .swiper {
        width: 25%;
        margin-top: 50px;
        margin-left: 28%;
    }

    .swiper-pagination > span {
        background-color: lightgray;
        height: 10px;
        width: 10px;
    }

    .swiper-button-prev {
        color: gray;
    }

    .swiper-button-next {
        color: gray;
    }

    .productContents {
        position: relative;
        left: 55%;
        top: -39%;
    }
</style>

<!-- 여기 코드 작성 해주세요 !!! -->
<main class="container">
    <div class="sub-title">
        <h1 class="sub-name">제품 리뷰</h1>
    </div>


    <div class="productInfo">
        <div class="productPicture">
            <div id="container" class="swiper">
                <ul id="banner" class="swiper-wrapper">
                    <li class="swiper-slide"><a href='#'><img src="/resources/image/크림.png" alt=""></a></li>
                    <li class="swiper-slide"><a href='#'><img src="/resources/image/선크림.png" alt=""></a></li>
                    <li class="swiper-slide"><a href='#'><img src="/resources/image/밤.png" alt=""></a></li>
                    <li class="swiper-slide"><a href='#'><img src="/resources/image/크림.png" alt=""></a></li>
                </ul>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
            <div class="productContents">
                <div>
                    <h3>레드블레미쉬 크림</h3>
                    <p>닥터지</p>
                </div>
                <div>
                    <h5>평점</h5>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                </div>
                <div>
                    <h5>용량</h5>
                    <h6>100ml</h6>
                </div>
                <div>
                    <h5>용량</h5>
                    <h6>25000원</h6>
                </div>
                <div><a href="ReviewWrite.jsp">
                    <button>리뷰작성하기</button>
                </a></div>


            </div>
        </div>

        <!-- 수정필요 -->
        <!-- <div class="reviewTopic">
          <h4>리뷰 토픽</h4>
          <hr>
          <i class="fa-solid fa-face-smile"></i>
          <h5>좋았던 점</h5>
          <h4>가벼워요</h4>
          <h4>3,711</h4>
          <h4>진정이 잘 돼요</h4>
          <h4>3,511</h4>
          <h4>산뜻해요</h4>
          <h4>1,368</h4>
          <i class="fa-solid fa-face-frown"></i>
          <h4>아쉬운 점</h4>
          <h4>건조해져요</h4>
          <h4>3,007</h4>
          <h4>보습이 안 돼요</h4>
          <h4>1,056</h4>
          <h4>진정이 안 돼요</h4>
          <h4>739</h4>
          <hr>
        </div>

        <div class="reviewContents">

        </div> -->
</main>

<script>
    const swiper = new Swiper('.swiper', {
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.swiper-pagination',
            type: 'bullets',
        },
        effect: 'fade',
        speed: 1000,
    });
</script>


<%@include file="/WEB-INF/view/layout/footer.jsp"%>
</body>
</html>

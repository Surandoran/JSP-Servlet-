<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <title>COSVIEW</title>

    <%@include file="/WEB-INF/view/layout/config.jsp"%>

</head>
<%@include file="/WEB-INF/view/layout/header.jsp"%>

<!-- 여기 코드 작성 해주세요 !!! -->
      <main class="container">
        <div class="sub-title">
          <h1>마이페이지</h1>
        </div>

        <div id="main-container">

          <div class="profile">
            <div class="profile-picture">
              <a href="#"><img src="/resources/image/프로필사진.jpg" class=profile-picture alt="profile picture"></a>
            </div>
            
            <div class="information" style="width:75%; height:100%; margin-left:15px;">
                <div class="name" style="display:block; font-size:26px;">이름</div>
                <div>
                  <div class="age-gender">나이</div>
                  <div class="age-gender">성별</div>
                </div>
              </div>
              
              <div>
                <a href="Inform_change.jsp" class="setting">
                  <img src="/resources/image/정보수정버튼.png" alt="information changebutton"></a>
              </div>
          </div>
          <hr>

          <div class="sub-menu">
            
            <div class="my-review">
              <div OnClick="location.href='#'" class="review-count">
                1
              </div>
              <div class="my-review-label">
                내 리뷰
              </div>
            </div>

            <div class="qna">
              <div OnClick="location.href='../ServiceCenter/PersonalQuestion.html'" class="qna-count">
                1
              </div>
              <div class="qna-label" >
                문의 내역
              </div>
            </div>
          </div>
          <hr>

          <div OnClick="location.href='../Product/ProductMain.html'" id="product">
            <div id="product-suggestion">
              <h6>닥터지</h6><h3>레드블레미쉬 크림</h3>
            </div>
            <a href="/resources/Product/ProductMain.jsp">
              <img src="/resources/image/선크림.png" style="width:100px; height:100px;" alt="suncream">
            </a>
          </div>
          <hr>

          <div class="review">
            (리뷰 들어갈 공간)
          <div id="banner-slider" class="swiper">
              <ul  class="swiper-wrapper">
                  <li class="swiper-slide"><div class="review-div">1</div></li>
                  <li class="swiper-slide"><div class="review-div">2</div></li>
                  <li class="swiper-slide"><div class="review-div">3</div></li>
                  <li class="swiper-slide"><div class="review-div">4</div></li> 
              </ul>
                  <div class="swiper-pagination"></div>

                  <div class="swiper-button-prev" style="color:lightgray;"></div>
                  <div class="swiper-button-next" style="color:lightgray;"></div>
          </div>
          <script>
              $(document).ready(function(){
                  const swiper = new Swiper('.swiper', {
                      direction: 'horizontal',
                      loop: true,
                      pagination: {
                          el: '.swiper-pagination',
                          type:"fraction",
                          clickable : 'true',
                      },
                      navigation: {
                          nextEl: '.swiper-button-next',
                          prevEl: '.swiper-button-prev',
                      },
                      scrollbar: {
                          el: '.swiper-scrollbar',
                          draggable: true,
                      },
                      speed : 800,
                  });
              })
          </script>
          </div>
          <hr>
        </div>
      
    </main>

<%@include file="/WEB-INF/view/layout/footer.jsp"%>
</body>
</html>
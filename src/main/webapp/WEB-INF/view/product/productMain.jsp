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
                <h1 class="sub-name">제품</h1>
                <button id="cate-btn" onclick="openCate()">카테고리</button>
            </div>

            <div id="category">
              <ul id="cate-submenu">
                <li id="menu"><b>스킨케어</b>
                  <ul>
                    <li>스킨 토너</li>
                    <li>에센스/앰플</li>
                    <li>로션/에멀젼</li>
                    <a href="product.jsp"><li>크림</li></a>
                    <li>미스트/오일</li>
                  </ul>
                </li>
                <li><b>클렌징</b>
                  <ul>
                    <li>클렌징폼/젤</li>
                    <li>클렌징 워터</li>
                    <li>클렌징 오일</li>
                    <li>클렌징 크림</li>
                    <li>클렌징 티슈</li>
                    <li>리무버</li>
                    <li>필링/패드</li>
                  </ul>
                </li>
                <li><b>바디케어</b>
                  <ul>
                    <li>워시/스크럽</li>
                    <li>로션/오일</li>
                    <li>제모</li>
                    <li>핸드케어</li>
                    <li>풋케어</li>
                    <li>바디미스트</li>
                    <li>데오드란트</li>
                    <li>바디기타</li>
                  </ul>
                </li>
                <li><b>향수</b>
                  <ul>
                    <li>여성향수</li>
                    <li>남성향수</li>
                    <li>리빙퍼퓸</li>
                  </ul>
                </li>
                <li><b>마스크팩</b>
                  <ul>
                    <li>시트팩</li>
                    <li>워시오프 팩</li>
                    <li>필오프 팩</li>
                    <li>코팩/패치</li>
                  </ul>
                </li>
                <li><b>선케어</b>
                  <ul>
                    <li>선크림</li>
                    <li>선스프레이</li>
                    <li>선스틱</li>
                    <li>선쿠션</li>
                  </ul>
                </li>
                <li><b>헤어케어</b>
                  <ul>
                    <li>샴푸/린스</li>
                    <li>트리트먼트</li>
                    <li>에센스</li>
                    <li>오일</li>
                    <li>스타일링</li>
                  </ul>
                </li>
                <li><b>메이크업</b>
                  <ul>
                    <li>립</li>
                    <li>아이</li>
                    <li>베이스</li>
                  </ul>
                </li>
              </ul>
            </div>


            <div class="search-main">
              <input id="pro-search" type="text" placeholder="찾으시는 제품명을 입력해주세요">
              <button id=""><i class="fa-solid fa-magnifying-glass"></i></button>
            </div>

            <div class="popular">
              <div>
                <h2>남성 인기 제품</h2>
                <a href="ProductReview.jsp"><img src="/resources/image/선크림.png" alt="" width="400px" height="350px"></a>

              </div>
              <div>
                <h2>여성 인기 제품</h2>
                <a href="ProductReview.jsp"><img src="/resources/image/크림.png" alt="" width="400px" height="350px"></a>

              </div>
            </div>


            <div class="best">
              <div>
                <h2>베스트 포토 리뷰</h2>
              </div>
              <div class="best-review">
                <div>
                  <img src="/resources/image/밤.png" alt="" width="200px"height="200px">
                  <p>보근짱</p>
                  <p class="review-date">2022-05-19</pc>
                  
                </div>

                <div>
                  <img src="/resources/image/밤.png" alt="" width="200px"height="200px">
                  <p>보근짱</p>
                  <p class="review-date">2022-05-19</pc>
                </div>

                <div>
                  <img src="/resources/image/밤.png" alt="" width="200px"height="200px">
                  <p>보근짱</p>
                  <p class="review-date">2022-05-19</pc>
                </div>

                <div>
                  <img src="/resources/image/밤.png" alt="" width="200px"height="200px">
                  <p>보근짱</p>
                  <p class="review-date">2022-05-19</pc>
                </div>
              </div>
            </div>


      </main>

<%@include file="/WEB-INF/view/layout/footer.jsp"%>

</body>
</html>

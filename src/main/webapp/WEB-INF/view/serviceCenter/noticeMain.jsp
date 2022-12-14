<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <title>COSVIEW</title>

    <%@include file="/WEB-INF/view/layout/config.jsp" %>

</head>
<%@include file="/WEB-INF/view/layout/header.jsp"%>
<!-- 여기 코드 작성 해주세요 !!! -->
<main class="container">
    <div id="FAQHeader">
        <h1>고객센터</h1>
        <hr>
    </div>
    <div id="FAQSearchbox">
        <p id="FAQMain">공지사항</p>
    </div>
    <div>
        <span>총 6건</span>
        <span style="float: right;"><input type="search" class="FAQSearch" placeholder="내용을 입력하세요.">
          <i class="fa-solid fa-magnifying-glass searchicon"
             style="position: relative; right: 30px; top:3px"></i></span>
    </div>
    <hr>
    <div class="FAQ-level1">
        <div>
            <div class="NoticeBox">
                <span style="width: 60px; text-align: center;">번호</span>
                <span style="text-align: center; width:800px">제목</span>
                <span style="width: 60px; margin-left: 50px;">작성자</span>
                <span style="width: 80px; margin-left: 50px;">작성날짜</span>
                <span style="width: 125px;margin-left: 70px">조회수</span>
            </div>
            <div class="NoticeSmallBox">
                <span class="NoticeNum">1</span>
                <span class="NoticeTitle"><a href="#">사이트 개설 안내</a></span>
                <span class="NoticeWriter">신보근</span>
                <span class="NoticeWriteDay">2022-02-26</span>
                <span>9991</span>
            </div>
            <div class="NoticeSmallBox">
                <span class="NoticeNum">2</span>
                <span class="NoticeTitle"><a href="#">사이트 이용 방법</a></span>
                <span class="NoticeWriter">신보근</span>
                <span class="NoticeWriteDay">2021-06-27</span>
                <span>1254</span>
            </div>
            <div class="NoticeSmallBox">
                <span class="NoticeNum">3</span>
                <span class="NoticeTitle"><a href="#">리뷰 작성 방법</a></span>
                <span class="NoticeWriter">신보근</span>
                <span class="NoticeWriteDay">2021-05-26</span>
                <span>1251</span>
            </div>
            <div class="NoticeSmallBox">
                <span class="NoticeNum">4</span>
                <span class="NoticeTitle"><a href="#">사이트 접속 오류 안내</a></span>
                <span class="NoticeWriter">신보근</span>
                <span class="NoticeWriteDay">2020-04-12</span>
                <span>12135</span>
            </div>
            <div class="NoticeSmallBox">
                <span class="NoticeNum">5</span>
                <span class="NoticeTitle"><a href="#">회원가입 오류 안내</a></span>
                <span class="NoticeWriter">신보근</span>
                <span class="NoticeWriteDay">2020-02-12</span>
                <span>125</span>
            </div>
            <div class="NoticeSmallBox">
                <span class="NoticeNum">6</span>
                <span class="NoticeTitle"><a href="#">Cosview 정식 서비스를 시작하였습니다.</a></span>
                <span class="NoticeWriter">신보근</span>
                <span class="NoticeWriteDay">2020-01-03</span>
                <span>11515</span>
            </div>
        </div>
        <div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups"
             style="justify-content: center; margin-top:3%">
            <div class="btn-group me-2" role="group" aria-label="First group">
                <button type="button" class="btn btn-outline-secondary">&lt;</button>
                <button type="button" class="btn btn-outline-secondary">1</button>
                <button type="button" class="btn btn-outline-secondary">2</button>
                <button type="button" class="btn btn-outline-secondary">3</button>
                <button type="button" class="btn btn-outline-secondary">4</button>
                <button type="button" class="btn btn-outline-secondary">5</button>
                <button type="button" class="btn btn-outline-secondary">&gt;</button>
            </div>
        </div>
    </div>
</main>

<%@include file="/WEB-INF/view/layout/footer.jsp"%>

</body>
</html>
    
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
        <p id="FAQMain">FAQ</p>
    </div>
    <div>
        <span>총 1512건</span>
        <span style="float: right;"><input type="search" class="FAQSearch" placeholder="내용을 입력하세요.">
          <i class="fa-solid fa-magnifying-glass searchicon"
             style="position: relative; right: 30px; top:3px"></i></span>
    </div>
    <hr>
    <ul class="FAQ-level1">
        <li>
            <input type="checkbox" style="display: none;" id="check">
            <a style="margin-right: 45px;">회원가입</a><label for="check" style="width:90%;">회원가입은 어떻게 하나요?</label>
            <ul class="FAQ-level2">
                <li><a href="#" class="FAQList">[로그인>회원가입]을 선택하여 회원 가입 절차에 따라 진행해주시면 됩니다.</a></li>
            </ul>
        </li>
        <li>
            <input type="checkbox" style="display: none;" id="check2">
            <a style="margin-right: 45px;">회원탈퇴</a><label for="check2" style="width:90%;">회원탈퇴는 어떻게 하나요?</label>
            <ul class="FAQ-level2">
                <li><a href="#" class="FAQList">마이페이지 -> 내 정보 수정에 회원탈퇴 버튼이 있습니다.</a></li>
            </ul>
        </li>
        <li>
            <input type="checkbox" style="display: none;" id="check3">
            <a style="margin-right: 45px;">리뷰작성</a><label for="check3" style="width:90%;">리뷰 작성은 어떻게 하나요?</label>
            <ul class="FAQ-level2">
                <li><a href="#" class="FAQList">제품 설명 하단부분에 보시면 리뷰작성버튼이 있습니다.</a></li>
            </ul>
        </li>
        <li>
            <input type="checkbox" style="display: none;" id="check4">
            <a style="margin-right: 45px;">리뷰수정</a><label for="check4" style="width:90%;">리뷰 수정은 어떻게 하나요?</label>

            <ul class="FAQ-level2">
                <li><a href="#" class="FAQList">마이페이지에 내가 작성한 리뷰에 리뷰수정이 버튼이 있습니다.</a></li>
            </ul>
        </li>
    </ul>
</main>

<%@include file="/WEB-INF/view/layout/footer.jsp"%>
</body>
</html>
    
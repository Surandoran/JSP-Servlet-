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
            <h1>가입완료</h1>
        </div>
        <table class="table1">
            <tr>
                <td><img src="/resources/image/logo2.png" alt="사진을 불러올 수 없습니다" style="width: 400px; height: 150px;"></td>
            </tr>
            <tr>
                <td><img src="/resources/image/check.png" alt="사진을 불러올 수 없습니다"></td>
            </tr>
            <tr>
                <td class="td1">환영합니다.</td>
            </tr>
            <tr>
                <td>회원가입이 완료되었습니다.</td>
            </tr>
            <tr>
                <td>로그인후 코스뷰의 다양한 서비스를 이용해보세요</td>
            </tr>
            <tr>
                <td class="td4"></td>
            </tr>
            <tr>
                <td><input class="btn btn-outline-success" id="inp1" value="로그인창" onclick="location.href='/login.do'"></td>
            </tr>
        </table>
        
      </main>

<%@include file="/WEB-INF/view/layout/footer.jsp"%>
      
</body>
</html>

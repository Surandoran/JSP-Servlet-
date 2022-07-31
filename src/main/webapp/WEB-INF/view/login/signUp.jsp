<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <title>COSVIEW</title>

    <%@include file="/WEB-INF/view/layout/config.jsp" %>

</head>
<%@include file="/WEB-INF/view/layout/header.jsp" %>

<main class="container mb-4">
    <H2 class="text-center mt-5">회원 정보 입력</H2>
    <div class="mt-5 sign-view">
        <form class="singup-menu" action="/MemberJoin.do" method="post" name="joinform" onsubmit="return check()">
            <label>이름</label><br>
            <input class="text-input form-control" type="text" name="name" placeholder=" 이름을 입력하세요."><br>

            <label>아이디</label>
            <button class="menu-btn me-1" type="button" onclick="confirmId()">중복확인</button>

            <br>

            <input class="text-input form-control" type="text" name="id" placeholder=" 아이디를 입력하세요."><br>
            <label>비밀번호</label><br>
            <input class="text-input form-control" type="password" name="pwd" placeholder=" 비밀번호를 입력하세요."><br>
            <label>비밀번호 재확인</label><br>
            <input class="text-input form-control" type="password" name="rpwd" placeholder=" 비밀번호를 입력하세요."><br>
            <label>닉네임</label>
            <button type="button" class="menu-btn me-1" onclick="confirmNickName()">중복확인</button>
            <br>
            <input class="text-input form-control" type="text" name="nickname" placeholder=" 닉네임을 입력하세요."><br>
            <label>성별(선택)</label><br>
            <input class="form-check-input" type="checkbox" name="sex" id="gender_man" value="M" checked>남 &nbsp;
            <input class="form-check-input" type="checkbox" name="sex" id="gender_woman" value="W">여 <br>
            <label>E-mail</label><br>
            <div class="form-floating">
                <input type="email" name="email" class="form-control text-input" id="floatingInput"
                       placeholder="name@example.com">
                <label for="floatingInput">Email address</label>
            </div>
            <br>
            <label class="mb-2">주소</label>
            <input type="text" name="addr" id="member_post" class="form-control w-25">
            <button class="add-btn mt-1 mb-1" type="button" onclick="findAddr()">우편번호</button>
            <br>
            <input class="text-input form-control" type="text" id="member_roadaddr" name="addr" placeholder=" 기본주소"><br>
            <input class="text-input form-control" type="text" id="member_addr" name="addr" placeholder=" 상세주소">
            <div class="text-center mt-3">
                <input type=submit id="sign-btn" value="회원가입">
                <input type="hidden" name="flag" value="true">
            </div>
        </form>
    </div>


</main>

<%@include file="/WEB-INF/view/layout/footer.jsp" %>


<script language="JavaScript">
    <!-- 아이디중복체크 -->
    function check() {
        if (!document.joinform.id.value) {
            alert("ID를 입력하세요");
            return false;
        }
        if (!document.joinform.pwd.value) {
            alert("Password를 입력하세요")
            return false;
        }
        if (document.joinform.rpwd.value != document.joinform.pwd.value) {
            alert("Password가 서로 다릅니다.")
            return false;
        }
    }

    function confirmId() {
        if (document.joinform.id.value == "") {
            alert("ID를 입력하세요")
            return;
        }
        url = "confirmId.do?id=" + document.joinform.id.value;
        open(url, "confirmId",
            "toolbar = no,location = no, status = no, menubar = no, scrollbars = no, resizable = no, width = 300, height = 200");
    }
    function confirmNickName() {
        if (document.joinform.nickname.value == "") {
            alert("닉네임을 입력하세요")
            return;
        }
        url = "confirmNickName.do?nickname=" + document.joinform.nickname.value;
        open(url, "confirmNickname",
            "toolbar = no,location = no, status = no, menubar = no, scrollbars = no, resizable = no, width = 300, height = 200");
    }
    function getGender() {

        const genderNodeList
            = document.getElementsByName('sex');
    }


    function findAddr() {
        new daum.Postcode({
            oncomplete: function (data) {

                console.log(data);

                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var jibunAddr = data.jibunAddress; // 지번 주소 변수
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('member_post').value = data.zonecode;
                if (roadAddr !== '') {
                    document.getElementById("member_roadaddr").value = roadAddr;
                } else if (jibunAddr !== '') {
                    document.getElementById("member_addr").value = jibunAddr;
                }
            }
        }).open();
    }
</script>
</body>
</html>

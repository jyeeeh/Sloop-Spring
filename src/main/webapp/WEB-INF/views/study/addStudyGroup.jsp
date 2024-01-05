<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>도서 등록</title>
    <script>
        $('document').ready(function() {
            var grade0 = ["학교 선택","초등학교","중학교","고등학교"];
            var grade1 = ["1학년","2학년","3학년","4학년","5학년","6학년"];
            var grade2 = ["1학년","2학년","3학년","4학년","5학년","6학년"];
            var grade3 = ["1학년","2학년","3학년"];

            // 학년 선택 박스 초기화
            $("select[name^=sido]").each(function() {
                $selsido = $(this);
                $.each(eval(area0), function() {
                    $selsido.append("<option value='"+this+"'>"+this+"</option>");
                });
                $selsido.next().append("<option value=''>구/군 선택</option>");
            });



            // 시/도 선택시 구/군 설정

            $("select[name^=sido]").change(function() {
                var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
                var $gugun = $(this).next(); // 선택영역 군구 객체
                $("option",$gugun).remove(); // 구군 초기화

                if(area == "area0")
                    $gugun.append("<option value=''>구/군 선택</option>");
                else {
                    $.each(eval(area), function() {
                        $gugun.append("<option value='"+this+"'>"+this+"</option>");
                    });
                }
            });


        })
    </script>
</head>
<body>

    <h1 class="display-3">스터디 개설</h1>


    <div class="container">
        <form:form modelAttribute="StudyGroupDTO" class="form-horizontal" method="post" action="/study/add">
            <fieldset>
                <legend>${addTitle}</legend> <!-- 모델 속성의 이름 addTitle 출력 -->
                <div class="form-group row">
                    <label class="col-sm-2 control-label">스터디 이름</label>
                    <div class="col-sm-3">
                        <form:input path="studyGroupName" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 control-label">스터디 방식</label>
                    <div class="col-sm-3">
                        <form:radiobutton path="studyGroupMethod" value="1" /> 온라인
                        <form:radiobutton path="studyGroupMethod" value="2" /> 오프라인
                        <form:radiobutton path="studyGroupMethod" value="3" /> 온/오프라인
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 control-label">학년</label>
                    <div class="col-sm-3">
                        <form:select path="studyGroupGradeCode">
                            <form:option value="100">초등학교</form:option>
                            <form:option value="200">중학교</form:option>
                            <form:option value="300">고등학교</form:option>
                        </form:select>

                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 control-label">과목</label>
                    <div class="col-sm-3">
                        <form:input path="studyGroupSubjectCode" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 control-label">지역</label>
                    <div class="col-sm-5">
                        <form:textarea path="studyGroupRegionCode" cols="50" rows="2" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 control-label">모집인원</label>
                    <div class="col-sm-3">
                        <form:input path="studyGroupNum" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 control-label">모집마감일</label>
                    <div class="col-sm-3">
                        <form:input path="studyGroupDuedate" type="date" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 control-label">스터디 시작일</label>
                    <div class="col-sm-3">
                        <form:input path="studyGroupStartdate" type="date" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 control-label">소개글</label>
                    <div class="col-sm-3">
                        <form:input path="studyGroupIntrotxt" class="form-control"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 control-label">스터디 이미지</label>
                    <div class="col-sm-3">
                        <form:input path="studyGroupOImg" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-offset-2 col-sm-10" >
                        <input type="submit" class="btn btn-primary" value ="등록"/>
                    </div>
                </div>
            </fieldset>
        </form:form>
        <hr>

    </div>
</body>
</html>
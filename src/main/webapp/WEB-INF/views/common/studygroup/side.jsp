<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<link href="/resources/css/style_studygroup.css" rel="stylesheet">
<style>
    .no-underline{
        text-decoration:none;
    }
</style>

<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
    <div class="position-sticky pt-3">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-title" aria-current="page" href="/study/${studyGroup.studyGroupCode}">
                    <span data-feather="home"></span>
                    ${studyGroup.studyGroupName}
                </a>
                <div class="sidebar-division-line"></div>
            </li>
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/study/${studyGroup.studyGroupCode}/notice/${groupBoardIdxs[0].boardId}">
                    <span data-feather="home"></span>
                    ${groupBoardIdxs[0].categoryName}
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/study/${studyGroup.studyGroupCode}/assign/${groupBoardIdxs[1].boardIdx}">
                    <span data-feather="file"></span>
                    ${groupBoardIdxs[1].categoryName}
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/study/${studyGroup.studyGroupCode}/postforum/${groupBoardIdxs[2].boardIdx}">
                    <span data-feather="shopping-cart"></span>
                    ${groupBoardIdxs[2].categoryName}
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/study/${studyGroup.studyGroupCode}/daily/${groupBoardIdxs[3].boardIdx}">
                    <span data-feather="users"></span>
                    ${groupBoardIdxs[3].categoryName}
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/study/${studyGroup.studyGroupCode}/manage/info">
                    <span data-feather="bar-chart-2"></span>
                    스터디 관리
                </a>
            </li>
        </ul>


    </div>
</nav>
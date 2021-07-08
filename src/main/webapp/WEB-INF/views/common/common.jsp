<%@ page session="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- c:set 이거 쓰려면 명시해줘야한다. jstl 라이브러리 다운받아서  WEB-INF/lib 에 넣어줘야함. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!-- contextpath 가져와서 변수 정의 하고.. -->
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>  
 
<!-- script 정의 시 -->
<%-- //<script src="${contextPath}/res/js/date/jquery-1.10.2.js"></script> --%>

<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- JqGrid CSS & SCRIPT -->
<%-- <link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/resources/jqGrid/css/ui.jqgrid.css"> --%>
<%-- <script type="text/javascript" src="${contextPath}/resources/jqGrid/js/jquery-1.11.0.min.js"></script> --%>
<%-- <script type="text/javascript" src="${contextPath}/resources/jqGrid/js/jquery.jqGrid.min.js"></script> --%>
<%-- <script src="${contextPath}/resources/jqGrid/js/i18n/grid.locale-en.js"></script> --%>
     
<!-- Jquery-ui CSS & SCRIPT -->
<%-- <link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/resources/jquery-ui/jquery-ui.css"> --%>
<%-- <link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/resources/jquery-ui/jquery-ui.js"> --%>


<!-- bulma css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    
<!-- Toast UI (Grid) -> tui.grid (토스트 그리드) -->    
<link rel="stylesheet" href="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.css" />
<link rel="stylesheet" href="https://uicdn.toast.com/grid/latest/tui-grid.css" />
    
<!--     <script type="text/javascript" src="https://uicdn.toast.com/tui.code-snippet/v1.5.0/tui-code-snippet.js"></script> -->
<script type="text/javascript" src="https://uicdn.toast.com/tui.pagination/v3.4.0/tui-pagination.js"></script>
<!-- 	<script src="https://uicdn.toast.com/tui-grid/latest/tui-grid.js"></script> -->
<script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script>    
    
<!-- 	<script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script> -->
<!-- 	<script type="text/javascript" src="https://uicdn.toast.com/tui.code-snippet/v1.5.0/tui-code-snippet.js"></script> -->
<!-- 	<script type="text/javascript" src="https://uicdn.toast.com/tui.pagination/v3.4.0/tui-pagination.js"></script> -->

<!-- 공통 js -->
<script type="text/javascript" src="${contextPath}/resources/js/common.js"></script> 

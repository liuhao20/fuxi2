
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>房屋信息查询</h1>
<h2><a href="<%=request.getContextPath()%>/get3">分布源</a></h2>
<table>
    <thead>
    <tr>
        <th>序号</th>
        <th>描述</th>
        <th>户型</th>
        <th>租金</th>
        <th>发布时间</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="item" varStatus="i">
        <c:if test="${i.index % 2 == 0}">
            <tr style="background-color: red;">
                <td>${item.houseId}</td>
                <td>${item.houseDesc}</td>
                <td><a href="<%=request.getContextPath()%>/byid?typeId=${item.typeId}">${item.typeName}</a></td>
                <td>${item.monthlyRent}</td>
                <td>${item.publishDate}/></td>
                <%--<td><fmt:formatDate value="${item.publishDate}" pattern="yyyy-MM-dd"/></td>--%>
            </tr>
        </c:if>
        <c:if test="${i.index % 2 == 1}">
            <tr style="background-color: green;">
                <td>${item.houseId}</td>
                <td>${item.houseDesc}</td>
                <td><a href="<%=request.getContextPath()%>/byid?typeId=${item.typeId}">${item.typeName}</a></td>
                <td>${item.monthlyRent}</td>
                <td>${item.publishDate}/></td>
            </tr>
        </c:if>
    </c:forEach>
    </tbody>
    <tfoot>
    <tr>
        <!-- http://localhost:8080/vtm/index -->
        <td><a href="<%=request.getContextPath()%>/get?pageCurrent=1">首页</a></td>
        <td><a id="ye" onclick="yes()" href="<%=request.getContextPath()%>/get?pageCurrent=${pageCurrent - 1}" >上一页</a></td>
        <td><a id="ye2" onclick="ye2()" href="<%=request.getContextPath()%>/get?pageCurrent=${pageCurrent + 1}">下一页</a></td>
        <td><a href="<%=request.getContextPath()%>/get?pageCurrent=${total}">末页</a></td>
        <td>第${pageCurrent}页/共${total}页</td>
    </tr>
    </tfoot>
</table>
<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    function ye2() {
        alert(1)

            alert("没有上一页了")
            this.${pageCurrent}=1;

    }
</script>

</body>
</html>

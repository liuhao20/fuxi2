<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布房源</title>
</head>
<body>
<h2><a href="<%=request.getContextPath()%>/get">返回首页</a></h2>
<form id="myform" action="<%=request.getContextPath()%>/insert" method="post">
    房屋描述：<input type="text" id="desc" name="houseDesc"><br>
    <label>户型</label>
    <select id="tId" name="typeId" >
        <option value="0">请选择</option>
        <c:forEach items="${list}" var="item">
            <option value="${item.typeId}">${item.typeName}</option>
        </c:forEach>
    </select>
    <br>
    租金：<input id="money" type="text" name="monthlyRent" >元/月<br>
    <tr>
        <td><input id="ok" onclick="yes()" type="submit" value="提交"/></td>
        <td><button type="reset">重置</button></td>
    </tr>
</form>
<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    alert(1)
    function checkDesc() {
        if($("#desc").val().length == 0){
            alert("房屋描述必填！")
            return false
        }else {
            return true
        }
    }

    function checkMoney() {
        if($("#money").val() < 0){
            alert("租金格式错误！")
            return false
        }else {
            return true
        }
    }

    function checkType() {
        if($("#tId").val()==0){
            alert("请选择户型！")
            return false
        }else{
            return true
        }
    }

    function yes(){
        alert(1)
        var flag=true;
        if(!checkDesc()){
            flag=false;
        }
        if(!checkType()){
            flag=false;
        }
        if(!checkMoney()){
            flag=false;
        }

        if(flag){
            alert("保存成功！")
        }else {
            alert("保存失败!")
        }
        return flag;
    }
    $("form").submit(function () {
        alert(1);
        if($("#desc").val().length == 0){
            alert(2);
            alert("房屋描述必填！");
            return false
        }else if($("#tId").val()==0){
            alert("请选择户型！");
            return false
        }else if($("#money").val() < 0){
            alert("租金格式错误！");
            return false
        }
        return true

        /*var flag=true;
        if(!checkDesc()){
            flag=false;
        }
        if(!checkType()){
            flag=false;
        }
        if(!checkMoney()){
            flag=false;
        }

        if(flag){
            alert("保存成功！")
        }else {
            alert("保存失败!")
        }

        return flag;*/
    })
</script>
</body>
</html>

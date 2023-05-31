<%@page language="java" contentType="text/html; UTF8"
        pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<h2><strong>SỬA NHÂN VIÊN</strong></h2>

<form action="${pageContext.request.contextPath}/suanhanvien" method="post">
    <div>
        <label>*Mã NV</label>
        <input type="text" name="id" value="${employee.id}">
    </div>
    <div>
        <label>*Họ tên</label>
        <input type="text" name="name" value="${employee.name}">
    </div>
    <div>
        <label>Nữ</label>
        <input type="checkbox" name="male" <c:if test="${!employee.male}">checked</c:if>>
    </div>
    <div>
        <label>*Ngày sinh</label>
        <input type="text" name="birthday" value= "<fmt:formatDate value="${employee.birthday}" pattern="dd/MM/yyyy"></fmt:formatDate>">
        <span>dd//mm/yyyy</span>
    </div>
    <div>
        <label>*Địa chỉ</label>
        <input type="text" name="address" value="${employee.address}">
    </div>
    <div>
        <label>Số ĐT</label>
        <input type="number" name="phone" value="${employee.phone}">
    </div>
    <div>
        <label>Phòng ban</label>
        <select name="department">
            <c:forEach items="${departments}" var="de">
                <option
                    <c:if test="${employee.department.equal(de)}"> selected </c:if>
                >${de}</option>
            </c:forEach>
        </select>
    </div>
    <div>
        <label>Chức vụ</label>
        <select name="title">
            <c:forEach items="${titles}" var="tit">
                <option
                        <c:if test="${employee.title.equal(tit)}"> selected </c:if>
                >${tit}</option>
            </c:forEach>
        </select>
    </div>
    <div>
        <label>Lương căn bản</label>
        <input type="text" name="wageRate" value="${employee.wageRate}">
    </div>

    <input type="submit" value="Lưu">

</form>
    <div>
        <form method="get" action="dsnhanvien">
            <input type="submit" value="Huỷ bỏ">
        </form>
    </div>


</html>
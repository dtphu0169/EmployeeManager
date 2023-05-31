<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <h2><strong>CHI TIẾT NHÂN VIÊN</strong></h2>

    <table>
        <tr>
            <td>Mã NV</td>
            <td>${employee.id}</td>
        </tr>
        <tr>
            <td>Họ tên</td>
            <td>${employee.name}</td>
        </tr>
        <tr>
            <td>Nữ</td>
            <td><input type="checkbox" disabled
            <c:if test="${!employee.male}"></c:if>
            ></td>
        </tr>
        <tr>
            <td>Ngày sinh</td>
            <td><fmt:formatDate value="${employee.birthday}"
                                pattern="dd/MM/yyyy"/></td>
        </tr>
        <tr>
            <td>Địa chỉ</td>
            <td>${employee.address}</td>
        </tr>
        <tr>
            <td>Số ĐT</td>
            <td>${employee.phone}</td>
        </tr>
        <tr>
            <td>Phòng ban</td>
            <td>${employee.department}</td>
        </tr>
        <tr>
            <td>Chức vụ</td>
            <td>${employee.title}</td>
        </tr>
        <tr>
            <td>Lương căn bản</td>
            <td>${employee.wageRate}</td>
        </tr>
    </table>

    <form method="get" action="${pageContext.request.contextPath}/dsnhanvien">
        <input type="submit" value="Danh sách nhân viên">
    </form>
    <form method="get" action="${pageContext.request.contextPath}/suanhanvien/${employee.id}">
        <input type="submit" value="Sửa">
    </form>
</html>
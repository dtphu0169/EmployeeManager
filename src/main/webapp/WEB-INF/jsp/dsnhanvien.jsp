<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
    <h2><strong>DANH SÁCH NHÂN VIÊN</strong></h2>

    <div>
        <h4><strong>Tổng số nhấn viên: ${employees.size()}</strong></h4>
    </div>

    <div>
        <form action="themnv" method="get">
            <input type="submit" value="Thêm nhân viên">
        </form>
        <button>xoá</button>
    </div>

    <table border="1">
        <thead>
            <tr>
                <th>Sửa</th>
                <th>Chọn</th>
                <th>Mã NV</th>
                <th>Họ tên</th>
                <th>Ngày sinh</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${employees}" var="e">
                <tr>
                    <td>
                        <form action="${pageContext.request.contextPath}/suanhanvien/${e.id}">
                            <input type="submit" value="Sửa">
                        </form>
                    </td>
                    <td><input type="checkbox"></td>
                    <td><a href="${pageContext.request.contextPath}/chitietnhanvien/${e.id}">${e.id}</a></td>
                    <td>${e.name}</td>
                    <td><fmt:formatDate value="${e.birthday}"
                                        pattern="dd/MM/yyyy"/>
                    </td>
                </tr>
            </c:forEach>

        </tbody>
    </table>
</html>
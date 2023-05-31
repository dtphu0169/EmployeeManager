<%@page language="java" contentType="text/html; UTF8"
 pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <style>
            .error {
                color: red;
                font-style: italic;
            }
        </style>
    </head>
    <h2><strong>Thêm nhân viên</strong></h2>

    <%--@elvariable id="employee" type="com.example.employeemanager.model.Employee"--%>
    <form:form action="themnv" method="post" modelAttribute="employee">
    <div>
            <form:label path="id">*Mã NV</form:label>
            <form:input path="id" />
            <form:errors path="id" cssClass="error" />
        </div>
        <div>
            <form:label path="name">*Họ tên</form:label>
            <form:input path="name" />
            <form:errors path="name" cssClass="error" />
        </div>
        <div>
            <form:label path="male">Nữ</form:label>
            <form:checkbox path="male" />
            <form:errors path="male" cssClass="error" />
        </div>
        <div>
            <form:label path="birthday">*Ngày sinh</form:label>
            <form:input path="birthday" />
            <form:errors path="birthday" cssClass="error" />
            <span>dd/mm/yyyy</span>
        </div>
        <div>
            <form:label path="address">*Địa chỉ</form:label>
            <form:input path="address" />
            <form:errors path="address" cssClass="error" />
        </div>
        <div>
            <form:label path="phone">Số ĐT</form:label>
            <form:input path="phone"/>
            <form:errors path="phone" cssClass="error" />
        </div>
        <div>
            <form:label path="department">Phòng ban</form:label>
            <form:select path="department">
                <c:forEach items="${departments}" var="de">
                    <form:option value="${de}">${de}</form:option>
                </c:forEach>
            </form:select>
            <form:errors path="department" cssClass="error" />
        </div>
        <div>
            <form:label path="title">Chức vụ</form:label>
            <form:select path="title">
                <c:forEach items="${titles}" var="tit">
                    <form:option value="${tit}">${tit}</form:option>
                </c:forEach>
            </form:select>
            <form:errors path="title" cssClass="error" />

        </div>
        <div>
            <form:label path="wageRate">Lương căn bản</form:label>
            <form:input path="wageRate"/>
            <form:errors path="wageRate" cssClass="error" />
        </div>

    <div>
        <div></div>
        <div>
            <form:button>Lưu</form:button>
        </div>

    </div>
    </form:form>

    <div>
        <form method="get" action="dsnhanvien">
            <input type="submit" value="Huỷ bỏ">
        </form>
    </div>


</html>
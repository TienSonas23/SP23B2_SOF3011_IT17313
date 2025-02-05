<%--
  Created by IntelliJ IDEA.
  User: tiennh
  Date: 3/14/23
  Time: 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="f" uri="jakarta.tags.functions" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/SP23B2_SOF3011_IT17313_war_exploded/css/bootstrap.min.css" />
</head>
<body>
<div class="col-8 offset-2 mt-5 table-responsive">
    <div class="row">
        <div class="col-6">
            <a href="#" class="btn btn-success">Thêm mới</a>
        </div>
    </div>
    <c:if test="${ f:length(danhSachKH) == 0 }">
        <h3 class="alert alert-warning">Không có dữ liệu</h3>
    </c:if>

    <c:if test="${ f:length(danhSachKH) != 0 }">
        <table class="table table-striped mt-3">
            <thead class="table-primary">
            <tr>
                <th>Mã</th>
                <th>Họ</th>
                <th>Đệm</th>
                <th>Tên</th>
                <th>Ngày sinh</th>
                <th>SDT</th>
                <th>Địa chỉ</th>
                <th>Thành phố</th>
                <th>Quốc gia</th>
                <th colspan="2">Thao tác</th>
            </tr>
            </thead>
            <tbody>
                <%--        <c:if test="${f:length(ds) != 0}">--%>
                <%--            <c:forEach items="${ ds }" var="kh">--%>
            <tr>
                <td>Văn</td>
                <td>Văn</td>
                <td>Văn</td>
                <td>AAA</td>
                <td>21/12/2001</td>
                <td>0912123321</td>
                <td>TVB</td>
                <td>HN</td>
                <td>VN</td>
                <td>
                    <a href="#" class="btn btn-primary">Cập nhật</a>
                </td>
                <td>
                    <a href="#" class="btn btn-danger">Xóa</a>
                </td>
            </tr>
                <%--            </c:forEach>--%>
                <%--        </c:if>--%>
            </tbody>
        </table>
    </c:if>

</div>

<script src="/SP23B2_SOF3011_IT17313_war_exploded/js/bootstrap.min.js"></script>
</body>
</html>
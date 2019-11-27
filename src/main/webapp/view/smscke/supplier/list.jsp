<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>供应商列表页面</title>
    <%@ include file="../../../common/jsp/header.jsp"%>
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <form id="searchForm" action="">
            <div class="col-sm-12">
                <!-- ------------按钮组 start------------ -->
                <div class="alert alert-success" role="alert">供应商列表</div>
                <div class="col-sm-8">
                    <div class="btn-group hidden-xs" role="group">
                        <button type="button" class="btn btn-success" data-toggle="modal" id="create" name="smscke/supplier/create1.jsp">
                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
                        </button>
                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="supplier/view.do">
                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
                        </button>
                        <button type="button" class="btn btn-success" data-toggle="modal" id="delete" name="supplier/View.do">
                            <i class="glyphicon glyphicon-book" aria-hidden="true"></i>查看
                        </button>
                    </div>
                </div>

                <!-- ------------按钮组 end------------ -->
                <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                <table class="table table-striped table-bordered table-hover table-condensed">
                    <thead>
                    <tr>
                        <th><input type="checkbox" id="checkall"/></th>
                        <th>供应商编码</th>
                        <th>供应商名称</th>
                        <th>供应商类型</th>
                        <th>联系人</th>
                        <th>联系电话</th>
                        <th>必须合同</th>
                        <th>是否启用门户</th>
                        <th>状态</th>
                        <th>账号管理</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="vs"></c:set>
                    <c:forEach var="e" items="${page.list}" varStatus="v">
                        <tr>
                            <td><input type="checkbox" name="ids" value="${e.supplierId }" ${e.supplierShop == 0?"disabled":""}/></td>
                            <td>${e.supplierCoding }</td>
                            <td>${e.supplierName }</td>
                            <td>${e.supplierType == 0?"外部供应商":"内部供应商" }</td>
                            <td>${e.supplierLinkman }</td>
                            <td>${e.supplierPhone }</td>
                            <td>${e.supplierContract == 0?"":"√" }</td>
                            <td>${e.supplierShop == 0?"":"√" }</td>

<%--                            <form id=${supplierCoding} action="${path }/supplier/view.do" method="post" class="form-horizontal" role="form">--%>
<%--                             <input id=${supplierId} name="supplierId" type="text" value="${e.supplierId}"/>--%>
<%--                            <td><input type="submit" value="编辑" class="btn btn-success" data-toggle="modal" id="update"  ${e.supplierShop == 1?"disabled":""}>--%>
<%--                            </td>--%>
<%--                            </form>--%>
                            <td><input type="checkbox" name="menustate" ${e.supplierUse==0?"checked":"" } disabled
                                       data-on-text="启用" data-off-text="禁用"
                                       data-on="primary" data-off="danger"/>
                            </td>
                            <td ><button type="button" class="btn btn-success" data-toggle="modal" id="usermanager" name="" ${e.supplierShop == 0?"disabled":""} >
                                <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>账号管理</button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="col-sm-8">
                    <div class="page">${page}</div>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
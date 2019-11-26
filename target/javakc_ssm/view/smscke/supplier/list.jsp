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
                        <%--							<button type="button" class="btn btn-success" data-toggle="modal" id="update" name="smsckeunit/view.do">--%>
                        <%--								<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改--%>
                        <%--							</button>--%>
                    </div>
                </div>

                <!-- ------------按钮组 end------------ -->
                <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                <table class="table table-striped table-bordered table-hover table-condensed">
                    <thead>
                    <tr>
                        <th>供应商编码</th>
                        <th>供应商名称</th>
                        <th>供应商类型</th>
                        <th>联系人</th>
                        <th>联系电话</th>
                        <th>必须合同</th>
                        <th>是否启用门户</th>
                        <th>操作</th>
                        <th>状态</th>
                        <th>账号管理</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="vs"></c:set>
                    <c:forEach var="e" items="${page.list}" varStatus="v">
                        <tr>
                            <td>${e.supplierCoding }</td>
                            <td>${e.supplierName }</td>
                            <td>${e.supplierType == 0?"外部供应商":"内部供应商" }</td>
                            <td>${e.supplierLinkman }</td>
                            <td>${e.supplierPhone }</td>
                            <td>${e.supplierContract == 0?"":"√" }</td>
                            <td>${e.supplierShop == 0?"":"√" }</td>
                            <td ><button type="button" class="btn btn-success" data-toggle="modal" id="update" name="supplier/supUpdate.do">
                                <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>编辑</button>
                            </td>
                            <td>${e.supplierUse == 0?"未启用":"已启用"}</td>
                            <td ><button type="button" class="btn btn-success" data-toggle="modal" id="usermanager" name="supplier/supUpdate.do">
                                <i class="glyphicon glyphicon-pencil" aria-hidden=${e.supplierUse == 0?"false":"true"}></i>账号管理</button>
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
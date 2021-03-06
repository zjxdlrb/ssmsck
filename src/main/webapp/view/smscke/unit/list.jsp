<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>计量单位列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
					<input type="hidden" id="unitId" value="" name="unitId">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-success" data-toggle="modal" id="create" name="smscke/unit/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
	                        </button>
<%--							<button type="button" class="btn btn-success" data-toggle="modal" id="update" name="smsckeunit/view.do">--%>
<%--								<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改--%>
<%--							</button>--%>
							<button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="smsckeunit/delete.do">
								<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
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
					                <th>单位代码</th>
					                <th>单位名称</th>
					                <th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" id="${e.unitId }" value="${e.unitId }"/>
											<input type="hidden"></td>
										<td>${e.unitCode }</td>
						                <td>${e.unitName }</td>
										<td >
<%--											<button type="button" class="btn btn-success" data-toggle="modal" id="update" name="smsckeunit/view.do">--%>
<%--                                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>编辑</button>--%>
											<a href="JavaScript:update('${e.unitId}');">编辑</a>
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
		<script language="JavaScript">
			function update(id) {

				$("#unitId").val(id)
				var url=root+"smsckeunit/view.do";
				$("#searchForm").attr('action', url).submit();

			}
		</script>
	</body>
</html>

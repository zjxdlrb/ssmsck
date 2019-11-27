<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>物资列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-success" data-toggle="modal" id="create" name="smscke/unit/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
	                        </button>
							<button type="button" class="btn btn-success" data-toggle="modal" id="update" name="smscke/smackeunit/view.do">
								<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
							</button>
		                 </div>
	                </div>
					<p></p>

	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
									<th>全选</th>
					                <th>物资编码</th>
					                <th>物资名称</th>
					                <th>吴子简称</th>
					                <th>规格</th>
					                <th>物资分类</th>
					                <th>基本单位</th>
					                <th>状态</th>
					                <th>修改时间</th>
					                <th>创建人</th>
					                <th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids"
												   value="${e.materialsId }"/></td>
										<td><a type="button" onclick="smsckeunit/view.do"/>${e.materialsCoding }</td>
										<td>${e.materialsName }</td>
										<td>${e.materialsShortened }</td>
										<td>${e.materialsSpecification }</td>
										<td>${e.materialsClassify }</td>
										<td>${e.materialsUnit }</td>
										<td>${e.materialsState }</td>
										<td>${e.updateDate }</td>
						                <td>${e.materialsCreator }</td>
										<td ><a type="button"
												onclick="smsckeunit/view.do"/>复制
											<a type="button"
											   onclick="smsckeunit/view.do"/>编辑
											<a type="button"
											   onclick="smsckeunit/view.do"/>停用
											<a type="button"
											   onclick="smsckeunit/view.do"/>单位换算
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
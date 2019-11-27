<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商物资关系展示列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
					<input type="hidden" id="relationId" value="" name="relationId">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">测试详细信息</div>

					<div class="col-sm-3">
						<label class="col-sm-3 control-label text-right" for="search1">供应商:</label>
						<div class="col-sm-8 ">
							<input class="form-control " id="search1" name="testName" value="" type="text" />
						</div>
					</div>
					<div class="col-sm-3">
						<label class="col-sm-3 control-label text-right" for="search1">物资:</label>
						<div class="col-sm-8">
							<input class="form-control " id="search2" name="testName" value="" type="text" />
						</div>
					</div>
					<div class="col-sm-3">
						<label class="col-sm-3 control-label text-right" for="search1">组织:</label>
						<div class="col-sm-8">
							<input class="form-control " id="search3" name="testName" value="" type="text" />
						</div>
					</div>

	                <div class="col-sm-3">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="query" name="">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>查询
	                        </button>
							<button type="button" class="btn btn-success" data-toggle="modal" id="create" name="smscke/relation/create.jsp">
								<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
							</button>

	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="test/delete.do">
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
					                <th>组织</th>
					                <th>供应商</th>
					                <th>物资</th>
					                <th>税率</th>
					                <th>收货组织</th>
									<th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>

						                <td><input type="checkbox" id="${e.relationId }" name="ids" value="${e.relationId }"/>
											<input type="hidden">
										</td>
						                <td>${e.organizationName }</td>
						                <td>${e.supplierName }</td>
						                <td>${e.materialsName }</td>
										<td>${e.taxRate }</td>
										<td>${e.receiveOrganizationName }</td>
										<td>

											<a href="javascript:update('${e.relationId}' );" >编辑</a>
										</td>
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
					</div>
				    <div class="page">${page}</div>

			     </form>
			</div>
		</div>
	</body>
<script language="JavaScript">

	
	function update(id) {

		$("#relationId").val(id)
		var url = root+"relation/view.do";
		$("#searchForm").attr('action', url).submit();
	}



</script>
</html>
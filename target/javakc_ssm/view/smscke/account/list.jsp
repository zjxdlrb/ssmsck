<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>账号管理列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="<%=path%>static/css/plugins/bootstrap-switch/bootstrap-switch.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert"><h1>供应商：</h1></div>
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>账号</th>
					                <th>类型</th>
					                <th>用户名</th>
									<th>电话</th>
									<th>邮箱</th>
									<th>操作(ps:选中为已启用;未选中为已关闭)</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list}" varStatus="v">
						            <tr>
						                <td width="50px"><input type="checkbox" name="ids" value="${e.id}"/></td>
										<td width="150px">${e.account}</td>
						                <td width="150px">${e.type}</td>
										<td width="150px">${e.username}</td>
										<td width="180px">${e.phone}</td>
										<td width="180px">${e.email}</td>
										<td>
												<button type="button" class="btn btn-success" data-toggle="modal" id="update" name="smdic/view.do">
													<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
												</button>
													&nbsp&nbsp&nbsp&nbsp
												<input type="checkbox" name="state" ${e.state==0?"checked":"" } disabled data-on-text="已启用" data-off-text="已关闭" data-on="primary" data-off="danger"/>
													&nbsp&nbsp&nbsp&nbsp
												<button type="button" class="btn btn-success" data-toggle="modal" id="again">
													<i class="glyphicon glyphicon-magnet" aria-hidden="true"></i>重置密码
												</button>
										</td>
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="ds_host"></label>

						<label class="col-sm-4 control-label" for="ds_host">
							<button type="button" class="btn btn-success" onclick="javascript:history.back();">
								<i class="glyphicon glyphicon-backward" aria-hidden="true"></i> 返回
							</button>
						</label>

						<label class="col-sm-4 control-label" for="ds_host">
							<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="smscke/account/create.jsp">
								<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新建账户
							</button>
						</label>

						<label class="col-sm-2 control-label" for="ds_host"></label>
					</div>
				    <div class="page">${page}</div>
			     </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/bootstrap-switch/bootstrap-switch.min.js"></script>
	<script type="text/javascript" src="${path }/view/system/menu/js/menu-create.js"></script>
</html>
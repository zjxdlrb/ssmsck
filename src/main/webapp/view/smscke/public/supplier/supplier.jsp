<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>菜单展示列表页面</title>
		<%@ include file="../../../../common/jsp/header.jsp"%>
		<link href="<%=path%>static/css/plugins/treegrid/jquery.treegrid.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
					<div class="col-sm-12">
						<table class="tree table table-striped table-bordered table-hover table-condensed">
							<thead>
					            <tr>
									<th><input type="checkbox" id="checkall"/></th>
									<th>编码</th>
									<th>名称</th>
									<th>缩写</th>
									<th>联系人</th>
									<th>电话</th>
					            </tr>
					        </thead>
					        <tbody>

								<c:set var="vs"></c:set>
								<c:forEach var="e" items="${page }" varStatus="v">
									<tr>

										<td><input type="checkbox" id="pId" name="pId" value="${e.supplierId }" value1="${e.supplierName }"/>
											<input type="hidden">
										</td>
										<td>${e.supplierCoding }</td>
										<td>${e.supplierName }</td>
										<td>${e.supplierAbbreviation }</td>
										<td>${e.supplierLinkman }</td>
										<td>${e.supplierPhone }</td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="col-sm-8">
		                	<div class="btn-group" role="group">
			                	<button type="button" class="btn btn-primary" data-toggle="modal" id="ascertain">
		                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>确定
		                        </button>
		                        <button type="button" class="btn btn-danger" data-toggle="modal" id="shutdo">
		                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>关闭
		                        </button>
			                 </div>
		                </div>
					</div>
				</form>
			</div>
		</div>
		<script type="text/javascript" src="<%=path%>static/js/plugins/treegrid/jquery.treegrid.min.js"></script>
		<script type="text/javascript" src="<%=path%>static/js/plugins/treegrid/jquery.treegrid.bootstrap3.js"></script>
		<script type="text/javascript">
			$(function()
			{
				$('.tree').treegrid(
				{
					treeColumn: 1
				});
				
				var index = parent.layer.getFrameIndex(window.name);
				
				$('#ascertain').click(function()
				{
					var count = $('[name=pId]:checked').length;
					if(count == 0)
					{
						layer.msg('怎么着, 没有喜欢的?', {icon: 4});
						return;
					}
					else
					{
						var id = $('[name=pId]:checked').val();
						var name = $('[name=pId]:checked').attr('value1');


							parent.$('#supplierId').val(id);
							parent.$('#supplier').val(name);
							parent.layer.close(index);
						}


				});
				
				$('#shutdo').click(function()
				{
					parent.layer.close(index);
				});
			});
		</script>
	</body>
</html>
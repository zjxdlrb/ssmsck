<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商-物资新增</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="<%=path%>static/css/plugins/bootstrap-switch/bootstrap-switch.min.css" rel="stylesheet">
	</head>
	<script>
		$(function() {
			//选择父类触发事件
			$('#organizationPid').click(function () {
				$('#organizationType').val("organizationId");
				layer.open({
					type: 2,
					title: '选择菜单父类',
					shadeClose: true,
					shade: 0.8,
					area: ['65%', '65%'],
					content: root + '/organization/createParent.do'
				});
			});
			$('#receiveOrganizationPid').click(function () {
				$('#organizationType').val("receiveOrganizationId");
				layer.open({
					type: 2,
					title: '选择菜单父类',
					shadeClose: true,
					shade: 0.8,
					area: ['65%', '65%'],
					content: root + '/organization/createParent.do'
				});
			});
			$('#supplier').click(function () {
				layer.open({
					type: 2,
					title: '选择菜单父类',
					shadeClose: true,
					shade: 0.8,
					area: ['65%', '65%'],
					content: root + '/supplier/createParent.do'
				});
			});
			$('#materials').click(function () {
				layer.open({
					type: 2,
					title: '选择菜单父类',
					shadeClose: true,
					shade: 0.8,
					area: ['65%', '65%'],
					content: root + '/materials/createParent.do'
				});
			});
		})
	</script>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/relation/save.do" method="post" class="form-horizontal" role="form">
					<input type="hidden" id="organizationType" value="">
                    <fieldset>
						<legend>供应商-物资新增</legend>

                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="organizationPid">组织</label>
                          	<div class="col-sm-10">
                            	<input class="form-control" id="organizationId" name="organizationId" type="hidden1"/>
                            	<input class="form-control" id="organizationPid"  type="text" readonly placeholder="点击选择组织"/>
                          	</div>
                       	</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="supplierId">供应商</label>
							<div class="col-sm-10">
								<input class="form-control" id="supplierId" name="supplierId" type="hidden1"/>
								<input class="form-control" id="supplier" type="text" readonly placeholder="点击选择供应商"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="materialsId">物资</label>
							<div class="col-sm-10">
								<input class="form-control" id="materialsId" name="materialsId" type="hidden1"/>
								<input class="form-control" id="materials" type="text" readonly placeholder="点击选择物资"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="taxRate">税率</label>
							<div class="col-sm-10">
								<input class="form-control" id="taxRate" name="taxRate" type="text" placeholder="请填写税率"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="receiveOrganizationPid">收货组织</label>
							<div class="col-sm-10">
								<input class="form-control" id="receiveOrganizationId" name="receiveOrganizationId" type="hidden1"/>
								<input class="form-control" id="receiveOrganizationPid" type="text" readonly placeholder="点击选择收货组织"/>
							</div>
						</div>



                    </fieldset>     
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="submit" value="提交" class="btn btn-primary"/>
                           </div>
                           <label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="reset" value="重置" class="btn btn-danger"/>
                           </div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/bootstrap-switch/bootstrap-switch.min.js"></script>
</html>
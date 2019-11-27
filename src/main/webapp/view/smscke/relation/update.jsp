<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
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
		})
	</script>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/relation/update.do" method="post" class="form-horizontal" role="form">
                    <input type="hidden" name="relationId" id="relationId" value="${relationEntity.relationId}"/>
					<input type="hidden" id="organizationType" value="">
					<fieldset>
                        <legend>测试基本信息</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="organizationPid">组织</label>
							<div class="col-sm-10">
								<input class="form-control" id="organizationId" name="organizationId" type="hidden1" value="${relationEntity.organizationId}"/>
								<input class="form-control" id="organizationPid" value="${relationEntity.organizationName}"  type="text" readonly placeholder="点击选择组织"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="supplierId">供应商</label>
							<div class="col-sm-10">
								<input class="form-control" id="menupidValue2" name="supplierId" type="hidden" value=""/>
								<input class="form-control" id="supplierId" value="" type="text" readonly placeholder="点击选择父类"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="materialsId">物资</label>
							<div class="col-sm-10">
								<input class="form-control" id="menupidValue3" name="materialsId" type="hidden" value=""/>
								<input class="form-control" id="materialsId" value="" type="text" readonly placeholder="点击选择父类"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="taxRate">税率</label>
							<div class="col-sm-10">
								<input class="form-control" id="taxRate" name="taxRate" value="" type="text" placeholder="填写菜单名称  测试查询"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="receiveOrganizationPid">收货组织</label>
							<div class="col-sm-10">
								<input class="form-control" id="receiveOrganizationId" name="receiveOrganizationId" type="hidden1" value="${relationEntity.receiveOrganizationId}"/>
								<input class="form-control" id="receiveOrganizationPid" value="${relationEntity.receiveOrganizationName}" type="text" readonly placeholder="点击选择父类"/>
							</div>
						</div>

                    </fieldset>     

                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
                           	</div>
                           	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
                           	</div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
</html>
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
			$('#organizationId').click(function () {
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
			$('#receiveOrganizationId').click(function () {
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
				<form action="${path }/menu/create.do" method="post" class="form-horizontal" role="form">
					<input type="hidden1" id="organizationType" value="">
                    <fieldset>
						<legend>供应商-物资新增</legend>

                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="organizationId">组织</label>
                          	<div class="col-sm-10">
                            	<input class="form-control" id="menupidValue1" name="pId" type="hidden1"/>
                            	<input class="form-control" id="organizationId"  type="text" readonly placeholder="点击选择组织"/>
                          	</div>
                       	</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="menupid">供应商</label>
							<div class="col-sm-10">
								<input class="form-control" id="menupidValue2" name="menuPid" type="hidden"/>
								<input class="form-control" id="menupid2" type="text" readonly placeholder="点击选择父类"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="menupid">物资</label>
							<div class="col-sm-10">
								<input class="form-control" id="menupidValue3" name="menuPid" type="hidden"/>
								<input class="form-control" id="menupid" type="text" readonly placeholder="点击选择父类"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="menuname">税率</label>
							<div class="col-sm-10">
								<input class="form-control" id="menuname" name="menuName" type="text" placeholder="填写菜单名称  测试查询"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="menupid">收货组织</label>
							<div class="col-sm-10">
								<input class="form-control" id="menupidValue4" name="receiveOrganizationPid" type="hidden1"/>
								<input class="form-control" id="receiveOrganizationId" type="text" readonly placeholder="点击选择父类"/>
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
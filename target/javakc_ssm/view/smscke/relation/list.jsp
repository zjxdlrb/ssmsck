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
					<input type="hidden1" id="relationId" value="" name="relationId">
					<input type="hidden" id="organizationType" value="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">供应商物资关系详细信息</div>

					<div class="col-sm-3">
						<label class="col-sm-3 control-label text-right" for="supplier">供应商:</label>
						<div class="col-sm-8 ">
                            <input class="form-control" id="supplierId" name="supplierId" value="${relationEntity.supplierId}" type="hidden"/>
                            <input class="form-control" id="supplier" name="supplierName" value="${relationEntity.supplierName}" type="text" readonly placeholder="点击选择供应商"/>
						</div>
					</div>
					<div class="col-sm-3">
						<label class="col-sm-3 control-label text-right" for="materials">物资:</label>
						<div class="col-sm-8">
                            <input class="form-control" id="materialsId" name="materialsId" value="${relationEntity.materialsId}" type="hidden"/>
                            <input class="form-control" id="materials" name="materialsName" value="${relationEntity.materialsName}" type="text" readonly placeholder="点击选择物资"/>
						</div>
					</div>
					<div class="col-sm-3">
						<label class="col-sm-3 control-label text-right" for="organizationPid">组织:</label>
						<div class="col-sm-8">
                            <input class="form-control" id="organizationId" name="organizationId" value="${relationEntity.organizationId}" type="hidden"/>
                            <input class="form-control" id="organizationPid" name="organizationName" value="${relationEntity.organizationName}" type="text" readonly placeholder="点击选择组织"/>
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

						                <td><input type="checkbox" id="${e.relationId }" name="ids" value="${e.organizationName }"/>
											<input type="hidden" name="${e.relationId }">
										</td>
						                <td>${e.organizationName }</td>
						                <td>${e.supplierName }</td>
						                <td>${e.materialsName }</td>
										<td>${e.taxRate }</td>
										<td>${e.receiveOrganizationName }</td>
										<td>
											<a href="javascript:update('${e.relationId}' );" >编辑</a>
											<a href="javascript:todelete('${e.relationId}');" >删除</a>
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


    function todelete(id) {
		$("#relationId").val(id)
		var url = root + "relation/delete.do";
		//
        $("input[id='"+id+"']").prop("checked",true)

        $.isconfirm(url);

	}

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
		$('#query').click(function(){
			$('#searchForm').submit();
		});
    })


</script>
</html>
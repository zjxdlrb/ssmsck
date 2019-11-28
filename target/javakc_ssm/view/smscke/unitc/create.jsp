<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>单位列表添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
<%--			<div>--%>
<%--				<div class="col-sm-4"><input type="button" value="返回" class="btn btn-success" onclick="javascript:history.back();"/></div>--%>
<%--			</div>--%>
			<div class="ibox float-e-margins">
				<form action="${path }/unitc/save.do" method="post" class="form-horizontal" role="form">
					<fieldset>
						<legend>测试基本信息</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_host">物资编码</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="materialsCoding"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_name">物资姓名</label>
							<div class="col-sm-4">
								<input class="form-control" id="search" name="materialsName" value="" type="button" placeholder="请点击选择"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_username">规格</label>
							<div class="col-sm-4">
								<input class="form-control" type="text"  name="materialsSpecification"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_host">基本单位</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="materialsUnit"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_host">物资转换前单位</label>
							<div class="col-sm-4">
								<select class="form-control m-b" name="materialsUnitbefore" data-placeholder="请选择">
									<option>${materialsUnitbefore}</option>
								</select>
<%--								<input class="form-control" type="text" name="materialsUnitbefore"/>--%>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_host">转换率</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="conversionRate"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_host">物资转换后单位</label>
							<div class="col-sm-4">
								<select class="form-control m-b" name="materialsUnitafter" data-placeholder="请选择">
									<option>${materialsUnitafter}</option>
								</select>
<%--								<input class="form-control" type="text" name="materialsUnitafter"/>--%>
							</div>
						</div>
					</fieldset>
<%--					<input type="hidden" name="unitConversionid" id="unitConversionid" value="${unitcEntity.unitConversionid}"/>--%>
<%--                    <fieldset>--%>
<%--                        <legend>测试基本信息</legend>--%>
<%--						<div class="form-group">--%>
<%--							<div class="col-sm-12">--%>
<%--								<table class="tree table table-striped table-bordered table-hover table-condensed">--%>
<%--									<thead>--%>
<%--									<tr>--%>
<%--										<th>物资编码</th>--%>
<%--										<th>物资名称</th>--%>
<%--										<th>规格</th>--%>
<%--										<th>基本单位</th>--%>
<%--										<th>物资转换前单位</th>--%>
<%--										<th>转换率</th>--%>
<%--										<th>物资转换后单位</th>--%>
<%--									</tr>--%>
<%--									</thead>--%>
<%--									<tbody>--%>
<%--									<c:forEach var="m" items="${page.list }" varStatus="v">--%>
<%--										<tr>--%>
<%--											<td></td>--%>
<%--											<td>--%>
<%--												<input class="form-control" id="search" name="materialsName" value="" type="button" placeholder="请点击选择"/>--%>
<%--											</td>--%>
<%--											<td></td>--%>
<%--											<td></td>--%>
<%--											<td>  <div class="col-sm-10">--%>
<%--												<select class="form-control m-b" name="materialsunitbefore" data-placeholder="请选择">--%>
<%--													<option>${m.materialsUnitbefore}</option>--%>
<%--												</select></div></td>--%>
<%--											<td><input class="form-control" id="" name="materialsName" value="${unitcEntity.conversionRate}" type="text" title="请输入"/></td>--%>
<%--											<td><div class="col-sm-10">--%>
<%--												<select class="form-control m-b" name="materialsunitafter" data-placeholder="请选择">--%>
<%--													<option>${m.materialsUnitafter}</option>--%>
<%--												</select></div></td>--%>
<%--										</tr>--%>
<%--									</c:forEach>--%>
<%--									</tbody>--%>
<%--								</table>--%>
<%--							</div>--%>
<%--						</div>--%>

                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-1 control-label" for="ds_host"></label>
                           	<div class="col-sm-5">
                              	<input type="submit" value="提交" class="btn btn-success"/>
                           	</div>
                           	<label class="col-sm-1 control-label" for="ds_host"></label>
							<div class="col-sm-5">
								<input type="button" value="返回" class="btn btn-success" onclick="javascript:history.back();"/>
							</div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="./js/dictionary.js"></script>
</html>
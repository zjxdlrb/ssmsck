<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>单位列表编辑页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
<%--			<div>--%>
<%--				<div class="col-sm-4"><input type="button" value="返回" class="btn btn-success" onclick="javascript:history.back();"/></div>--%>
<%--			</div>--%>
			<div class="ibox float-e-margins">
				<form action="${path }/smsckeunit/update.do" method="post" class="form-horizontal" role="form">
					<input type="hidden" name="unitId" id="unitId" value="${unitEntity.unitId}"/>
                    <fieldset>
                        <legend>测试基本信息</legend>
                       <div class="form-group">
                          <label class="col-sm-1 control-label" for="ds_host">单位代码</label>
                          <div class="col-sm-5">
                             <input class="form-control" type="text" name="${unitEntity.unitCode}"/>
                          </div>
                          <label class="col-sm-1 control-label" for="ds_name">单位名称</label>
                          <div class="col-sm-5">
							  <input class="form-control" type="text" name="${unitEntity.unitName}"/>
                          </div>
                    </fieldset>     

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
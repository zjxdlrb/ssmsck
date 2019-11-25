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
                          <label class="col-sm-1 control-label" for="ds_host">物资编码</label>
                          <div class="col-sm-5">
                             <input class="form-control" type="text" name="unitCode"/>
                          </div>
                          <label class="col-sm-1 control-label" for="ds_name">物资名称</label>
                          <div class="col-sm-5">
							  <input class="form-control" type="text" name="unitName"/>
                          </div>
						   <label class="col-sm-1 control-label" for="ds_name">规格</label>
						   <div class="col-sm-5">
							   <input class="form-control" type="text" name="unitName"/>
						   </div>
						   <label class="col-sm-1 control-label" for="ds_name">基本单位</label>
						   <div class="col-sm-5">
							   <input class="form-control" type="text" name="unitName"/>
						   </div>
						   <label class="col-sm-1 control-label" for="ds_name">物资转换前单位</label>
						   <div class="col-sm-5">
							   <input class="form-control" type="text" name="unitName"/>
						   </div>
						   <label class="col-sm-1 control-label" for="ds_name">转换率</label>
						   <div class="col-sm-5">
							   <input class="form-control" type="text" name="unitName"/>
						   </div>
						   <label class="col-sm-1 control-label" for="ds_name">物资转换后单位</label>
						   <div class="col-sm-5">
							   <input class="form-control" type="text" name="unitName"/>
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
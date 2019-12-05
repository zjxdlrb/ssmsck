<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>新增账户页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
<%--		<link href="${path}/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">--%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path}/account/save.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>新建账户基本信息</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_host">账号</label>
                          <div class="col-sm-2">
                             <input class="form-control" type="text" name="account"/>
                          </div>
						   <label class="col-sm-2 control-label" for="ds_host">类型</label>
						   <div class="col-sm-2">
<%--							   <input class="form-control" type="text" name="type"/>--%>
								<select id="type" name="type">
										<option>---请选择---</option>
										<option value="e76f28cbf31a499987fb34f564a25784">普通用户</option>
										<option value="e76f28cbf31a499987fb34f564a25785">管理员</option>
								</select>
						   </div>
						   <label class="col-sm-2 control-label" for="ds_host">用户名</label>
						   <div class="col-sm-2">
							   <input class="form-control" type="text" name="username"/>
						   </div>
                       </div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_host">密码</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="password"/>
							</div>
							<label class="col-sm-2 control-label" for="ds_host">电话</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="phone"/>
							</div>
							<label class="col-sm-2 control-label" for="ds_host">邮箱</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="email"/>
							</div>
						</div>
                    </fieldset>     

                    <fieldset>
                        <div class="form-group">
							<label class="col-sm-2 control-label" for="ds_host"></label>
							<label class="col-sm-4 control-label" for="ds_host">
								<button type="button" class="btn btn-success" onclick="javascript:history.back();">
									<i class="glyphicon glyphicon-backward" aria-hidden="true"></i> 返回
								</button>
							</label>
                        	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
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
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>供应商添加页面</title>
    <%@ include file="../../../common/jsp/header.jsp"%>
    <link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <%--			<div>--%>
    <%--				<div class="col-sm-4"><input type="button" value="返回" class="btn btn-success" onclick="javascript:history.back();"/></div>--%>
    <%--			</div>--%>
    <div class="ibox float-e-margins">
        <form action="${path }/supplier/save.do" method="post" class="form-horizontal" role="form">
            <fieldset>
                <legend>供应商新增</legend>
                <div class="row">
                    <label class="col-sm-1 control-label" for="ds_host">供应商类型</label>
                    <div class="col-sm-4" >
                        <select class="form-control" name="supplierType">
                            <option value="0"  selected>外部供应商
                            <option value="1">内部供应商
                        </select>
                    </div>
                    <div class="col-sm-8">
                    </div>
                    </div>

                <div class="row" style="margin-top:25px">
                </div>

                <div class="row">
                    <label class="col-sm-1 control-label" for="ds_host">供应商名称</label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" name="unitName"/>
                    </div>
                    <label class="col-sm-1 control-label" for="ds_host">供应商分类</label>
                    <div class="col-sm-3">
                        <select class="form-control" name="supplierType">
                            <option value="3"  selected>
                            <option value="0">一类
                            <option value="1">二类
                            <option value="2">三类
                        </select>
                    </div>
                </div>

                <div class="row" style="margin-top:25px">
                </div>

                <div class="row">
                <label class="col-sm-1 control-label" for="ds_host">供应商简称</label>
                <div class="col-sm-3">
                    <input class="form-control" type="text" name="unitName"/>
                </div>

                <label class="col-sm-1 control-label" for="ds_host">法人</label>
                <div class="col-sm-3">
                    <input class="form-control" type="text" name="unitName"/>
                </div>

                <label class="col-sm-1 control-label" for="ds_host">法人电话</label>
                <div class="col-sm-3">
                    <input class="form-control" type="text" name="unitName"/>
                </div>
            </div>

                <div class="row" style="margin-top:25px">
                </div>

                <div class="row">
                    <label class="col-sm-1 control-label" for="ds_host">供应商地址</label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" name="unitName"/>
                    </div>

                    <label class="col-sm-2 control-label" for="ds_host">社会统一信任代码</label>
                    <div class="col-sm-3">
                    <input class="form-control" type="text" name="unitName"/>
                </div>
                </div>

                <div class="row" style="margin-top:25px">
                </div>


                <div class="row">
                    <label class="col-sm-1 control-label" for="ds_host">联系人</label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" name="unitName"/>
                    </div>

                    <label class="col-sm-1 control-label" for="ds_host">联系人电话</label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" name="unitName"/>
                    </div>

                    <label class="col-sm-1 control-label" for="ds_host">联系人邮箱</label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" name="unitName"/>
                    </div>

                    <div class="row" style="margin-top:25px">
                    </div>


                    <div class="row">
                        <label class="col-sm-1 control-label" for="ds_host">启用门户</label>
                        <div class="col-sm-3">
                            <input type="checkbox" name="boxes" value="1">
                        </div>

                        <label class="col-sm-1 control-label" for="ds_host">必须合同</label>
                        <div class="col-sm-3">
                            <input type="checkbox" name="boxes" value="1">
                        </div>
                   </div>

                    </div>
            </fieldset>
            <div class="row" style="margin-top:25px">
            </div>
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

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>单位列表添加页面</title>
    <%@ include file="../../../common/jsp/header.jsp" %>
    <link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <%--			<div>--%>
    <%--				<div class="col-sm-4"><input type="button" value="返回" class="btn btn-success" onclick="javascript:history.back();"/></div>--%>
    <%--			</div>--%>
    <div class="ibox float-e-margins">
        <form action="${path }/unitc/update.do" method="post" class="form-horizontal" role="form">
            <input type="hidden" name="unitConversionid" id="unitConversionid" value="${unitcEntity.unitConversionid}"/>

            <fieldset>
                <legend>测试基本信息</legend>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_host">物资编码</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="materialsCoding" readonly value="${unitcEntity.materialsCoding}"/>
                    </div>
                </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_name">物资姓名</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="materialsName" readonly value="${unitcEntity.materialsName}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_username">规格</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text"  name="materialsSpecification" readonly value="${unitcEntity.materialsSpecification}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_host">基本单位</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="materialsUnit" readonly value="${unitcEntity.materialsUnit}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_host">物资转换前单位</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="materialsUnitbefore" readonly value="${unitcEntity.materialsUnitbefore}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_host">转换率</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="conversionRate" value="${unitcEntity.conversionRate}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_host">物资转换后单位</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="materialsUnitafter" readonly value="${unitcEntity.materialsUnitafter}"/>
                    </div>
                </div>
            </fieldset>
<%--                    <fieldset>--%>
<%--                <legend>测试基本信息</legend>--%>
<%--                <div class="form-group">--%>
<%--                    <div class="col-sm-12">--%>
<%--                        <table class="tree table table-striped table-bordered table-hover table-condensed">--%>
<%--                            <thead>--%>
<%--                            <tr>--%>
<%--                                <th>物资编码</th>--%>
<%--                                <th>物资名称</th>--%>
<%--                                <th>规格</th>--%>
<%--                                <th>基本单位</th>--%>
<%--                                <th>物资转换前单位</th>--%>
<%--                                <th>转换率</th>--%>
<%--                                <th>物资转换后单位</th>--%>
<%--                            </tr>--%>
<%--                            </thead>--%>
<%--                            <tbody>--%>
<%--                            <c var="m" items="${page.list }" varStatus="v">--%>
<%--                                <tr>--%>
<%--                                    <td>${m.materialsCoding}</td>--%>
<%--                                    <td>${e.materialsName}</td>--%>
<%--                                    <td>${e.materialsSpecification}</td>--%>
<%--                                    <td>${e.materialsUnit}</td>--%>
<%--                                    <td>${e.materialsUnitbefore}</td>--%>
<%--                                    <td>${e.conversionRate}</td>--%>
<%--                                    <td>${e.materialsUnitafter}</td>--%>

<%--                                </tr>--%>
<%--                            </c>--%>
<%--                            </tbody>--%>
<%--                        </table>--%>
<%--                    </div>--%>
<%--                </div>--%>

                <fieldset>
                    <div class="form-group">
                        <label class="col-sm-1 control-label" for="ds_host"></label>
                        <div class="col-sm-5">
                            <input type="submit" value="提交" class="btn btn-success"/>
                        </div>
                        <label class="col-sm-1 control-label" for="ds_host"></label>
                        <div class="col-sm-5">
                            <input type="button" value="返回" class="btn btn-success"
                                   onclick="javascript:history.back();"/>
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
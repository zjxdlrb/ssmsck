<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>单位列表添加页面</title>
    <%@ include file="../../../common/jsp/header.jsp" %>
    <link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
</head>
<script>


    $(function () {

        //选择父类触发事件
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

    });
</script>
<body>
<div class="wrapper wrapper-content animated fadeInRight">

    <div class="ibox float-e-margins">
        <form action="${path }/unitc/save.do" method="post" class="form-horizontal" role="form">
            <fieldset>
                <legend>测试基本信息</legend>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="materialscoding">物资编码</label>
                    <div class="col-sm-4">
                        <input class="form-control" id="materialscoding" name="materialsCoding" readonly type="text"
                               placeholder="自动填充物资编码"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="materials">物资姓名</label>
                    <div class="col-sm-4">
                        <%--									<input class="form-control" id="menupidValue" name="menuPid" type="hidden"/>--%>
                        <%--									<input class="form-control" id="menupid" type="text" readonly placeholder="请选择"/>--%>
                        <input class="form-control" id="materialsId" name="materialsId" type="hidden"/>
                        <input class="form-control" id="materials" type="text" readonly placeholder="点击选择物资"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="materialsspecification">规格</label>
                    <div class="col-sm-4">
                        <input class="form-control" id="materialsspecification" name="materialsSpecification" readonly type="text" placeholder="自动填充规格"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="materialsunit">基本单位</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" id="materialsunit" name="materialsUnit" readonly
                               type="text"
                               placeholder="自动填充基本单位"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="materialsunitbefore">物资转换前单位</label>
                    <div class="col-sm-4">
                        <select class="form-control m-b" id="materialsunitbefore" name="materialsUnitbefore"
                                data-placeholder="请选择">
                            <option value="0" selected>请选择
                            <option value="Kg(千克)">Kg(千克)
                            <option value="g(克)">g(克)
                            <option value="t(吨)">t(吨)
                            <option value="D(袋)">D(袋)
                        </select>
                    </div>
<%--                    <c:forEach var="unit" items="${unitList}">--%>
<%--                        <select class="form-control m-b">--%>
<%--                            <opt type="checkbox" name="unitIds" value="${unit.unitId }"/>${unit.unitName }--%>
<%--                        </select>--%>
<%--                    </c:forEach>--%>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="conversionrate">转换率</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" id="conversionrate" name="conversionRate"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="materialsunitafter">物资转换后单位</label>
                    <div class="col-sm-4">
                        <select class="form-control m-b" id="materialsunitafter" name="materialsUnitafter"
                                data-placeholder="请选择">
                            <option value="0" selected>请选择
                            <option value="Kg(千克)">Kg(千克)
                            <option value="g(克)">g(克)
                            <option value="t(吨)">t(吨)
                            <option value="D(袋)">D(袋)
                        </select>
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
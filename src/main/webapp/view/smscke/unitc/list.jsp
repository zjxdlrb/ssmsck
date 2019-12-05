<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>计量单位转换列表页面</title>
    <%@ include file="../../../common/jsp/header.jsp" %>
</head>
<script >
    $(function() {
        //选择父类触发事件
        $('#menupid').click(function () {
            layer.open({
                type: 2,
                title: '选择菜单父类',
                shadeClose: true,
                shade: 0.8,
                area: ['65%', '65%'],
                content: root + '/menu/createParent.do'
            });
        });
    });
</script>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <form id="searchForm" action="">
            <input type="hidden" id="unitConversionid" value="" name="unitConversionid">
            <div class="col-sm-12">
                <!-- ------------按钮组 start------------ -->
                <div class="alert alert-success" role="alert">详细信息</div>
                <div class="form-group">

                    <div class="col-sm-6">
                        <label class="col-sm-2 control-label" for="menupid">物资</label>
                        <div class="input-group">
                            <input class="form-control" id="menupidValue" name="menuPid" type="hidden"/>
                            <input class="form-control" id="menupid" type="text" readonly placeholder="请点击选择"/>
                        </div>
                    </div>


                    <div class="col-sm-6">
                        <div class="btn-group hidden-xs" role="group">
                            <button type="button" class="btn btn-success" data-toggle="modal" id="create"
                                    name="smscke/unitc/create.jsp">
                                <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
                            </button>
                            <button type="button" class="btn btn-warning" data-toggle="modal" id="search"
                                    name="unitc/view.do">
                                <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>查询
                            </button>
                            <button type="button" class="btn btn-danger" data-toggle="modal" id="delete"
                                    name="unitc/delete.do">
                                <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
                            </button>
                        </div>
                    </div>

                </div>
                <!-- ------------按钮组 end------------ -->
                <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                <table class="table table-striped table-bordered table-hover table-condensed">
                    <thead>
                    <tr>
                        <th><input type="checkbox" id="checkall"/></th>
                        <th>物资</th>
                        <th>规格</th>
                        <th>基本单位</th>
                        <th>物资转换前单位</th>
                        <th>转换率</th>
                        <th>物资转换后单位</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="vs"></c:set>
                    <c:forEach var="e" items="${page.list }" varStatus="v">
                        <tr>
                            <td><input type="checkbox" id="${e.unitConversionid }" name="ids"
                                       value="${e.unitConversionid }"/>
                                <input type="hidden"></td>
                            <td>${e.materialsName}</td>
                            <td>${e.materialsSpecification}</td>
                            <td>${e.materialsUnit}</td>
                            <td>${e.materialsUnitbefore}</td>
                            <td>${e.conversionRate}</td>
                            <td>${e.materialsUnitafter}</td>
                            <td>
                                <a href="JavaScript:update('${e.unitConversionid}');">编辑</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="col-sm-8">
                    <div class="page">${page}</div>
                </div>
        </form>
    </div>
</div>
<script language="JavaScript">
    function update(id) {
        $("#unitConversionid").val(id)
        var url = root + "unitc/view.do";
        $("#searchForm").attr('action', url).submit();

    }
</script>
</body>
</html>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>菜单展示列表页面</title>
    <%@ include file="../../../../common/jsp/header.jsp" %>
    <link href="<%=path%>static/css/plugins/treegrid/jquery.treegrid.css" rel="stylesheet">
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <form id="searchForm" action="">
            <div class="col-sm-12">
                <table class="tree table table-striped table-bordered table-hover table-condensed">
                    <thead>
                    <tr>
                        <th><input type="checkbox" id="checkall"/></th>
                        <th>物资编码</th>
                        <th>物资名称</th>
                        <th>规格</th>
                        <th>缩写</th>
                        <th>标准单位</th>
                        <th>辅助单位</th>
                        <th>状态</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:set var="vs"></c:set>
                    <c:forEach var="e" items="${page }" varStatus="v">
                        <tr>

                            <td><input type="checkbox" id="pId" name="pId" value="${e.materialsId }"
                                       value1="${e.materialsName }"
                                       value2="${e.materialsCoding }" value3="${e.materialsSpecification }"
                                       value4="${e.materialsUnit}"/>
                                <input type="hidden">
                            </td>
                            <td>${e.materialsCoding }</td>
                            <td>${e.materialsName }</td>
                            <td>${e.materialsSpecification }</td>
                            <td>${e.materialsAbbreviation }</td>
                            <td>${e.standardUnit }</td>
                            <td>${e.auxiliaryUnit }</td>
                            <td>${e.materialsState }</td>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="col-sm-8">
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-primary" data-toggle="modal" id="ascertain">
                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>确定
                        </button>
                        <button type="button" class="btn btn-danger" data-toggle="modal" id="shutdo">
                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>关闭
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript" src="<%=path%>static/js/plugins/treegrid/jquery.treegrid.min.js"></script>
<script type="text/javascript" src="<%=path%>static/js/plugins/treegrid/jquery.treegrid.bootstrap3.js"></script>
<script type="text/javascript">
    $(function () {
        $('.tree').treegrid(
            {
                treeColumn: 1
            });

        var index = parent.layer.getFrameIndex(window.name);

        $('#ascertain').click(function () {
            var count = $('[name=pId]:checked').length;
            if (count == 0) {
                layer.msg('怎么着, 没有喜欢的?', {icon: 4});
                return;
            } else {
                var id = $('[name=pId]:checked').val();
                var name = $('[name=pId]:checked').attr('value1');
                var coding = $('[name=pId]:checked').attr('value2');
                var specification = $('[name=pId]:checked').attr('value3');
                var unit = $('[name=pId]:checked').attr('value4');


                parent.$('#materialsId').val(id);
                parent.$('#materials').val(name);
                parent.$('#materialscoding').val(coding);
                parent.$('#materialsspecification').val(specification);
                parent.$('#materialsunit').val(unit);
                parent.layer.close(index);
            }


        });

        $('#shutdo').click(function () {
            parent.layer.close(index);
        });
    });
</script>
</body>
</html>
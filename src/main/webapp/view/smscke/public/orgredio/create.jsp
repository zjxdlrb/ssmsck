<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>数据字典添加页面</title>
    <%@ include file="../../../../common/jsp/header.jsp" %>
    <link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
    <link href="<%=path%>/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet">
    <script type="text/javascript" src="<%=path%>/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
</head>

<script language="JavaScript">

    $(function () {

        var setting = {
            view: {
                dblClickExpand: false
            },
            data: {
                simpleData: {
                    enable: true
                }
            },
            callback: {
                beforeClick: beforeClick,
                onClick: onClick
            }
        };

        $.post(root + 'organization/queryAllOrg.do', function (zNodes) {
            $.fn.zTree.init($("#treeDemo"), setting, zNodes);
        }, 'json')

    });

    function beforeClick(treeId, treeNode) {

    }

    function onClick(e, treeId, treeNode) {
        var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
            nodes = zTree.getSelectedNodes(),
            v = "";
            id="";
        nodes.sort(function compare(a, b) {
            return a.id - b.id;
        });
        for (var i = 0, l = nodes.length; i < l; i++) {
            v += nodes[i].name + ",";
            id += nodes[i].id + ",";
        }
        if (v.length > 0) v = v.substring(0, v.length - 1);
        if (id.length > 0) id = id.substring(0, id.length - 1);
        var nodeName = $("#nodeName");
        nodeName.attr("value", v);
        $("#organizationPid").val(id);
    }

    function showMenu() {
        var cityObj = $("#nodeName");
        var cityOffset = $("#nodeName").offset();
        $("#menuContent").css({
            left: cityOffset.left + "px",
            top: cityOffset.top + cityObj.outerHeight() + "px"
        }).slideDown("fast");

        $("body").bind("mousedown", onBodyDown);
    }

    function hideMenu() {
        $("#menuContent").fadeOut("fast");
        $("body").unbind("mousedown", onBodyDown);
    }

    function onBodyDown(event) {
        if (!(event.target.id == "menuBtn" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length > 0)) {
            hideMenu();
        }
    }

</script>

<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div>
        <div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success"
                                     onclick="javascript:history.back();"/></div>
    </div>
    <div class="ibox float-e-margins">
        <form action="${path }/organization/save.do" method="post" class="form-horizontal" role="form">
            <input type="hidden1" id="organizationPid" name="organizationPid" value="">
            <fieldset>
                <legend>测试基本信息</legend>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_host">父类</label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" id="nodeName" name="nodeName"/>
                        <div id="menuContent" class="menuContent" style="display:none; ">
                            <ul id="treeDemo" class="ztree" style="margin-top:0; width:160px;"></ul>
                        </div>
                    </div>
                    <a id="menuBtn" href="#" onclick="showMenu(); return false;" class="control-label">选择</a>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_host">名称</label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" name="organizationName"/>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="ds_host"></label>
                    <div class="col-sm-1">
                        <input type="submit" value="提交" class="btn btn-primary"/>
                    </div>
                    <label class="col-sm-1 control-label" for="ds_host"></label>
                    <div class="col-sm-2">
                        <input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>
</body>
<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
</html>
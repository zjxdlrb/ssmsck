<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>新建物资类别页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="<%=path%>/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet">
		<script type="text/javascript" src="<%=path%>/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
	</head>

	<script language="JavaScript">
		$(function (){

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

			//异步
			$.post(root+'tree/queryAll.do',function (zNodes)	{
				$.fn.zTree.init($("#treeDemo"),setting,zNodes);
			},'json')
		})


		function beforeClick(treeId, treeNode) {

		}

		function onClick(e, treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
					nodes = zTree.getSelectedNodes(),
					v = "";
					id="";
			nodes.sort(function compare(a,b){return a.id-b.id;});
			for (var i=0, l=nodes.length; i<l; i++) {
				v += nodes[i].name + ",";
				id += nodes[i].id + ",";
			}
			if (v.length > 0 ) v = v.substring(0, v.length-1);
			if (id.length > 0 ) id = id.substring(0, id.length-1);
			var nodeName = $("#nodeName");
			nodeName.attr("value", v);
			$("#pId").val(id);
		}

		function showMenu() {
			var cityObj = $("#nodeName");
			var cityOffset = $("#nodeName").offset();
			$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");

			$("body").bind("mousedown", onBodyDown);
		}
		function hideMenu() {
			$("#menuContent").fadeOut("fast");
			$("body").unbind("mousedown", onBodyDown);
		}
		function onBodyDown(event) {
			if (!(event.target.id == "menuBtn" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
				hideMenu();
			}
		}
	</script>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form action="${path}/tree/save.do" method="post" class="form-horizontal" role="form">
                    <input type="hidden" id="pId" name="pId" value="" />
					<fieldset>
						<div class="alert alert-success" role="alert"><h2>新增物资基本信息</h2></div>
						<div class="form-group">
							<a id="menuBtn" href="#" onclick="showMenu(); return false;" class="col-sm-2  control-label">请选择父级</a>
							<div class="col-sm-2">
								<input class="form-control" type="text" id="nodeName" name="nodeName"/>
								<div id="menuContent" class="menuContent" style="display:none;">
									<ul id="treeDemo" class="ztree" style="margin-top:0; width:160px;"></ul>
								</div>
							</div>
						</div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_host">物资名称</label>
                          <div class="col-sm-2">
                             <input class="form-control" type="text" name="name"/>
                          </div>
                       </div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_host">简写</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="classifyabbr"/>
							</div>
						</div>
<%--                        <div class="form-group">--%>
<%--                            <label class="col-sm-2 control-label" for="ds_host">序号</label>--%>
<%--                            <div class="col-sm-2">--%>
<%--                                <input class="form-control" type="text" name="classifyorder"/>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="ds_host">级别</label>
                            <div class="col-sm-2">
                                <input class="form-control" type="text" name="classifylevel"/>
                            </div>
                        </div>
                    </fieldset>     

                    <fieldset>
                        <div class="form-group">
							<label class="col-sm-2 control-label" for="ds_host"></label>
							<label class="col-sm-2 control-label" for="ds_host">
								<button type="button" class="btn btn-success" onclick="javascript:history.back();">
									 返回
								</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<label class="col-sm-2 control-label" for="ds_host"></label>
									<input type="submit" value="提交" class="btn btn-primary"/>
							</label>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>

</html>
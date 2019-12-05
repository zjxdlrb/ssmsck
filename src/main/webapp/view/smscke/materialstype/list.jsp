<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>物资分类列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="<%=path%>/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet">
		<script type="text/javascript" src="<%=path%>/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
	</head>
	
	<script language="JavaScript">
		$(function ()	{

		        var tree;
				var setting = {
					data:	{
						simpleData:	{
							enable:	true
						}
					},
					callback: {
						onClick: onClick
					},
                    view:   {
                        fontCss:  getFontCss
                    }
				};


				//异步
				$.post(root+'tree/queryAll.do',function (zNodes){
					tree = $.fn.zTree.init($("#tree"),setting,zNodes);
				},'json')

                $("#queryByName").click(function () {
                    var name=$("#name").val();
                    var node = tree.getNodeByParam("name",name,"")
                    node.highlight = true;
                    tree.updateNode(node);
                    tree.selectNode(node);
                });

            //删除
            $("#deleteMaterial").click(function (){
            	var nodes=tree.getSelectedNodes();
            	if(nodes.length!=1){
            		alert("请选择一条数据进行删除！");
            		return false;
            	}
            	var id="";
            	for (var i=0;i<nodes.length;i++){
            		id=nodes[i].id;
            	}

            	$("#id").val(id);
            	var url=root+$(this).attr('name');

            	swal({
            		title: "确定要删除吗?",
            		text: "删除后将无法恢复当前记录!",
            		type: "warning",
            		showCancelButton: true,
            		confirmButtonColor: "#DD6B55",
            		confirmButtonText: "是的, 不后悔!",
            		cancelButtonText: "算了, 再想想!",
            		closeOnConfirm: false,
            		closeOnCancel: false
            	}, function(isConfirm){
            		if (isConfirm) {
            			swal("成功!", "删除成功,再也找不回来了.", "success");

            				$("#searchForm").attr('action', url).submit();

            		} else {
            			swal("取消", "吓死了,幸亏没删了!", "error");
            		}
            	});
            });

		})

        function getFontCss(treeId, treeNode) {
            return (!!treeNode.highlight) ? {color:"#A60000", "font-weight":"bold"} : {color:"#333", "font-weight":"normal"};
        }

		function onClick(e, treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("tree"),
					nodes = zTree.getSelectedNodes(),
					v = "";
					id="";
                    classifynum="";
                    name2="";
                    classifyabbr="";
			nodes.sort(function compare(a,b){return a.id-b.id;});
			for (var i=0, l=nodes.length; i<l; i++) {
				v += nodes[i].name + ",";
				id += nodes[i].id + ",";
                classifynum += nodes[i].classifynum + ",";
                name2 += nodes[i].name + ",";
                classifyabbr += nodes[i].classifyabbr + ",";
			}
			if (v.length > 0 ) v = v.substring(0, v.length-1);
			if (id.length > 0 ) id = id.substring(0, id.length-1);
            if (classifynum.length > 0 ) classifynum = classifynum.substring(0, classifynum.length-1);
            if (name2.length > 0 ) name2 = name2.substring(0, name2.length-1);
            if (classifyabbr.length > 0 ) classifyabbr = classifyabbr.substring(0, classifyabbr.length-1);

			//classifynum name classifyabbr
			var nodeName = $("#nodeName");
			nodeName.attr("value", v);
			$("#id").val(id);
            $("#classifynum").val(classifynum);
            $("#name2").val(name2);
            $("#classifyabbr").val(classifyabbr);
		}

	</script>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert"><h2>物资管理</h2></div>
						 <!-- ------------按钮组 end------------ -->
						<div class="form-group">
							<div class="col-sm-4">
								<table class="table table-striped table-bordered table-hover table-condensed " >
									<div class="btn-group hidden-xs" role="group">

										<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="smscke/materialstype/create.jsp">
											<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
										</button>
										<button type="button" class="btn btn-success" data-toggle="modal" id="queryByName" name="">
											<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>查询
										</button>
											<button type="button" class="btn btn-danger" data-toggle="modal" id="deleteMaterial" name="tree/delete.do">
												<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
											</button>
									</div>
                                    <div class="col-sm-4">
                                        <input class="form-control" id="name" value="" type="text" />
                                    </div>
									<ul id="tree" class="ztree"></ul>
								</table>
							</div>
							<div class="form-group">

								<div class="col-sm-8">
									<div class="ibox float-e-margins">
										<form action="${path}/tree/update.do" method="post" class="form-horizontal" role="form">
											<input type="hidden" id="id" name="id" value="${typeEntity.id}" />
											<div class="col-sm-2">
											<%--<input class="form-control" type="text" id="nodeName" name="nodeName"/>--%>
											</div>
											<div class="alert alert-success" role="alert"><h3>物资基本信息</h3></div>

                                            <label class="col-sm-4 control-label" for="ds_host">分类编号:</label>
											<label class="col-sm-2 control-label" for="ds_host"></label>
											<label class="col-sm-4 control-label" for="ds_host">分类名称:</label>
											<label class="col-sm-2 control-label" for="ds_host"></label>
											<div class="col-sm-4">
												<input class="form-control" type="text" id="classifynum" name="classifynum" value="${typeEntity.classifynum}" disabled/>
											</div>
											<label class="col-sm-2 control-label" for="ds_host"></label>
											<div class="col-sm-4">
												<input class="form-control" type="text" id="name2" name="name2" value="${typeEntity.name}"/>
											</div>
											<label class="col-sm-2 control-label" for="ds_host"></label>

											<label class="col-sm-4 control-label" for="ds_host">分类简写:</label>
											<label class="col-sm-8 control-label" for="ds_host">&nbsp;</label>
											<div class="col-sm-4">
												<input class="form-control" type="text" id="classifyabbr" name="classifyabbr" value="${typeEntity.classifyabbr}"/>
											</div>

                                            <div class="form-group">
												<label class="col-sm-12 control-label" for="ds_host"></label>
                                                <label class="col-sm-4 control-label" for="ds_host"></label>
                                                <div class="col-sm-4">
                                                    <input type="submit" value="保存分类" class="btn btn-primary"/>
                                                </div>
                                            </div>
										</form>
								</div>

							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
	</body>
</html>
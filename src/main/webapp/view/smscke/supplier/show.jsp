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
        <form action="${path }/supplier/update.do" method="post" class="form-horizontal" role="form">
            <input type="hidden" name="supplierId" id="supplierId" value="${supplierEntity.supplierId}"/>
            <fieldset>
                <legend>供应商修改</legend>
                <div class="row">
                    <label class="col-sm-1 control-label" for="ds_host">供应商类型</label>
                    <div class="col-sm-4" >
                        <td>${supplierEntity.supplierShop == 0?"外部供应商":"内部供应商"}</td>
                    </div>
                    <div class="col-sm-8">
                    </div>
                </div>

                <div class="row" style="margin-top:25px">
                </div>

                <div class="row">
                    <label class="col-sm-1 control-label" for="ds_host">供应商名称</label>
                    <div class="col-sm-3">
                        <td>supplierEntity.supplierName</td>
                    </div>
                    <label class="col-sm-1 control-label" for="ds_host">供应商分类</label>
                    <div class="col-sm-3">
                            <td> ${supplierEntity.supplierClassify}</td>
                        <%--                        <zhg:select codeTp="suptype" name="supplierClassify" cls="form-control" def="true" value="${suplierEntity.supplierClassify}"></zhg:select>--%>

                    </div>
                </div>

                <div class="row" style="margin-top:25px">
                </div>

                <div class="row">
                    <label class="col-sm-1 control-label" for="ds_host">供应商简称</label>
                    <div class="col-sm-3">
                        <td>${supplierEntity.supplierShortened}</td>
                    </div>

                    <label class="col-sm-1 control-label" for="ds_host">法人</label>
                    <div class="col-sm-3">
                        <td>${supplierEntity.supplierCorporation}</td>
                    </div>

                    <label class="col-sm-1 control-label" for="ds_host">法人电话</label>
                    <div class="col-sm-3">
                        <td>${supplierEntity.supplierLegalPersonPhone}</td>
                    </div>
                </div>

                <div class="row" style="margin-top:25px">
                </div>

                <div class="row">
                    <label class="col-sm-1 control-label" for="ds_host">供应商地址</label>
                    <div class="col-sm-3">
                        <td>${supplierEntity.supplierSite}</td>
                    </div>

                    <label class="col-sm-2 control-label" for="ds_host">社会统一信任代码</label>
                    <div class="col-sm-3">
                        <td>${supplierEntity.supplierTrustedCode}</td>
                    </div>
                </div>

                <div class="row" style="margin-top:25px">
                </div>


                <div class="row">
                    <label class="col-sm-1 control-label" for="ds_host">联系人</label>
                    <div class="col-sm-3">
                        <td>${supplierEntity.supplierLinkman}</td>
                    </div>

                    <label class="col-sm-1 control-label" for="ds_host">联系人电话</label>
                    <div class="col-sm-3">
                        <td>${supplierEntity.supplierPhone}</td>
                    </div>

                    <label class="col-sm-1 control-label" for="ds_host">联系人邮箱</label>
                    <div class="col-sm-3">
                        <td>${supplierEntity.supplierEmail}</td>
                    </div>

                    <div class="row" style="margin-top:50px">
                    </div>


                    <div class="row">
                        <label class="col-sm-1 control-label" for="ds_host">启用门户</label>
                        <div class="col-sm-3">
                            <td>   ${supplierEntity.supplierShop == 1?"√":""}> </td>
                        </div>

                        <label class="col-sm-1 control-label" for="ds_host">必须合同</label>
                        <div class="col-sm-3">
                            <td> ${supplierEntity.supplierContract == 1?"√":""}</td>
                        </div>
                    </div>

                </div>
            </fieldset>
            <div class="row" style="margin-top:50px">
            </div>
            <fieldset>
                <div class="form-group">
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



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
	
    <!-- jquery -->
    <script type="text/javascript" src="resources/jquery/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap -->
    <script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
    <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/dashboard.css" rel="stylesheet">
    <link href="resources/css/sticky-footer.css" rel="stylesheet">   
    <link href="resources/favicon.ico" rel="shortcut icon"/>
    <!-- fileInput -->
    <link href="resources/fileInput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="resources/fileInput/js/plugins/canvas-to-blob.min.js"></script>
    <script type="text/javascript" src="resources/fileInput/js/plugins/sortable.min.js"></script>
    <script type="text/javascript" src="resources/fileInput/js/plugins/purify.min.js"></script>
    <script type="text/javascript" src="resources/fileInput/js/fileinput.min.js"></script>
    <script type="text/javascript" src="resources/fileInput/themes/fa/theme.js"></script>
    <script type="text/javascript" src="resources/fileInput/js/locales/zh.js"></script>
   <!-- table -->    
    <link rel="stylesheet" href="resources/bootstrap-table/bootstrap-table.css">
    
    <script type="text/javascript" src="resources/tree/bootstrap-treeview.min.js"></script>
   
    <script src="resources/bootstrap-table/bootstrap-table.js"></script>
    <!-- put your locale files after bootstrap-table.js -->
    <script src="resources/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
    
    <!-- bootstrap-select -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>

	<!-- uedtior -->
    <script type="text/javascript" src="resources/utf8-jsp/ueditor.config.js"></script>
	<script type="text/javascript" src="resources/utf8-jsp/ueditor.all.js"></script>
	<script type="text/javascript" src="resources/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
	
    <script type="text/javascript" src="resources/js/productstype.js"></script>
  
</head>
<body>

  <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Luna</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">       
            
            
            <li><a href="#">欢迎：${sessionScope.user.remark}</a></li>
            <li><a href="logout">退出</a></li>
          </ul>
         
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <div id="tree"></div>
            
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="sub-header"><a href="toStaffInfo" style="text-decoration: none;">商品类别管理</a></h1>

      

<div class="panel-group" id="panel-642522">
			<h2 class="sub-header"></h2>
           <div class="table-responsive">
            <div id="toolbar" class="btn-group">
                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#addModal" title="创建任务">
                    <i class="glyphicon glyphicon-plus">新增</i>
                </button>
            </div>
            <table id="bmProductsTypeTable"
                   class="table table-striped"
                   data-toggle="table" 
                   data-toolbar="#toolbar"
                   data-show-refresh="true"
                   data-show-toggle="true"
                   data-show-columns="true"
                   data-show-export="true"
                   data-detail-view="false"
                   data-detail-formatter="detailFormatter"
                   data-height="562"
                   data-url="queryBmProductsType"
                   data-pagination="true"
                   data-method="post"
                   data-page-list="[5, 10, 20, 50]"
                   data-search="true">
                <thead>
                   <tr>
                    <!-- <th data-field="state" data-checkbox="true"></th> -->
                    <th data-field="id" data-align="center" >编号</th>
                    <th data-field="carouselPath" data-align="center" data-formatter="pictureFormatter">图</th>
                    <th data-field="type" data-align="center">名字</th>
                    <th data-field="" data-formatter="operationFormatter">备注信息</th>
                </tr>
                </thead>
            </table>
          </div>  
		 
		  
		  </div>
		  
        </div>
      </div>
      
    </div>
    
    <footer class="footer">
      <div class="container">
        <p class="text-muted">Place sticky footer content here.</p>
      </div>
    </footer>
  
    <!-- 修改商品信息 -->
  <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title" id="myModalLabel">修改商品信息</h4>
          </div>
          <div class="modal-body">
              <form  class="form-horizontal" role="form" method="post">
                  
                  <div class="form-group">
                    <label for="productId2" class="col-sm-3 control-label">商品编号</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="productId2" placeholder="">
                    </div>
                  </div>
                
                  <div class="form-group">
                    <label for="productPicture2" class="col-sm-3 control-label">商品图片</label>
                    <div class="col-sm-8">
                    		<img id="productPicture2" src="" width="100" height="100">
                           <input type="file" class="file" id="productPicture3" multiple> 
                    </div>                  
                  </div>
                  
                
                  <div class="form-group">
                    <label for="productName2" class="col-sm-3 control-label">商品名称</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="productName2" placeholder="">
                    </div>
                   
                  </div>
                  
                  <hr>
                  
                  <div class="form-group">
                    <label for="productPrice2" class="col-sm-3 control-label">商品价格</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="productPrice2" placeholder="">         
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label for="productCount2" class="col-sm-3 control-label">商品数量</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="productCount2" placeholder="">         
                    </div> 
                  </div>
                  
                   <div class="form-group">
                    <label for="productType2" class="col-sm-3 control-label">商品归属类</label>
                    <div class="col-sm-8">
                      <select class="selectpicker form-control" id="productType2">
                      	<option value=""></option>
                      	<option value="0">威士忌</option>
                      	<option value="1">伏特加</option>
                      	<option value="2">力娇酒</option>
                      	<option value="3">龙舌兰</option>
                      	<option value="4">啤酒</option>
                      	<option value="5">红酒</option>
                      </select>
                    </div>
                  </div>
                  
                  <hr>    
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            <button type="button" class="btn btn-primary" onclick="alterProductInfo()">提交</button>
          </div>
      	 </form>
       	</div>
        </div>
      </div>
    </div>
</body>
</html>
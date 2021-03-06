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
	
    <script type="text/javascript" src="resources/js/carousel.js"></script>
  
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
          <h1 class="sub-header"><a href="toStaffInfo" style="text-decoration: none;">轮播图管理</a></h1>

      

<div class="panel-group" id="panel-642522">
			<h2 class="sub-header"></h2>
           <div class="table-responsive">
            <div id="toolbar" class="btn-group">
                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#uploadModal" title="创建任务">
                    <i class="glyphicon glyphicon-plus">上传</i>
                </button>
            </div>
            <table id="bmCarouselsTable"
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
                   data-url="queryBmCarousels"
                   data-pagination="true"
                   data-method="post"
                   data-page-list="[5, 10, 20, 50]"
                   data-search="true">
                <thead>
                <tr>
                    <!-- <th data-field="state" data-checkbox="true"></th> -->
                    <th data-field="id" data-align="center" >轮播图编号</th>
                    <th data-field="carouselPath" data-align="center" data-formatter="pictureFormatter">轮播图</th>
                    <th data-field="type" data-align="center">状态</th>
                    <th data-field="" data-formatter="operationFormatter">修改轮播图信息</th>
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
  
    <!-- 添加轮转图信息 -->
  <div class="modal fade" id="uploadModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title" id="myModalLabel">添加轮转图信息</h4>
          </div>
          <div class="modal-body">
              <form  class="form-horizontal" role="form" method="post">
               
                  <div class="form-group">
                    <label for="carouselPath1" class="col-sm-3 control-label">商品图片</label>
                    <div class="col-sm-8">
                           <input type="file" class="file" id="carouselPath1" multiple> 
                    </div>                  
                  </div>

          <div class="modal-footer">
           <div class="col-sm-8">
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            <button type="button" class="btn btn-primary" onclick="saveCarouselInfo()">提交</button>
         	</div>
          </div>
      	 </form>
       	</div>
        </div>
      </div>
    </div>
    <script type="text/javascript">
var picture;
 	 $("#carouselPath1").fileinput({
 		 	 uploadUrl:"uploadFile",
          uploadAsync:true, //默认异步上传
          showUpload: true, //是否显示上传按钮,跟随文本框的那个
          showRemove : true, //显示移除按钮,跟随文本框的那个
          showCaption: true,//是否显示标题,就是那个文本框
          showPreview : true, //是否显示预览,不写默认为true
          dropZoneEnabled: false,//是否显示拖拽区域，默认不写为true，但是会占用很大区域

           maxFileCount: 1, //表示允许同时上传的最大文件个数
           enctype: 'multipart/form-data',
           validateInitialCount:false,
           previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
           msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
           allowedFileTypes: ['image'],//配置允许文件上传的类型
           allowedPreviewTypes : [ 'image' ],//配置所有的被预览文件类型
           allowedPreviewMimeTypes : [ 'jpg', 'png', 'gif' ],//控制被预览的所有mime类型
           language : 'zh'
      });
      $("#carouselPath1").on("fileuploaded",function(event,data,previewId,index){
     	 		console.log(data);
     	 		picture=data.response.picturepath;
     	 		console.log(picture);
      });
      
      
 	 /**
 	  * 添加信息
 	  * @author chenyang
 	  * */
 	  function saveCarouselInfo(){  
 	      var param = { 
 	      		carouselPath:picture,
 	      		type:"0"
 	              }
 	       $.ajax({
 	           url: 'saveCarouselInfo',
 	           type: 'post',
 	           contentType: "application/json;charset=UTF-8",
 	           data: JSON.stringify(param),
 	           success: function (data,status) {
 	               $('#uploadModal').modal('hide');
 	               $('#bmCarouselsTable').bootstrapTable('refresh');
 	           }
 	      });
 	  }
 	 
 	 
</script>
</body>
</html>

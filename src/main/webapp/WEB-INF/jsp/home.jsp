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
	
    <script type="text/javascript" src="resources/js/home.js"></script>
  
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
          <h1 class="sub-header"><a href="toStaffInfo" style="text-decoration: none;">商品信息管理</a></h1>

      

<div class="panel-group" id="panel-642522">
			<h2 class="sub-header"></h2>
           <div class="table-responsive">
            <div id="toolbar" class="btn-group">
                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#addModal" title="创建任务">
                    <i class="glyphicon glyphicon-plus">新建</i>
                </button>
            </div>
            <table id="bmProductsTable"
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
                   data-url="queryBmProducts"
                   data-pagination="true"
                   data-method="post"
                   data-page-list="[5, 10, 20, 50]"
                   data-search="true">
                <thead>
                <tr>
                    <!-- <th data-field="state" data-checkbox="true"></th> -->
                    <th data-field="productId" data-align="center" >商品编号</th>
                    <th data-field="productPicture" data-align="center" data-formatter="pictureFormatter">商品图片</th>
                    <th data-field="productName" data-align="center">商品名称</th>
                    <th data-field="productPrice" data-align="center" >商品价格(／瓶)</th>
                    <th data-field="productCount" data-align="center">商品数量(／瓶)</th>
                    <th data-field="productType" data-align="center" data-formatter="typeFormatter">商品归属类</th>
                    <th data-field="productDescribe" data-align="center">商品描述</th>
                    <th data-field="" data-formatter="operationFormatter">修改商品信息</th>
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


<!-- 新增商品信息 -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog " style="width:1000px">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title" id="myModalLabel">新增商品</h4>
          </div>
          <div class="modal-body">
              <form  class="form-horizontal" role="form" method="post">
                  
                  <div class="form-group">
                    <label for="productId1" class="col-sm-3 control-label">商品编号</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="productId1" placeholder="">
                    </div>
                  </div>
                
                  <div class="form-group">
                    <label for="productPicture1" class="col-sm-3 control-label">商品图片</label>
                    <div class="col-sm-8">
                            <input type="file" class="file" id="productPicture1" multiple> 
                    </div>                  
                  </div>
                  
                
                  <div class="form-group">
                    <label for="productName1" class="col-sm-3 control-label">商品名称</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="productName1" placeholder="">
                    </div>
                   
                  </div>
                  
                  <hr>
                  
                  <div class="form-group">
                    <label for="productPrice1" class="col-sm-3 control-label">商品价格</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="productPrice1" placeholder="">         
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label for="productCount1" class="col-sm-3 control-label">商品数量</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="productCount1" placeholder="">         
                    </div> 
                  </div>
                  
                   <div class="form-group">
                    <label for="productType1" class="col-sm-3 control-label">商品归属类</label>
                    <div class="col-sm-8">
                     <select class="selectpicker dropup form-control" id="productType1" data-dropup-auto="false">
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
                  
                 
                  
                  <div class="form-group">
                    <label for="productDescribe1" class="col-sm-3 control-label">商品描述</label>
                    <div class="col-sm-8">                 
                       <!-- 加载编辑器的容器 -->
                       <textarea id="productDescribe1" row="3">aaaaaa</textarea>
     				<!-- 实例化编辑器 -->
   				   <script type="text/javascript">
        				
        				var ue = UE.getEditor('productDescribe1', {
        					toolbars: [
        				        [ 'fullscreen', 'source', 'undo', 'redo',
        				            'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 
        				            'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote',
        				            'pasteplain', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 
        				            'selectall', 'cleardoc',
        				            'rowspacingtop', 'rowspacingbottom', 'lineheight',
        				            'customstyle', 'paragraph', 'fontfamily', 'fontsize', 
        				            'directionalityltr', 'directionalityrtl', 'indent',
        				            'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify',  'touppercase', 'tolowercase',
        				            'link', 'unlink', 'anchor',  'imagenone', 'imageleft', 'imageright', 'imagecenter',
        				            'simpleupload', 'insertimage', 'emotion', 'scrawl', 'insertvideo', 'music',
        				            'attachment', 'map', 'gmap', 'insertframe', 
        				            'template', 'background',
        				            'horizontal', 'date', 'time', 'spechars',
        				            'print', 'preview', 'searchreplace', 'drafts']
        				    ],
        					elementPathEnabled: false, //删除元素路径
        			        wordCount: false,    //删除字数统计
        			        
        			    });			
   					 </script>
   					 
                  </div>
          </div>      
          
          <div class="modal-footer">
          <div class="col-sm-8">
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            <button type="button" class="btn btn-primary" onclick="saveProductInfo()">提交</button>
          </div>
          </div>
      	 </form>
       	</div>
        </div>
      </div>
    </div>
    
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
                  
                  <div class="form-group">
                    <label for="productDescribe2" class="col-sm-3 control-label">商品描述</label>
                    <div class="col-sm-8">
                        <textarea class="form-control" rows="3" id="productDescribe2"></textarea></div>
                  </div>
                
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            <button type="button" class="btn btn-primary" onclick="alterProductInfo()">提交</button>
          </div>
      	 </form>
       	</div>
        </div>
      </div>
    </div>
    
 <script type="text/javascript">
               var picture;
                	 $("#productPicture1").fileinput({
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
                     $("#productPicture1").on("fileuploaded",function(event,data,previewId,index){
                    	 		console.log(data);
                    	 		picture=data.response.picturepath;
                    	 		console.log(picture);
                     });
                     
                     
                	 /**
                	  * 添加商品信息
                	  * @author chenyang
                	  * */
                	  function saveProductInfo(){  
                		  var content = UE.getEditor('productDescribe1')
                           .getContent()
                           .replace(/\[b\]([^\[]*?)\[\/b\]/igm, '<b>$1</b>')
                           .replace(/\[i\]([^\[]*?)\[\/i\]/igm, '<i>$1</i>')
                           .replace(/\[u\]([^\[]*?)\[\/u\]/igm, '<u>$1</u>')
                           .replace(/\[url=([^\]]*)\]([^\[]*?)\[\/url\]/igm, '<a href="$1">$2</a>')
                           .replace(/\[img\]([^\[]*?)\[\/img\]/igm, '<img src="$1" />');
                	      var param = {
                	      		productId:$('#productId1').val(),
                	      		productName:$('#productName1').val(),
                	      		productType:$('#productType1').val(),
                	      		productPicture:picture,
                	      		productPrice:$('#productPrice1').val(),
                	      		productCount:$('#productCount1').val(),
                	      		productDescribe:content
                	              }
                	       $.ajax({
                	           url: 'saveProductInfo',
                	           type: 'post',
                	           contentType: "application/json;charset=UTF-8",
                	           data: JSON.stringify(param),
                	           success: function (data,status) {
                	               $('#addModal').modal('hide');
                	               $('#bmProductsTable').bootstrapTable('refresh');
                	           }
                	      });
                	  }
                	 
                	 
                	 
                	 
                	  var picture1;
                	   	 $("#productPicture3").fileinput({
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
                	        $("#productPicture3").on("fileuploaded",function(event,data,previewId,index){
                	       	 		console.log(data);
                	       	 		picture1=data.response.picturepath;
                	       	 		console.log(picture);
                	        });
                	   	 
                	        /**
                	         * 修改商品信息
                	         * */
                	      	function alterProductInfo(){
                	        		if(picture1==null){
                	      		var param={
                	      			productId:$('#productId2').val(),
                	      			productPicture:$('#productPicture2').val(),
                	      			productName:$('#productName2').val(),
                	      			productPrice:$('#productPrice2').val(),
                	      			productCount:$('#productCount2').val(),
                	      			productType:$('#productType2').val(),
                	      			productDescribe:$('#productDescribe2').val()
                	      		}
                	        		}else{
                	        			var param={
                            	      			productId:$('#productId2').val(),
                            	      			productPicture:picture1,
                            	      			productName:$('#productName2').val(),
                            	      			productPrice:$('#productPrice2').val(),
                            	      			productCount:$('#productCount2').val(),
                            	      			productType:$('#productType2').val(),
                            	      			productDescribe:$('#productDescribe2').val()
                            	      		}
                	        		}
                	      		$.ajax({
                	      			url:'alterProductInfo',
                	      			type:'post',
                	      			contentType:"application/json;charset=UTF-8",
                	      			data:JSON.stringify(param),
                	      			success:function(data,status){
                	      				$('#editModal').modal('hide');
                	      				alert("修改成功");
                	      				$("#bmProductsTable").bootstrapTable('refresh');
                	      			}
                	      		})
                	      	}
                	        
                	        
                    
</script>    
    
</body>
</html>
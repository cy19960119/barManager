 /**
   * home页面初始化
   */ 
$(function(){
		var treeObj;
	   
	    	treeObj = [
	    	           {"href":"toHome","selectable":false,"showCheckbox":false,"text":"商品信息管理"},
	    	           {"href":"toProductsType","selectable":false,"showCheckbox":false,"text":"商品类别管理"},
	    	           {"href":"toCheck","selectable":false,"showCheckbox":false,"text":"订单信息管理"},
	    	           {"href":"toCarousel","selectable":false,"showCheckbox":false,"text":"轮播图管理"}]
	   	$('#tree').treeview({data: treeObj,enableLinks: true});
    	
	 
	    
	  //初始化
	    $('.selectpicker').selectpicker();
	  
	   
	 
   });
   
/*------------------------------------------------------------------------------------------------*/ 
  /**
   * 商品类型
   * */
  function typeFormatter(vaule,row,index){
  	var result=row.productTypeid;
  	if(result=="0"){
  		result="威士忌";
  	}else if(result=="1"){
  		result="伏特加";
  	}else if(result=="2"){
  		result="力娇酒";
  	}else if(result=="3"){
  		result="龙舌兰";
  	}else if(result=="4"){
  		result="啤酒";
  	}else if(result=="5"){
  		result="红酒";
  	}
  	return result;
  }
  /**
   * 图片路径截取
   * */
  function pictureFormatter(value,row,index){
	  var key="barManager";
	  var str=value+'';
	  console.log(row);
	  var index=value.indexOf(key);
	  console.log(index);
	  var result=value.substr(index+11,value.length);
	  console.log(result);
	  var html='<img src="'+result+'"width="100" height="100">';
	  return html;
  }
  
  function subPicturePath(value){
	  var key="barManager";
	  var str=value+'';
	  console.log(str);
	  var index=value.indexOf(key);
	  var result=value.substr(index+11,value.length);
	  console.log(result); 
	  return result;
  }
  
/*------------------------------------------------------------------------------------------------*/   


/**
* 修改按钮
*/
	function operationFormatter(value, row, index) {
		var html = '<button type="button" id="cog'+index+'" class="btn btn-default btn-sm" title="修改信息">'
				+ '<i class="glyphicon glyphicon-cog"></i>'
				+ '</button>';

		$("#bmProductsTable").off("click", "#cog" + index);
		$("#bmProductsTable").on("click", "#cog" + index, row, function(event) {
			config(row);
		});

		return html;
	}
	/* 修改任务模态框 */
	function config(row) {
		$('#productId2').val(row.id);
		$('#productPicture2').attr('src',subPicturePath(row.productPicture));
		$('#productPicture2').val(row.productPicture);
		$('#productName2').val(row.productName);
		$('#productPrice2').val(row.productPrice);
		$('#productCount2').val(row.productCount);
		$('#productTypeid2').selectpicker('val',row.productTypeid);
		$('#productDescribe2').val(row.productDescribe);
		
		$("#editModal").modal('show');

	}
/*---------------------------------------------------------------------------------------------*/	
  
  
  
 /*-------------------------------------------------------------------------------*/  
  
 /**
 *定义的方法事件
 */
 
 //按条件查询
  function  queryByCondition(){
  	$('#staffInfoTable').bootstrapTable('refresh',{
  		url:"queryByCondition",
  					query:{
  						departmentId:$('#depName').val(),
  						staffNumber:$('#staffNumber').val(),
  						name:$('#name').val(),
  						isProbation:$('#isProbation').val(),
  						isLeave:$('#isLeave').val()
  					}
  				}
  		);
  }

 
  
  
 
  
 
/*------------------------------------------------------------------------------------------*/   

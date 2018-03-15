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
  	var result=row.productType;
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
	  var key="barManager/";
	  var str=value+'';
	  console.log(str);
	  var index=value.indexOf(key);
	  var result=value.substr(index+11,value.length);
	  console.log(result);
	  var html='<img src="'+result+'"width="100" height="100">';
	  return html;
  }
  
  function subPicturePath(value){
	  var key="barManager/";
	  var str=value+'';
	  console.log(str);
	  var index=value.indexOf(key);
	  var result=value.substr(index+11,value.length);
	  console.log(result); 
	  return result;
  }
/*------------------------------------------------------------------------------------------------*/   

/**
* select选择框onclick点击事件
*/
  function changeCoefficeient1(){
  	if($('#isProbation1').val()=="0"){
  	$('#coefficeient1').val("1.0");
  	}else if($('#isProbation1').val()=="1"){
  		$('#coefficeient1').val("0.8");
  	}else if($('#coefficeient2').val()=="2"){
  		$('#coefficeient1').val("请输入自定义系数");
  	}
  	
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
		$('#productId2').val(row.productId);
		$('#productPicture2').attr('src',subPicturePath(row.productPicture));
		$('#productPicture2').val(row.productPicture);
		$('#productName2').val(row.productName);
		$('#productPrice2').val(row.productPrice);
		$('#productCount2').val(row.productCount);
		$('#productType2').selectpicker('val',row.productType);
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

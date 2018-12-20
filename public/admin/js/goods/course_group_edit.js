/**
 * 添加课程标签
 */

//模块输入信息验证
function verify(group_name,group_dec){
	if(group_name == ''){
		$("#group_name").parent().next().show();
		$("#group_name").focus();
		return false;
	}else{
		$(".error").hide();
	}
	return true;
}

var flag = false;//防止重复提交
//添加模块
function addGoodsGroupAjax() {
	var group_name = $("#group_name").val();
	var sort = $("#sort").val();
//	if($("#is_visible").prop("checked")){
//		var is_visible = 1;
//	}else{
//		var is_visible = 0;
//	}
	var is_visible = 1;
	var group_pic = $("#group_pic").val();
	var group_dec = $("#group_dec").val();
	
	if(verify(group_name,group_dec)){
		if(flag){
			return false;
		}
		flag = true;
		$.ajax({
			type : "post",
			url : __URL(ADMINMAIN+"/course/addcoursegroup"),
			data : {
				'group_name' : group_name,
				'sort' : sort,
				'is_visible' : 1,
				'group_pic' : group_pic,
				'group_dec' : group_dec
			},
			success : function(data) {
				if (data["code"] > 0) {
					showTip("课程标签添加成功","success");
					location.href = __URL(ADMINMAIN+'/course/coursegrouplist');
				}else{
					showTip("课程标签添加失败","error");
					flag = false;
				}
			}
		});
	}
}
//修改模块
function updateGoodsCategoryAjax() {
	var group_id = $("#group_id").val();
	var group_name = $("#group_name").val();
	var sort = $("#sort").val();
	var group_pic = $("#group_pic").val();
	var group_dec = $("#group_dec").val();
	
//	if($("#is_visible").prop("checked")){
//		var is_visible = 1;
//	}else{
//		var is_visible = 0;
//	}
	var is_visible = 1;
	if(verify(group_name,group_dec)){
		if(flag){
			return false;
		}
		flag =true;
		$.ajax({
			type : "post",
			url : __URL(ADMINMAIN+"/course/updatecoursegroup"),
			data : {
				'group_id' : group_id,
				'group_name' : group_name,
				'sort' : sort,
				'is_visible' : 1,
				'group_pic' : group_pic,
				'group_dec' : group_dec
			},
			success : function(data) {
				if (data["code"] > 0) {
					showTip("课程标签修改成功","success");
					location.href = __URL(ADMINMAIN+'/course/coursegrouplist');
				}else{
					showTip("课程标签修改失败","error");
					flag = false;
				}	
			}
		});
	}
}

//图片上传
function imgUpload(event) {
	var fileid = $(event).attr("id");
	var id = $(event).next().attr("id");
	var data = { 'file_path' : UPLOADGOODSGROUP };
	uploadFile(fileid,data,function(res){
		if(res.code){
			$("#"+id).val(res.data);
			$("#text_" + id).val(res.data);
			$("#preview_" + id).attr("data-src",__IMG(res.data));
			showTip(res.message,"success");
		}else{
			showTip(res.message,"error");
		}
	});
}

function PopUpCallBack(img_id,img_src){
	$("#imgLogo").attr("src",__IMG(img_src));
	$("#group_pic").val(img_id);
}
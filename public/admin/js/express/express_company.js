/**
 * 物流公司列表
 */
function LoadingInfo(page_index) {
	var search_text = $("#search_text").val();
	$.ajax({
		type : "post",
		url : __URL(ADMINMAIN+"/express/expresscompany"),
		data : {
			"page_index" : page_index,
			"page_size" : $("#showNumber").val(),
			"search_text" : search_text
		},
		success : function(data) {
			if (data["data"].length > 0) {
				$(".style0list tbody").empty();
				for (var i = 0; i < data["data"].length; i++) {
					var html = '';
					html += '<tr align="center">';
						html += '<td><i class="checkbox-common"><input name="sub" type="checkbox" value="'+ data['data'][i]['co_id']+'" ></i></td>';
						
					if(data["data"][i]["express_logo"] != null &&data["data"][i]["express_logo"] !=''){
						html += '<td align="left" class="tal"><img src="'+__IMG(data["data"][i]["express_logo"]) +'" style="margin-right:10px;max-width:60px;max-height:60px;"/>' + data["data"][i]["company_name"] + '</td>';
					}else{
						html += '<td align="left" class="tal">' + data["data"][i]["company_name"] + '</td>';
					}
					
						html += '<td align="left" class="tal">' + data["data"][i]["express_no"] + '</td>';
						html += '<td align="left" class="tal">' + data["data"][i]["phone"] + '</td>';
						if(data["data"][i]["is_default"]==1){
							html += '<td class="tal">是</td>';
						}else{
							html += '<td class="tal">否</td>';
						}

						html += data["data"][i]["is_enabled"] == 0 ? '<td style="color:red;">未启用</td>' : '<td style="color:green;">启用</td>';
						html += '<td>' + data["data"][i]["orders"] + '</td>';
						html += '<td><a href="'+__URL(ADMINMAIN+'/express/expresstemplate?co_id='+ data["data"][i]["co_id"])+'">打印模板</a>&nbsp;&nbsp;';
							html += '<a href="'+__URL(ADMINMAIN+'/express/updateexpresscompany?co_id='+ data["data"][i]["co_id"])+ '">修改</a><br/>';
							html += '<a href="'+__URL(ADMINMAIN+'/express/freighttemplatelist?co_id='+ data["data"][i]["co_id"])+'">运费模板</a>&nbsp;&nbsp;';
							html += '<a style="cursor: pointer;" onclick="DelExpressCompany('+data["data"][i]["co_id"]+')">删除</a></td>';
							
					html += '</tr>';
					$(".style0list tbody").append(html);
				}
			} else {
				var html = '<tr align="center"><td colspan="8">暂无符合条件的数据记录</td></tr>';
				$(".style0list tbody").html(html);
			}
			initPageData(data["page_count"],data['data'].length,data['total_count']);
			$("#pageNumber").html(pagenumShow(jumpNumber,$("#page_count").val(),pageshow));
		}
	});
}

//全选
function CheckAll(event){
	var checked = event.checked;
	$(".table-class tbody input[type = 'checkbox']").prop("checked",checked);
	if(checked) $(".table-class tbody input[type = 'checkbox']").parent().addClass("selected");
	else $(".table-class tbody input[type = 'checkbox']").parent().removeClass("selected");
}

function searchData(){
	LoadingInfo(1);
}

function batchDelete() {
	var co_id= new Array();
	$("#productTbody input[type='checkbox']:checked").each(function() {
		if (!isNaN($(this).val())) {
			co_id.push($(this).val());
		}
	});
	if(co_id.length ==0){
		$( "#dialog" ).dialog({
			buttons: {
				"确定,#e57373": function() {
					$(this).dialog('close');
				}
			},
			contentText:"请选择需要操作的记录",
			title:"消息提醒",
		});
		return false;
	}
	DelExpressCompany(co_id);
}

function DelExpressCompany(co_id){
	$( "#dialog" ).dialog({
		buttons: {
			"确定": function() {
				$(this).dialog('close');
				$.ajax({
					type : "post",
					url : __URL(ADMINMAIN+"/express/expresscompanydelete"),
					data : { "co_id" : co_id.toString() },
					dataType : "json",
					success : function(data) {
						if (data["code"] > 0) {
							LoadingInfo(getCurrentIndex(co_id,'#productTbody'));
							showTip(data["message"],'success');
						}else{
							showTip(data["message"],'error');
						}
					}
				})
			},
			"取消,#f5f5f5,#666": function() {
				$(this).dialog('close');
			}
		},
		contentText:"删除物流公司，将同时删除该物流公司下的运费模板与打印模板，是否删除物流公司？",
	});
}
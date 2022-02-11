
$(document).ready(function() {

	$('.preview_tab .tab').each(function() {
		if( $(this).attr('data-idx') == board_id) {
			$(this).addClass('tab_ov') ;
		}
	});

	$(document).on("click",".clickq",clickqHandler) ;
	$(document).on("click",".go_link",goHandler) ;
	$(document).on("click","#btn-search",searchHandler) ;
	$(document).on("click","#btn-ok",okHandler) ;
	$(document).on("click","#btn-cancel",cancelHandler) ;
	$(document).on("click","#btn-addfile-x",addfileXHandler) ;
	$(document).on("click",".thumbnails",thumbHandler) ;
	$(document).on("click","#btn-delete",deleteHandler) ;
	$(document).on("click","#btn-modify",modifyHandler) ;
	$(document).on("click","#btn-ok1",ok1Handler) ;
	$(document).on("click","#btn-ok2",ok2Handler) ;
	$(document).on("click","#btn-cancel1",cancel1Handler) ;
	$(document).on("click","#btn-cancel2",cancel2Handler) ;
	$(document).on("click","#btn-comment1",comment1Handler) ;
	$(document).on("click","#btn-comment2",comment2Handler) ;

	$(document).on('click','#btn-write',function(e) {
		var f = document.applyform ;
		var thumbnail = document.applyform.thumbnail.value;

		if( f.subject.value.length < 2) {
		  alert("제목을 입력해 주세요.") ;
		  f.subject.focus() ;
		  return ;
		}

		if( f.writer.value.length < 2) {
		  alert("작성자를 입력해 주세요.") ;
		  f.writer.focus() ;
		  return ;
		}
			
		if( f.passwd.value.length < 4) {
		  alert("비밀번호를 입력해 주세요.\n비밀번호는 4자리 이상 입니다.") ;
		  f.passwd.focus() ;
		  return ;
		}
		/*if( board_type=="IMAGE" && f.thumbnail.value.length < 4) {
			alert("대표이미지를 선택해 주세요.") ;
			return ;	
		}*/
		var data = CKEDITOR.instances.contents.getData();
		document.applyform.contents.value = data ;
    
		if( document.applyform.contents.value.length < 4) {
		  alert("내용을 입력해 주세요.") ;
		  $("#contents").focus() ;
		  return ;
		}

		if( $("#ltm_code").val().length < 5) {
			alert("자동글 방지 문구를 입력해 주세요.") ;
			$("#ltm_code").focus() ;
			return ;
		}

		if($(".thumbnails").first().attr('src') != undefined && thumbnail == "") {
	  		var img = $(".thumbnails").first().attr('src');
	   		document.applyform.thumbnail.value = img ;
		}

		var options = {
    		type:'POST',
			url:'/include/xhr/ajax.php',
			error:function(xhr, ajaxOptions, thrownError) {
				alert(ajaxOptions+","+thrownError) ;
			},
			success: function(data,textStatus) {
				console.log(data);
      			if( data.search("OKOK") > -1) {
      				alert("정상적으로 등록되었습니다.") ;
      				if(board_type=="IMAGE"){
						location.replace("image.html?biz_code="+biz_code+"&board_id="+board_id+"&board_type="+board_type) ;
					}else if(board_type=="NOTICE"){
						location.replace("list.html?biz_code="+biz_code+"&board_id="+board_id+"&board_type="+board_type) ;
					}

      			}
				else if (data.search('auto_error') > -1) {
					alert('자동방지 문구가 맞지 않습니다.');
					location.reload();
				}
				else if (data.search('block_ip') > -1) {
					alert('차단된 IP이거나 금지된 단어가 포함되어 있습니다.');
					location.reload();
				}
				else {
        			alert(data) ;
      				//console.log(data) ;
				}
			}
		};
    	$("#applyform").ajaxSubmit(options) ;
	});

}) ;


function thumbHandler() {
	$(".thumbnails").css('border','none') ;
	$(this).css('border','2px solid #ff3300') ;

	var img = $(this).attr('src') ;
	document.applyform.thumbnail.value = img ;
}


if( window.console == undefined) {
  console = {log:function(){}}
}


function addfileXHandler() {
  document.applyform.addfile.value = "" ;
  document.applyform.addfile_name.value = "" ;
  $("#addfile-name").empty() ;
  $("#file_upload").show() ;
}


function setDefaultFont() {
  var sDefaultFont = '궁서';
  var nFontSize = 24;
  oEditors.getById["contents"].setDefaultFont(sDefaultFont, nFontSize);
}


function pasteImg(img) {
	var sHTML = "<img src='"+img+"' />" ;
	oEditors.getById["contents"].exec("PASTE_HTML", [sHTML]);

	var thumb = "<img src='"+img+"' width='80' height='60' style='margin:4px;' class='thumbnails' />" ;
	$("#thumb-list").append(thumb) ;
}

function photoHandler() {
	var modal = "<div id='modal' style='overflow:hidden;'><iframe src='/include/editor/photo_uploader.html?biz_code="+biz_code+"' width='300' height='300' frameborder='0' scroll='no'></iframe></div>";
	var dialogOpt = {
		title:'이미지업로드',
		width:330,
		height:320,
		dialogClass:'fixed-dialog'
	} ;

	$(modal).dialog(dialogOpt) ;

}


function dialogClose() {
	$('.ui-dialog-content').dialog('close');
}


function okHandler() {
	
	if( $("#d-passwd").val() == "") {
		alert("비밀번호를 입력해 주세요.") ;
		$("#d-passwd").focus();
		return ;
	}

	var passwd = $("#d-passwd").val() ;
	var idx = $("#d-idx").val() ;
	var w = $("#w").val() ;

	$.ajax({
		type: "POST",
		url: "/include/xhr/ajax.php",
		data:{
			"bbs_mode":"PASSWD_CHECK",
			"sub_mode":"BBS_VIEW",
			"biz_code":biz_code,
			"board_id":board_id,
			"board_type":board_type,
			"idx":idx,
			"passwd":passwd
		},
		error:function(xhr, ajaxOptions, thrownError) {
		  alert(ajaxOptions+","+thrownError) ;
		},
		success:function(data, textStatus) {
			if( data.search("OKOK") > -1) {
				location.href = "view.html?biz_code="+biz_code+"&board_id="+board_id+"&board_type="+board_type+"&idx="+idx ;
			}
			else {
				alert("비밀번호가 맞지 않습니다.") ;
			}
		}
	});
	
}

function cancelHandler() {
	$("#mydialog").dialog('close') ;
}

function searchHandler() {
	var f = document.applyform ;
	if( f.field.selectedIndex == 0) {
		alert("검색조건을 선택해 주세요.") ;
		f.field.focus() ;
		return false ;
	}

	if( f.searchval.value.length < 2) {
		alert("검색어를 입력해 주세요.") ;
		f.searchval.focus() ;
		return false ;
	}

	f.submit() ;
}

function clickqHandler() {
	
	var v = $(this).siblings(".faq_body").css('display') ;

	if( v == "none") {
		$(this).siblings(".faq_body").fadeIn() ;
	}
	else {
		$(this).siblings(".faq_body").fadeOut() ;
	}
}


function goHandler(e) {
	e.preventDefault(e) ;

	var x = e.pageX;
	var y = e.pageY;

	var idx = $(this).attr('id') ;
	$("#d-idx").val(idx) ;

	var dialogOpt = {
		modal:true,
		title:'비밀번호 입력',
		dialogClass:'fixed-dialog'
	} ;

	$ ("#mydialog").dialog(dialogOpt) ;
}


function comment1Handler(e) {
	e.preventDefault() ;

	var f = document.commentform ;

	if( f.writer.value.length < 2) {
		alert("작성자 이름을 입력해 주세요.") ;
		f.writer.focus() ;
		return ;
	}

	if( f.passwd.value.length < 4) {
		alert("비밀번호를 입력해 주세요.") ;
		f.passwd.focus() ;
		return ;
	}

	if( f.autoinput2.value.length < 5) {
		alert("자동입력방지용 숫자를 입력해 주세요.") ;
		f.autoinput2.focus() ;
		return ;
	}

	if( f.autoinput.value != f.autoinput2.value) {
		alert("자동입력방지용 숫자를 정확히 입력해 주세요.") ;
		f.autoinput2.focus() ;
		return ;
	}

	if( f.comment.value.length < 2) {
		alert("내용을 입력해 주세요.") ;
		f.comment.focus() ;
		return ;
	}


	var options = {
		type:'POST',
		url:'/include/xhr/ajax.php',
		error:function(xhr, ajaxOptions, thrownError) {
			alert(ajaxOptions+","+thrownError) ;
		},
		success: function(data,textStatus) {
			if( data.search("OKOK") > -1) {
				alert("덧글이 등록되었습니다.") ;
				location.reload(true) ;
				/*
				$("#writer").val('') ;
				$("#passwd").val('') ;
				$("#autoinput2").val('') ;
				$("#comment").val('') ;
				//location.href = "comm-view.php?biz_code="+biz_code+"&board_id="+board_id+"&board_type="+board_type+"&idx="+idx ;
				var tmp = data.split("`") ;
				$(".comment_list").empty().html(tmp[1]) ;
				
				$("#passwd2").val('') ;
				$("#mydialog2").dialog('close') ;
				*/
			}
			else {
				alert(data) ;
			}
		}
	};
	
	$("#commentform").ajaxSubmit(options) ;


}



function comment2Handler(e) {

	if( $("#comment2").val().length < 2) {
		alert("내용을 입력해 주세요.") ;
		$("#comment2").focus() ;
		return ;
	}

	var c_idx = $("#c-idx").val() ;
	var w = $("#w").val() ;

	$.ajax({
		type: "POST",
		url: "/include/xhr/ajax.php",
		data:{
			"bbs_mode":"COMMENT_UPDATE",
			"biz_code":biz_code,
			"board_type":board_type,
			"contents":$("#comment2").val(),
			"idx":c_idx
		},
		error:function(xhr, ajaxOptions, thrownError) {
		  alert(ajaxOptions+","+thrownError) ;
		},
		success:function(data, textStatus) {
			
			if( data.search("OKOK") > -1) {
				location.href = "view.html?biz_code="+biz_code+"&board_id="+board_id+"&board_type="+board_type+"&idx="+idx+"&w="+w ;
			}
			else {
				alert(data) ;
			}
		}
	});



}


function deleteHandler(e) {
	
	$("#mode").val('BBS_DELETE') ;

	var dialogOpt = {
		modal:true,
		title:'비밀번호 입력',
		dialogClass:'fixed-dialog'
	} ;

	$ ("#mydialog").dialog(dialogOpt) ;
}


function modifyHandler(e) {
	
	$("#mode").val('BBS_UPDATE') ;

	var dialogOpt = {
		modal:true,
		title:'비밀번호 입력',
		dialogClass:'fixed-dialog'
	} ;

	$ ("#mydialog").dialog(dialogOpt) ;
}


function ok1Handler() {

	if( $("#d-passwd").val() == "") {
		alert("비밀번호를 입력해 주세요.") ;
		$("#d-passwd").focus();
		return ;
	}

	var passwd = $("#d-passwd").val() ;
	var idx = $("#d-idx").val() ;
	var w = $("#w").val() ;
	var sub_mode = $("#mode").val() ;

	$.ajax({
		type: "POST",
		url: "/include/xhr/ajax.php",
		data:{
			"bbs_mode":"PASSWD_CHECK",
			"sub_mode":sub_mode,
			"biz_code":biz_code,
			"board_type":board_type,
			"idx":idx,
			"passwd":passwd
		},
		error:function(xhr, ajaxOptions, thrownError) {
		  alert(ajaxOptions+","+thrownError) ;
		},
		success:function(data, textStatus) {
			
			if( data.search("OKOK") > -1) {

				if( sub_mode == "BBS_DELETE") {
					location.href = "list.html?biz_code="+biz_code+"&board_id="+board_id+"&board_type="+board_type ;
				}
				else if( sub_mode == "BBS_UPDATE") {
					location.href = "write.html?biz_code="+biz_code+"&board_id="+board_id+"&board_type="+board_type+"&idx="+idx+"&bbs_mode=UPDATE" ;
				}
			}
			else {
				//alert("비밀번호가 맞지 않습니다.") ;
				alert(data) ;
			}
		}
	});
	
}



function cancel1Handler() {
	$("#mydialog").dialog('close') ;
}

function cancel2Handler() {
	$("#passwd2").val('') ;
	$("#mydialog2").dialog('close') ;
}


function cmntUpdate(idx) {
	
	$("#mode2").val('COMMENT_UPDATE') ;
	$("#c-idx").val(idx) ;
	$("#c-block").val("cblock-"+idx) ;

	var dialogOpt = {
		modal:true,
		title:'비밀번호 입력',
		dialogClass:'fixed-dialog'
	} ;

	$ ("#mydialog2").dialog(dialogOpt) ;

}


function cmntDelete(idx) {
	
	$("#mode2").val('COMMENT_DELETE') ;
	$("#c-idx").val(idx) ;

	var dialogOpt = {
		modal:true,
		title:'비밀번호 입력',
		dialogClass:'fixed-dialog'
	} ;

	$ ("#mydialog2").dialog(dialogOpt) ;

}


function ok2Handler() {
	
	if( $("#passwd2").val() == "") {
		alert("비밀번호를 입력해 주세요.") ;
		$("#passwd2").focus();
		return ;
	}

	var passwd = $("#passwd2").val() ;
	var c_idx = $("#c-idx").val() ;
	var sub_mode = $("#mode2").val() ;

	$.ajax({
		type: "POST",
		url: "/include/xhr/ajax.php",
		data:{
			"bbs_mode":"PASSWD_CHECK",
			"sub_mode":sub_mode,
			"biz_code":biz_code,
			"board_type":board_type,
			"idx":g_idx,
			"c_idx":c_idx,
			"passwd":passwd
		},
		error:function(xhr, ajaxOptions, thrownError) {
		  alert(ajaxOptions+","+thrownError) ;
		},
		success:function(data, textStatus) {
			
			if( data.search("OKOK") > -1) {

				if( sub_mode == "COMMENT_DELETE") {
					// 댓글리스트 제출력 한다.
					$("#cblock-"+$("#c-idx").val()).fadeOut() ;
					$("#passwd2").val('') ;
					$("#mydialog2").dialog('close') ;
					//$(".comment_list").empty().html(tmp[1]) ;
					//location.href = "view.html?biz_code="+biz_code+"&board_id="+board_id+"&board_type="+board_type+"&idx="+idx ;
				}
				else if( sub_mode == "COMMENT_UPDATE") {
					$("#passwd2").val('') ;
					$("#mydialog2").dialog('close') ;
					var id = $("#c-block").val() ;
					var html = "<text" ;

					var tmp = data.split("`") ;

					var html = "<textarea name='comment2' id='comment2' style='width:600px; height:70px; border:1px solid #aaa; padding-left:4px;'>"+tmp[1]+"</textarea>" ;
					html += " <button type='button' class='btn btn-default' id='btn-comment2' style='height:68px'>덧글수정</button>" ;

					$("#"+id+" .cmnt_area").empty().html(html) ;
				}
			}
			else {
				alert(data) ;
				//alert("비밀번호가 맞지 않습니다.") ;
			}
		}
	});
	
}

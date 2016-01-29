
$(function(){ 
	$('#btn_next').click(function(){
		var page = <%=request.getAttribute("page")%> ;
		var pages = <%=request.getAttribute("pages") %>;
		alert(pages);
		
		if(page<=pages){
			var str = '${pageContext.request.contextPath}/student/findAllCourseTongXuan.do?page=${page+1}'; 
			window.location.href = str;
		}else{
			alert("sorry");
			}
	});
});

$(function() {
	var current_li;
	var b=false;
	
	$("#portfolio").sortable();
	
	function setImg(src,id){
		$("#main").attr("src",src);
		var path="text/"+id;		
		$.get(path,function(data){
			console.log(data);
			$("#description p").html(data);
		});
	};
	
	$("#portfolio img").click(function() {		
		// curren_li는 $(this)jquery객체 현재 자기 자신의 부모 객체 즉,
		// <li><img ></li>의 li객체를 의미하는것이다. 클릭대상이 portfolio라는 클래스의 img태그니까 그 상위
		// 태그인
		// li태그를 의미하게 됨.
		current_li = $(this).parent();
		var src = $(this).attr("src");
		var id=$(this).attr("id");
		setImg(src,id);
		
		$("#frame").fadeIn();
		$("#overlay").fadeIn();
		
		// console.log(current_li); 출력결과 현재 li태그의 id값이 나옴.
		// 여기서 말하는 next는 li태그의 다음에 오는 li태그를 의미한다.
		// console.log(next_li); 출력결과 다음 li태그의 id값이 나옴.
		
	});
	$("#overlay").click(function() {
		$(this).fadeOut();
		$("#frame").fadeOut();
	});
	$("#right").click(function() {
		// current_li현재 li태그의 위치가 마지막이라면
		// portfolio id값의 li태그 처음으로 이동, 아닐경우 li.next()로 다음을 호출.
		if (current_li.is(":last-child")) {
			var next_li = $("#portfolio li").first();
		} else {
			var next_li = current_li.next();
		}
		var next_src = next_li.children("img").attr("src");
		var id=next_li.children("img").attr("id");
		// console.log(next_src); 다음 주소값이 나옴. 근데 다음다음으로 넘어가진 않는거 같은데?
		// 다음으로 넘어가도록 설정하려면 해당 click function 메소드가 종료 된 후 current_li를 next_li로
		// 치환하면 됨.
		// #main아이디 값의 속성값인 src에다가 next_src를 주입한다는 의미임.
		current_li = next_li;
		setImg(next_src,id);
		// 클릭하고 다음으로 넘어간 li 즉 li1 > li2로 넘어간 상태인 li2가 current_li가 되도록 치환을 함.
		// 이렇게 한 뒤, right click function 함수를 실행 할 경우 next_li는 다시
		// current_li.next();의 값을 가짐.

	});
	$("#left").click(function() {
		// current_li의 li태그 객체가 처음일 경우. 클릭 시 portfolio li태그의 마지막 위치로 이동하도록 함.
		// 아닐경우 prev_li=current_li.prev(); prev()함수를 호출해서 li전의 값으로 이동 ex) 4일경우
		// 3으로 이동함.(뒤로가기개념)
		if (current_li.is(":first-child")) {
			var prev_li = $("#portfolio li").last();
		} else {
			var prev_li = current_li.prev();
		};
		var prev_src = prev_li.children("img").attr("src");
		var id=prev_li.children("img").attr("id");
		setImg(prev_src,id);
		
		current_li = prev_li;
	});
	$("#left, #right").mouseover(function() {
		$(this).css("opacity", "0.77");
	});
	$("#left, #right").mouseleave(function() {
		$(this).css("opacity", "0.44");
	})

});
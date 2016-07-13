$(function(){
	$("#filter li").click(function(){
		
		var category=$(this).html();
		
		$("#filter li").removeClass("active");
		$(this).addClass("active");
//		console.log(category);
		$("#portfolio li").hide();	
		
		
		
//		var i =0;		
//		portfolio id값의 li들을 각각 읽어옴.
//		즉 portfolio의 li 속에 위치한 값들을 읽어온다는 의미임. (img의 id값 alt image 태그를 다 읽어온다.)
//		li 속에 위치한 값들임.(img값임. li의 class 명은 읽어오지 않는다.)
//		그리고 li의 속에 위치한 img태그 객체에 함수를 걸어줌.
		$("#portfolio li").each(function(){
			 
//			 console.log(test);
//			만약 자기 자신인 li의 클래스명과 category로 설정한 변수명이 같을경우 아래에있는 함수를 실행한다.
			if($(this).hasClass(category)){
//				i= i+1;				
//				var test=$(this).html();
//				console.log(test + "- "+ i);
//				fadeIn걸어줌. fadeOut(); 으로 모든것을 사라지게 한 뒤 위의 조건이 성립할 경우 fadeIn으로 다시 나오게 함.

//				해당 객체 자기 자신의 Class 를 의미함 this				
				$(this).show();
			};
		});
	});
});
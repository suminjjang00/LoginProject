
var username ="";

function send_message(message){
	var prevState=$("#container").html();	
	if(prevState.length > 0 ){		
		prevState =prevState + "<br>";
	}
		$("#container").html(prevState+"<span class='currentmessage'>"+"<span class='bot'>Bot:</span>"+message+"</span>");
		$(".currentmessage").hide();
		$(".currentmessage").delay(500).fadeIn();
		$(".currentmessage").removeClass("currentmessage");
}
function get_username(){
	send_message("Hello what is your name?");
}
function ai(message){
	console.log(message.length);
	if(message.length > 0 ){
		username=message;
		send_message("Nice to meet you " + username +" how are you doing?");
	};
	if(message.indexOf("how are you")>=0){
		send_message("i'm okay! Good!!");
	};
	if(message.indexOf("time")>0 || message.indexOf("hour") >0 ){
		var time=new Date();
		var h=time.getHours();
		var m=time.getMinutes();
		send_message("current time is "+h+":"+m);
	};
}
$(function(){
	get_username();
	$("#textbox").keypress(function(event){
		if(event.which==13){
			//alert("got it?");  teextbox의 아이디를 가져오고 keypress event를 건다.
			//그리고 if event.which==13  이벤트의 값이 13일 경우 아래 조건문을 발동시킴.여긴 얼렛이 발동됨.
			if($('#enter').prop('checked')){//prop은 메소드임. id 의 값에 check이 되어있다면 콘솔로 찍도록 설정함.
				//console.log("enter pressed, checkbox is checked");
				//event.preventDefault();//preventDefault를 걸면 엔터를 누를 경우 줄바꿈이 안된다.
				//하지만 엔터를 누를경우 값은 들어감.. 뭐 설명이 조금 복잡함.
				$("#send").click();//해당 메소드 소환한것임.
			};
		};
	});
$("#send").click(function(){
	var admin = "<span class='userName' =>Admin: </span>";
	var newMessage=$("#textbox").val();
		$("#textbox").val("");
	var prevState=$("#container").html();
	//console.log(prevState.length);
	if(prevState.length > 0 ){		
		prevState = prevState + "<br>";
	}
		$("#container").html(prevState+admin+newMessage);
		$("#container").scrollTop($("#container").prop("scrollHeight"));	
		ai(newMessage);
});
	});


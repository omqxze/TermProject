function checkAddPlayer(){
	var form=document.newPlayer;
	var number=document.getElementById("number");
	var age=document.getElementById("age");
	
	if(number.value.length==0||isNaN(number.value)){
		alert("[등번호]\n숫자만 입력하세요");
		number.select();
		number.focus();
		return;
	}
	
	if(number.value<0){
		alert("[등번호]\n음수는 입력할수없습니다.");
		number.select();
		number.focus();
		return;
	}
	
	if(isNaN(age.value)){
		alert("[재고 수]\n숫자만 입력하세요");
		age.select();
		age.focus();
		return;
	}
	
	form.submit();
}
function id_search() {
	
	let name = document.findscreen.name;
	let phonenumber = document.findscreen.phonenumber;
	
	
	
	if (isEmpty(name)) {
		alert('이름를 입력해주십시오')
		name.focus();
		return false;
	}
	
	if (!containKR(name)) {
		alert('이름에는 한글만 사용하실수 있습니다')
		name.focus();
		name.value = "";
		return false;
	}
	
	
	if (isEmpty(phonenumber)) {
		alert('핸드폰번호를 입력해주십시오')
		phonenumber.focus();
		return false;
	}
	
	if (isNotNumber(phonenumber)) {
		alert('전화번호는 숫자만 들어갈 수 있습니다')
		phonenmuber.focus();
		phonenmuber.value = ""
		return false;
	}
	
	
	}




function pw_search() {
	
	let name = document.findscreen.name;
	let phonenumber = document.findscreen.phonenumber;
	let id = document.findscreen.id;
	
	
	if (isEmpty(id)) {
		alert('아이디를 입력해주십시오')
		id.focus();
		return false;
	}
	
	if (isEmpty(name)) {
		alert('이름를 입력해주십시오')
		name.focus();
		return false;
	}
	
	if (!containKR(name)) {
		alert('이름에는 한글만 사용하실수 있습니다')
		name.focus();
		name.value = "";
		return false;
	}
	
	
	if (isEmpty(phonenumber)) {
		alert('핸드폰번호를 입력해주십시오')
		phonenumber.focus();
		return false;
	}
	
	if (isNotNumber(phonenumber)) {
		alert('전화번호는 숫자만 들어갈 수 있습니다')
		phonenmuber.focus();
		phonenmuber.value = ""
		return false;
	}
	
	
	}




function reg_Check() {

	let id = document.Reg.id;
	let pw = document.Reg.pw;
	let repw = document.Reg.repw;
	let l_name = document.Reg.login_name;
	let phonenumber = document.Reg.phonenumber;
	let address = document.Reg.address;



	


	if (isEmpty(id)) {
		alert('아이디를 입력해주십시오')
		id.focus();
		return false;
	}

	if (lessThan(id, 8)) {
		alert('아이디는 8글자 이상 입력해야합니다.');
		id.focus();
		return false;
	}

	if (containKR(id)) {
		alert("아이디에는 한글을 사용하실수없습니다")
		id.focus();
		return false;
	}


	if (isEmpty(pw)) {
		alert('비밀번호를 입력해주십시오')
		pw.focus();
		return false;
	}

	if (notContains(pw, "QWERTYUIOPASDFGHJKLZXCVBNM") ||
		notContains(pw, "qwertyuiopasdfghjklzxcvbnm") ||
		notContains(pw, "!@#$%-=")) {
		alert("비밀번호에는 대문자,소문자,특수문자(!,@,#,$,%,=,-)가 반드시 포함되어야 합니다.");
		pw.focus();
		pw.value = "";
		return false;
	}


	if (notEquals(pw, repw)) {
		alert('비밀번호확인이 일치하지않습니다')
		repw.focus();
		repw.value = "";
		return false;
	}

	if (isEmpty(l_name)) {
		alert('이름를 입력해주십시오')
		pw.focus();
		return false;
	}

	if (!containKR(l_name)) {
		alert('이름에는 한글만 사용하실수 있습니다')
		l_name.focus();
		l_name.value = "";
		return false;
	}

	if (isEmpty(phonenumber)) {
		alert('전화번호를 입력해주십시오')
		phonenmuber.focus();
		return false;
	}

	if (isNotNumber(phonenumber)) {
		alert('전화번호는 숫자만 들어갈 수 있습니다')
		phonenmuber.focus();
		phonenmuber.value = ""
		return false;
	}

	if (isEmpty(address)) {
		alert('주소를 입력해주십시오')
		address.focus();
		return false;
	}




}




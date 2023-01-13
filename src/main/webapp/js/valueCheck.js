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

	if (isEmpty(pw)) {
		alert('비밀번호를 입력해주십시오')
		pw.focus();
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

	if (isEmpty(phonenumber)) {
		alert('전화번호를 입력해주십시오')
		phonenmuber.focus();
		return false;
	}

	if (isEmpty(address)) {
		alert('주소를 입력해주십시오')
		address.focus();
		return false;
	}

	if (containKR(id)) {
		alert("아이디에는 한글을 사용하실수없습니다")
		id.focus();
		return false;
	}

}





function DeleteCustomer() {
  alert("테스트용임");
}

function UpdateCustomer() {
	const pw = document.querySelector("#uc-pw");
	const name = document.querySelector("#uc-name");
	const ph = document.querySelector("#uc-phonenumber");
	const addr = document.querySelector("#uc-address");
	
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
	
	if (isEmpty(name)) {
		alert('이름를 입력해주십시오')
		pw.focus();
		return false;
	}

	if (!containKR(name)) {
		alert('이름에는 한글만 사용하실수 있습니다')
		name.focus();
		name.value = "";
		return false;
	}

	if (isEmpty(ph)) {
		alert('전화번호를 입력해주십시오')
		ph.focus();
		return false;
	}

	if (isNotNumber(ph)) {
		alert('전화번호는 숫자만 들어갈 수 있습니다')
		ph.focus();
		ph.value = ""
		return false;
	}

	if (isEmpty(addr)) {
		alert('주소를 입력해주십시오')
		addr.focus();
		return false;
	}

}
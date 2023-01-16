function passCheck(a) {
	const input = prompt("비밀번호 입력");

	const password = Number(input);
	let form;
	let inp;

	if(password != null) {
		form = document.createElement("form");
		form.setAttribute("method", "Post");
        form.setAttribute("action", "QnaPassckC?no=" + a);
		document.body.appendChild(form);

		inp = document.createElement("input");
		inp.setAttribute("type","hidden");
		inp.setAttribute("name","pw");
		inp.setAttribute("value",input);
		form.appendChild(inp);  
		
		form.submit();
	} else {
		alert('비밀번호를 입력하세요.');
	}
	
}
function reqchk() {
	let title = document.qnareg.title;
	let contents = document.qnareg.contents;
	let pw = document.qnareg.pw;
	
		if (isEmpty(title)) {
			alert('제목을 입력하세요');
			title.focus();
			return false;
		}
		
		if (isEmpty(contents)) {
			alert('내용을 입력하세요');
			contents.focus();
			return false;
		}
		
		if (isEmpty(pw)) {
			alert('비밀번호를 입력하세요');
			pw.focus();
			return false;
		}
		
}
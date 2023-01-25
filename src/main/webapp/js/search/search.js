
function searchCheck() {
	let key = document.search.keyWord;
	
	if (isEmpty(key)) {
		alert('검색어를 입력하세요');
		key.focus();
		return false;
	}
	

}

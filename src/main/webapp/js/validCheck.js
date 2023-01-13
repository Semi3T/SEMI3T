

function notEquals(input1, input2) {

	return input1.value != input2.value;

}


function isEmpty(input) {
	return !input.value;
}

function containKR(input) {


	let ok = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM_@."


	for (let i = 0; i < input.value.length; i++) {

		if (ok.indexOf(input.value[i]) == -1) {

			return true;
		}

	}
}
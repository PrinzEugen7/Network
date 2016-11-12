function main(){
	plaintext = "市街に突入せよ";
	key = 5;
	ciphertext = caesar(plaintext, key);
	text = decaesar(plaintext, key);
	alert(plaintext+"→"+ciphertext+"→"+text);
}

// シーザー暗号化
function caesar(val, key) {
    val = encodeURIComponent(val);
    var result = "";
    for (var i = 0; i < val.length; i++) {
        result += String.fromCharCode(val.charCodeAt(i) + key);
    }
    return result;
}

// シーザー復号化
function decaesar(val, key) {
    var result = "";
    for (var i = 0; i < val.length; i++) {
        result += String.fromCharCode(val.charCodeAt(i) - key);
    }
    return decodeURIComponent(result) ;
}

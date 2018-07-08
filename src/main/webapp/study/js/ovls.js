function getParamString(name) {
	var paramUrl = window.location.search.substr(1);
	var paramStrs = paramUrl.split('&');
	var params = {};
	for(var index = 0; index < paramStrs.length; index++) {
		params[paramStrs[index].split('=')[0]] = decodeURI(paramStrs[index].split('=')[1]);
	}
	return params[name];
}

(function (console) { "use strict";
var fr_radstar_engine_IBehaviour = function() { };
var behaviours_Test = function(param) {
	this.yo = "enfoiré " + param;
};
behaviours_Test.__interfaces__ = [fr_radstar_engine_IBehaviour];
behaviours_Test.prototype = {
	update: function() {
		console.log("gneuh");
	}
};
})(typeof console != "undefined" ? console : {log:function(){}});

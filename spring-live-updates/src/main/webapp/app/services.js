angular.module("myApp.services", [ "ngResource" ]).factory("Idea", function($resource) {
	return $resource("./ideas/:id", {
		id: '@id'
	}, {
		update: {
			method: "PUT"
		},
		remove: {
			method: "DELETE"
		}
	});
});
/*
//Person service
angular.module("myApp.services", [ "ngResource" ]).factory("Person", function($resource) {
	return $resource("./person/:id", {
		id: '@id'
	}, {
		update: {
			method: "PUT"
		},
		remove: {
			method: "DELETE"
		}
	});
});

*/
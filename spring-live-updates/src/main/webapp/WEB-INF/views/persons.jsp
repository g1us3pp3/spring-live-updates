<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Spring - Live updates</title>
<link rel="stylesheet" href="./libs/semantic-ui/dist/semantic.min.css" />

<link rel="stylesheet" href="./assets/css/style.css" />
</head>
<body ng-app="myApp">
	

	<div ng-controller="personCtrl">
		<h2 class="ui header">
			<i class="settings icon"></i>
			<div class="content">
				Persons
				<div class="sub header">View all persons</div>
			</div>
		</h2>
		<div class="ui info icon message" ng-hide="model.persons.length">
			<i class="thumbs up icon"></i>
			<h2 class="header">First!</h2>
			It seems you're the first one using this web application, start by posting some new persons.
		</div>
		<div class="ui divided list">
			<div class="item" ng-repeat="person in model.persons | orderBy: 'votes' : true">
				<div class="right floated description" ng-class="{red: person.votes < 0}">
					{{person.votes}} votes
					<div class="mini ui buttons">
						<button class="ui button" ng-click="addVotes(person, -1)">-1</button>
						<button class="ui button" ng-click="addVotes(person, 1)">+1</button>
						<button class="ui red button" ng-click="remove(person, $index)">Delete</button>
					</div>
				</div>
				
				<div class="content">
					<div class="header">{{person.title}}</div>
					  <!--  <div class="description" ng-bind-html="person.description | markdown"></div>-->
				</div>
			</div>
		</div>
		<form ng-submit="add()" class="ui form">
			<div class="ui grid">
				<div class="thirteen wide column">
					<div class="ui field">
						<input type="text" placeholder="Title..." ng-model="model.newPerson.title" />
					</div>
					<div class="ui field">
						<textarea placeholder="Describe your person..., markdown is allowed" ng-model="model.newPerson.description" rows="3"></textarea>
					</div>
				</div>
				<div class="three wide column">
					<button type="submit" class="ui fluid button">New person</button>
				</div>
			</div>
		</form>
	</div>

	<script type="text/javascript" src="./libs/angular/angular.min.js"></script>
	<script type="text/javascript" src="./libs/angular-resource/angular-resource.min.js"></script>
	<script type="text/javascript" src="./libs/sockjs/sockjs.min.js"></script>
	<script type="text/javascript" src="./libs/stomp-websocket/lib/stomp.min.js"></script>
	<script type="text/javascript" src="./libs/showdown/dist/showdown.js"></script>
	<script type="text/javascript" src="./app/app.js"></script>
	<script type="text/javascript" src="./app/services.js"></script>
	<script type="text/javascript" src="./app/controllers.js"></script>
	<script type="text/javascript" src="./app/filters.js"></script>
	
</body>
</html>
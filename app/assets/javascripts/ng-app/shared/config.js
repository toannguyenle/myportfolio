angular.module('myApp')

.config(["$stateProvider", "$urlRouterProvider", "$locationProvider", function($stateProvider, $urlRouterProvider, $locationProvider){

  // $locationProvider.html5Mode({enabled:true, requiredBase:true});

  $urlRouterProvider.otherwise('/');

  $stateProvider

    .state('index', {
      url: '/',
      templateUrl: 'index.html',
      controller: 'HomeCtrl'
    })
    .state('home', {
      url: '/home',
      templateUrl: 'home.html',
      controller: 'HomeCtrl'
    })
    .state('app', {
      url: '/app/:id',
      templateUrl: 'app.html',
      controller: 'AppCtrl'
    });

}]);
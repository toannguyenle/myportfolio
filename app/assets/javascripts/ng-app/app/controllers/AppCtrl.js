angular.module('myApp')

// APP CONTROLLER
.controller('AppCtrl',['$stateParams','$scope', 'api' ,function($stateParams, $scope, api) {
    api.showApp($stateParams.id)
    .then(function(data){
      $scope.app = data.data;
    });

    // Get all the apps
    api.getApps()
    .then(function(data){
      $scope.apps = data.data;
    });
}]);
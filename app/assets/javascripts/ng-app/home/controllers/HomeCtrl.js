angular.module('myApp')

.controller('HomeCtrl',['$location','$scope','api', function($location, $scope, api) {
  api.getApps()
  .then(function(data){
    $scope.apps = data.data;
  });

  $scope.addApp = function(app){
    api.addApp(app.name, app.image);
    // CLEAR the input after add app
    $scope.apps.push(app);
    $scope.appName="";
    $scope.appImage="";
  };

  // REMOVE PLANET
  $scope.removeApp = function(app){
    api.removeapp(app._id.$oid);
    index = $scope.apps.indexOf(app);
    $scope.apps.splice(index, 1); 
  };

  // app EDIT
  $scope.editApp = function(app) {
    $scope.editChecked = false;
    api.editapp(app);
  };

  // SHOW app
  $scope.showApp = function(appId) {
    $location.path('/app/'+appId);
  };


}]);
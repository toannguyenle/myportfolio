angular.module('myApp')

.controller('HomeCtrl',['$location','$scope','$modal','api', function($location, $scope, $modal, api) {
  api.getApps()
  .then(function(data){
    $scope.apps = data.data;
    // Get all the technologies built with from each app and aggregate them to help search faster
    $scope.technologies = [];
    for (var i = 0; i < data.data.length; i++) {
      $scope.technologies = $scope.technologies.concat(data.data[i].built_with.split(", "));
    };

    // Only unique values
    function onlyUnique(value, index, self) { 
    return self.indexOf(value) === index;
    }
    // Bind to the view variable
    $scope.technologies = $scope.technologies.filter( onlyUnique );
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


  // APP MODAL

  $scope.open = function (appId) {

    var modalInstance = $modal.open({
      templateUrl: 'modal.html',
      controller: 'ModalInstanceCtrl',
      resolve: {
        appId: function () {
          return appId;
        }
      }
    });

  };

}]);
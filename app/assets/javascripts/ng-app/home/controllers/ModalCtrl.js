angular.module('myApp')
.controller('ModalInstanceCtrl', ['$scope', '$modalInstance', 'api', 'appId' ,function ($scope, $modalInstance, api, appId) {

  // Get particular app info
  api.showApp(appId)
  .then(function(data){
    $scope.app = data.data;
    // Convert string into array of technologies used for the app
    $scope.app.built_with = data.data.built_with.split(", ");
  });

  // LIKE ajax
  $scope.appLike = function(appId) {
    var media = $(".fi-heart[data='" + appId + "']")[0].style.color;
    // POST LIKE
    if (media === "rgb(190, 190, 190)" || media === "") {
      $.post("/like", {id: appId},
        function(){
          $(".fi-heart[data='" + appId + "']")[0].style.color = "lightcoral";
          var label = $(".like-number[data='" + appId + "']")[0];
          label.innerHTML = parseInt(label.innerHTML) + 1;
        });
    }
  };
  // Close modal by clicking OK button
  $scope.ok = function () {
    $modalInstance.close();
  };
  // Close modal by clicking X
  $scope.cancel = function () {
    $modalInstance.dismiss('cancel');
  };
}]);
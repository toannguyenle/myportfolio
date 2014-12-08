angular.module('myApp')

.service('api',['$http', function($http){

  return {

    getApps: function(){
      // STATUS OF PROMISE: Fulfilled, Rejected, Pending
      var promise = $http.get('api/apps')
      .then(function(response) {
        return response;
      })

      return promise;

    },

    showApp: function(appId){
      // STATUS OF PROMISE: Fulfilled, Rejected, Pending
      var promise = $http.get('/api/apps/' + appId)
      .then(function(response) {
        return response;
      })

      return promise;

    },

    // CREATE app
    addApp: function(appName, appUrl){
      $http.post('api/apps', {name: appName, app_url: appUrl});
    },

    // DELETE app
    removeapp: function(appId) {
      $http.delete('api/apps/' + appId);
    },

    // EDIT app
    editapp: function(app) {
      $http.patch('api/apps/' + app._id.$oid, {name: app.name, app_url: app.appUrl});
    }

}}]);
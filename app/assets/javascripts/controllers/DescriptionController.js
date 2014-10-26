(function(){
'use strict';

angular.module('Armory')

.controller('DescriptionController', ['$scope', '$http', function($scope, $http) {

    // Only load the description once
    $scope.descriptionRetrieved = false;

    // Placeholder text for the character description before it is loaded
    // Chances are this won't even show up, but maybe the server is being
    // slow?
    $scope.characterDescription = "Loading...";

    // Runs on popover.show
    $scope.retrieveCharacterDesc = function(character_id) {
        if (!$scope.descriptionRetrieved) {
            $http.get('/characters/' + character_id + '/desc')

                // Description load was successful, display it
                .success(function(data) {
                    $scope.descriptionRetrieved = true;
                    $scope.characterDescription = data.description;
                })

                // Server encountered an error trying to process
                // the request. This should be more robust, displaying
                // a proper error message, but for the purposes of this
                // app a simple error message will do
                .error(function() {
                    $scope.characterDescription = "Failed to load the character description :(";
                });
        }
    };

}]);

})();

(function(){
'use strict';

angular.module('Armory')

.controller('DescriptionController', ['$scope', '$http', '$sce', function($scope, $http, $sce) {

    // This will store character data once retrieved
    $scope.characters = {};

    // The currently selected character
    $scope.currentCharacter = null;

    // Runs on popover.show
    $scope.retrieveCharacterDesc = function(characterId) {

        // Only load each character once
        if ($scope.characters[characterId] === undefined) {
            $http.get('/characters/' + characterId)

                // Description load was successful, display it
                .success(function(data) {
                    $scope.characters[characterId] = data;
                    $scope.currentCharacter = $scope.characters[characterId];
                })

                // Server encountered an error trying to process
                // the request. This should be more robust, displaying
                // a proper error message, but for the purposes of this
                // app a simple error message will do
                .error(function() {
                    $scope.characterDescription = "Failed to load the character description :(";
                });
        } else {
            $scope.currentCharacter = $scope.characters[characterId];
        }
    };

}]);

})();

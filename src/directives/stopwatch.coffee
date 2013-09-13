###
@chalk overview
@name Stopwatch

@description
An interactive Stopwatch directive

###

angular.module("Mac").filter "secondsAsTime", () ->
  (seconds) ->


angular.module("Mac").directive "macStopwatch", ->
  restrict: "E"
  replace:  true
  templateUrl: "template/stopwatch.html"
  scope:
    value: "="

  link: ($scope, element, attributes) ->
    $scope.stopwatch = new Stopwatch()
    $scope.onStart = () ->
      $scope.stopwatch.start()
    $scope.onStop = () ->
      $scope.stopwatch.stop()
    $scope.onReset = () ->
      $scope.stopwatch.reset()

    attributes.$observe('startAvailable', (val) ->
      $scope.startAvailable = (val != 'false' && val != "0");
    )
    attributes.$observe('stopAvailable', (val) ->
      $scope.stopAvailable = (val != 'false' && val != "0");
    )
    attributes.$observe('resetAvailable', (val) ->
      $scope.resetAvailable = (val != 'false' && val != "0");
    )

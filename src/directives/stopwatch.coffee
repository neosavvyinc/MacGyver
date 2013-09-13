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
    startAvailable: "="
    stopAvailable: "="
    resetAvailable: "="

  link: ($scope, element, attributes) ->
    $scope.stopwatch = new StopWatch()
    $scope.onStart = () ->
      $scope.stopwatch.start()
    $scope.onStop = () ->
      $scope.stopwatch.stop()
    $scope.onReset = () ->
      $scope.stopwatch.reset()
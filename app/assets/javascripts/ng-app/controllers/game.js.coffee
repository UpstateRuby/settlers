angular.module('Settlers').
controller('GameCtrl', ($scope, socket) ->
  $scope.comments = []
  socket.onmessage(->
    if event.data.length
      $scope.comments.push event.data
  )

  $scope.sendComment = ->
    if $scope.comment
      socket.send $scope.comment
      $scope.comment = ""
)
angular.module('Settlers').
factory('socket', ($rootScope) ->
  socket = new WebSocket "ws://#{window.location.host}/sockets/chat"

  return {
    onmessage: (callback) ->
      socket.onmessage = ->  
        args = arguments;
        $rootScope.$apply(->
          callback.apply(socket, args);
        )
    send: (data) ->
      socket.send(data)
  }
)
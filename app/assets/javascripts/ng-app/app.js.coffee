'use strict'

settlersApp = angular.module('Settlers', [
  'ngRoute'
  'templates'
])

settlersApp.config(
  ($routeProvider, $locationProvider) ->
    $routeProvider.
      when('/', {
          templateUrl: 'game.html'
          controller: 'GameCtrl'
      })
      
    $locationProvider.html5Mode(true)
)
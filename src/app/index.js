'use strict';

import MainCtrl from './main/main.controller';
import NavbarCtrl from '../app/components/navbar/navbar.controller';

angular.module('mySite2', ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'restangular', 'ngRoute', 'ngMaterial'])
  .controller('MainCtrl', MainCtrl)
  .controller('NavbarCtrl', NavbarCtrl)

  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'app/main/main.html',
        controller: 'MainCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  })
;

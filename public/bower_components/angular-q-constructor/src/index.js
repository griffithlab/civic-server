'use strict';

import angular from 'angular';

export default angular.module('q-constructor', [])
  .config(decorate)
  .name;

decorate.$inject = ['$provide'];
function decorate ($provide) {
  $provide.decorator('$q', decorator);
}

decorator.$inject = ['$delegate'];
function decorator (methods) {
  return angular.extend($q, methods);
}

function $q (resolver) {
  const deferred = $q.defer();
  const resolve = angular.bind(deferred, deferred.resolve);
  const reject = angular.bind(deferred, deferred.reject);
  const promise = deferred.promise;

  resolver(resolve, reject);

  return promise;
}

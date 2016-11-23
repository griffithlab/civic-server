# angular-q-constructor [![Build Status](https://travis-ci.org/bendrucker/angular-q-constructor.svg?branch=master)](https://travis-ci.org/bendrucker/angular-q-constructor)

Add constructor support to `$q` in Angular <1.3. In Angular 1.3+, [`$q` can be used as a constructor](https://docs.angularjs.org/api/ng/service/$q#-q-constructor), similar to an ES6 `Promise`. This also makes your promise code easier to read and maintain since logic is fully encapsulated in the `resolver` callback:

```js
$q(function (resolve, reject) {
  resolve('foo');
})
.then(function (value) {
  console.assert(value === 'foo', 'promise resolves "foo"');
});
```

angular-q-constructor brings the `$q` constructor to Angular <1.3.

## Installing

```sh
# npm
$ npm install angular-q-constructor
# bower
$ bower install angular-q-constructor
```

## Usage

Include `'angular-q-constructor'` in your module's dependencies:

```js
angular.module('myApp', [
  require('angular-q-constructor')
]);
// or
angular.module('myApp', [
  'q-constructor'
]);
```

Or if you only need angular-q-constructor for tests:

```js
angular.mock.module('myApp');

angular.mock.module(require('angular-q-constructor'));
// or
angular.mock.module('q-constructor');
```

'use strict';

var angularDeps = ['angular', 'angular-mocks'].map(function (id) {
  return require.resolve(id);
});

module.exports = function (config) {
  config.set({
    frameworks: ['browserify', 'mocha'],
    files: angularDeps.concat([
      'test/*.js'
    ]),
    preprocessors: {
      'test/*.js': 'browserify'
    },
    browsers: ['PhantomJS']
  });
};

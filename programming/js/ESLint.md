# ESLint

$ npm install eslint --save-dev
$ npx eslint --init

https://eslint.org/docs/user-guide/getting-started
https://eslint.org/docs/rules

## Disable rule for single line
/* eslint-disable no-unused-vars */
exports.serverError = (err, req, res, next) => res.render('500')
/* eslint-enable no-unused-vars */


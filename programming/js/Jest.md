# Jest

## run tests:
package.json: { "scripts" { "test" : "jest" } }
npm test -- --watch
(extra -- is to let npm know to pass the --watch argument to Jest)

## test coverage
npm test -- --coverage

## Jest global variables
Jest injects global variables like: test, describe, jest, expect, etc.

## mocking
const res = { render: jest.fn() }
jest.fn() : creates a generic mock function that keeps track of how it's called.

## assertions
expect(res.render.mock.calls[0][0]).toBe("home");
first [0] gives the first call of mocked method, second [0] gives the first argument of the call.


## hooks
beforeEach : before each test
afterEach : after each test
beforeAll :
afterAll :


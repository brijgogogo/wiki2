# React Hooks
Hooks contain reusable code logic that is separate from the component tree. They allow us to hook up functionality to our components. React ships with several built-in hooks we can use out of the box.

## useState hook
The useState hook is a function that we can invoke to return an array.
The value we send to the useState function is the default value for the state variable.
The first value of that array is the state variable we want to use.
The second item in the array that’s returned by the useState hook is a function that can be used to change the state value.
When data within the hook changes, they have the power to rerender the component they’re hooked into with new data.


## useEffect: called after render
Those things we want the component to do other than return UI are called effects.

useEffect(() => {
  console.log(checked ? "Yes, checked" : "No, not checked");
});

useEffect(() => {
  localStorage.setItem("checkbox-value", checked);
});

useEffect(() => {
  txtInputRef.current.focus();
});

## Dependency array: used to control when an effect is invoked

Below effect is run on change of state of "val"
useEffect(() => {
  console.log(`typing "${val}"`);
}, [val]);


## An empty dependency array causes the effect to be invoked only once after the initial render:
useEffect(() => {
  console.log("only once after initial render");
}, []);


## If you return a function from the effect, the function will be invoked when the component is removed from the tree:

useEffect(() => {
  welcomeChime.play();
  return () => goodbyeChime.play();
}, []);


## useMemo
In computer science in general, memoization is a technique that’s used to improve performance. In a memoized function, the result of a function call is saved and cached. Then, when the function is called again with the same inputs, the cached value is returned.

In React, useMemo allows us to compare the cached value against itself to see if it has actually changed.

const words = useMemo(() => {
  const words = children.split(" ");
  return words;
}, []);

useEffect(() => {
  console.log("fresh render");
}, [words]);


## useCallback
useCallback can be used like useMemo, but it memoizes functions instead of values

const fn = useCallback(() => {
  console.log("hello");
  console.log("world");
}, []);

useEffect(() => {
  console.log("fresh render");
  fn();
}, [fn]);

## useLayoutEffect
Render => useLayoutEffect => Browser paint => useEffect


## useReducer
Takes in a a reducer function and the initial state
useReducer can help us handle state updates more predictably as state becomes more complex.

This pattern is useful when state has multiple subvalues or when the next state depends on a previous state.

function User() {
  const [user, setUser] = useReducer(
    (user, newDetails) => ({ ...user, ...newDetails }),
    firstUser
  );
  ...
}


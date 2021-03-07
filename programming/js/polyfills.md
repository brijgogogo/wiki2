# polyfills
Polyfills are backward-compatibility helpers. They are pieces of code written in JavaScript that allow you to use new features in old browsers. For example, the expression "food".startsWith('F') tests whether the String 'food' starts with F (for the record, that’s false - it starts with f, not F.) But startsWith is a new feature of JavaScript that is not available in older browsers.

You can “polyfill it” with this code:

String.prototype.startsWith = String.prototype.startsWith ||
  function(search, pos) {
    return search ===
      this.substr(!pos || pos < 0 ? 0 : +pos, search.length);
  };
This code has the form X = X || function(...) {...}, which means “if X is defined, set X to itself (don’t change it), otherwise set X to be this function.”


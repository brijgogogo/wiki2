# React_Fragments
React will not render two or more adjacent or sibling elements as a component. We have to wrap these in an enclosing tag like a div.
If we use a React fragment, we can mimic the behavior of a wrapper without actually creating a new tag.

        <React.Fragment>
          <h1>My cat's name is {name}</h1>
          <p>He is good</p>
        </React.Fragment>

- Fragment shorthand

        <>
          <h1>My cat's name is {name}</h1>
          <p>He is good</p>
        </>


